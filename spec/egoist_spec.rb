require 'egoist/ego'

describe Egoist::Ego do
  it "broccoli is gross" do
    Egoist::Ego.portray("Broccoli").should eql("Gross!")
  end

  it "anything else is delicious" do
    Egoist::Ego.portray("Not Broccoli").should eql("Delicious!")
  end
end