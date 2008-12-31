require File.dirname(__FILE__) + '/spec_helper.rb'

describe TreeEncoding, "when plugin is initialized" do
  
  before(:all) do
    load_schema
  end
  
  before(:each) do
  end

  it "should have 159 rows" do
    TreeEncoding.count.should eql( 159 )
  end

  after(:each) do
  end
  
  after(:all) do
  end

end
