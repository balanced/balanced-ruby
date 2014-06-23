require 'spec_helper'

describe Balanced, "resources" do
  it "doesn't add library-specific directories to the global $LOAD_PATH" do
    basedir = File.expand_path( File.dirname(__FILE__) + '/../..' )
    $LOAD_PATH.should_not include(basedir + '/lib/balanced/resources')
  end
end
