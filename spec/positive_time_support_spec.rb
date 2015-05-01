require 'spec_helper'
require 'deplo'

spec_filename = ::File.expand_path( ::File.dirname( __FILE__ ) )
version = "0.1.0"

describe PositiveTimeSupport do
  it "has a version number \'#{ version }\'" do
    expect( ::PositiveTimeSupport::VERSION ).to eq( version )
    expect( ::Deplo.version_check( ::PositiveTimeSupport::VERSION , spec_filename ) ).to eq( true )
  end
end
