# 日付・時刻を扱うクラス Time に機能を追加するモジュール
module PositiveTimeSupport::TimeExt

  WDAYS_JA_SHORT = [ "日" , "月" , "火" , "水" , "木" , "金" , "土" ]

  def to_time_hm_array
    [ hour , min ]
  end

  def to_strf_normal_ja
    strftime( "%Y年%m月%d日 %H:%M:%S" )
  end

  def to_strf_normal_en
    strftime( "%Y-%m-%d %H:%M:%S %z" )
  end

  def wday_ja_short
    WDAYS_JA_SHORT[ wday ]
  end

  def wday_ja
    "#{ wday_ja_short }曜"
  end

  def w_day_ja_long
    "#{ wday_ja_short }曜日"
  end

end
