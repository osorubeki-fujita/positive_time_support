require "positive_time_support/version"

require "active_support"
require "active_support/core_ext"

[ :time , :date_time ].each do | filename |
  require_relative "positive_time_support/#{ filename }_ext"
end

module PositiveTimeSupport

  extend ::ActiveSupport::Concern

  included do

    ::Time.class_eval do
      include PositiveTimeSupport::TimeExt
    end

    ::DateTime.class_eval do
      include PositiveTimeSupport::TimeExt
      include PositiveTimeSupport::DateTimeExt
    end

  end

end

include PositiveTimeSupport
