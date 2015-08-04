# 日付・時刻を扱うクラス Time に機能を追加するモジュール
module PositiveTimeSupport::TimeExt

  def to_time_hm_array
    [ hour , min ]
  end

  # Time のインスタンスを、hh:mm の形の文字列に変換するメソッド
  # @return [String]
  def to_s_hour_and_min
    strftime( "%H\:%M" )
  end

  def to_strf_normal_ja
    ymd = to_strf_date_ja
    hms = strftime( "%H:%M:%S" )
    "#{ ymd } #{ hms }"
  end

  def to_strf_normal_en
    strftime( "%Y-%m-%d %H:%M:%S %z" )
  end

end
