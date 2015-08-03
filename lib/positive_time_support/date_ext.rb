# 日付を扱うクラス Date に機能を追加するモジュール
module PositiveTimeSupport::DateTimeExt

  # （日本の）祝日か否かを判定するメソッド
  # @return [Boolean]
  # @note 現状では祝日の定義をはっきりさせていないため、必ず false を返すということにしておく。
  # @todo 休日の定義
  def holiday?
    false
  end

end
