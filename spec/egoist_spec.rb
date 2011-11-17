require 'egoist/ego'

describe Egoist::Ego do
  it "pnca rocks" do
    Egoist::Ego.portray("PNCA").should eql("Rocks!")
  end

  it "anything else is lame" do
    Egoist::Ego.portray("Not PNCA").should eql("Lame!")
  end
end