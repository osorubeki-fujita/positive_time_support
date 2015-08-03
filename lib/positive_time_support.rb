require "positive_time_support/version"

require "active_support"
require "active_support/core_ext"

require 'date'
require 'holiday_japan'

[ :time , :date , :date_time ].each do | filename |
  require_relative "positive_time_support/#{ filename }_ext"
end

module PositiveTimeSupport

  extend ::ActiveSupport::Concern

  included do

    ::Time.class_eval do
      include PositiveTimeSupport::TimeExt
    end

    ::Date.class_eval do
      include PositiveTimeSupport::TimeExt
      # include PositiveTimeSupport::DateExt
    end

    ::DateTime.class_eval do
      include PositiveTimeSupport::DateTimeExt
    end

  end

end

include PositiveTimeSupport
