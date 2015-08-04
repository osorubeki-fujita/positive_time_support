require 'spec_helper'
require 'deplo'

spec_filename = ::File.expand_path( ::File.dirname( __FILE__ ) )
version = ::File.open( "#{ ::File.dirname( __FILE__ ) }/../.current_version" , "r:utf-8" ).read.chomp

describe PositiveTimeSupport do
  it "has a version number \'#{ version }\'" do
    expect( ::PositiveTimeSupport::VERSION ).to eq( version )
  end
end

describe PositiveTimeSupport::TimeExt do
  it "provides methods to instances of Time class." do
    t_e = ::Time.new( 2011,3,11,14,46,18)
    expect( t_e.to_time_hm_array ).to eq( [14,46] )
    expect( t_e.to_s_hour_and_min ).to eq( "14:46" )
    expect( t_e.to_strf_normal_ja ).to eq( "2011年3月11日 14:46:18" )
    expect( t_e.to_strf_normal_en ).to eq( "2011-03-11 14:46:18 +0900" )

    expect( t_e.wday_ja_short ).to eq( "金" )
    expect( t_e.wday_ja ).to eq( "金曜" )
    expect( t_e.wday_ja_normal ).to eq( "金曜" )
    expect( t_e.wday_ja_long ).to eq( "金曜日" )
    expect( t_e.holiday? ).to eq( false )
  end

  it "provides methods to instances of DateTime class." do
    t_e_datetime = ::DateTime.new( 2011,3,11,14,46,18, Rational(9,24))
    expect( t_e_datetime.to_time_hm_array ).to eq( [14,46] )
    expect( t_e_datetime.to_s_hour_and_min ).to eq( "14:46" )
    expect( t_e_datetime.to_strf_normal_ja ).to eq( "2011年3月11日 14:46:18" )
    expect( t_e_datetime.to_strf_normal_en ).to eq( "2011-03-11 14:46:18 +0900" )

    expect( t_e_datetime.wday_ja_short ).to eq( "金" )
    expect( t_e_datetime.wday_ja ).to eq( "金曜" )
    expect( t_e_datetime.wday_ja_normal ).to eq( "金曜" )
    expect( t_e_datetime.wday_ja_long ).to eq( "金曜日" )
    expect( t_e_datetime.holiday? ).to eq( false )
  end
end
