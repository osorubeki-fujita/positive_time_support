# 日付を扱うクラス Date に機能を追加するモジュール
module PositiveTimeSupport::DateExt

  WDAYS_JA_SHORT = [ "日" , "月" , "火" , "水" , "木" , "金" , "土" ]

  def wday_ja_short
    WDAYS_JA_SHORT[ wday ]
  end

  def wday_ja
    "#{ wday_ja_short }曜"
  end

  alias :wday_ja_normal :wday_ja

  def wday_ja_long
    "#{ wday_ja_short }曜日"
  end

  # （日本の）祝日か否かを判定するメソッド
  # @return [Boolean]
  def holiday?
    ::HolidayJapan.check( ::Date.new( year , month , day ) )
  end

end
