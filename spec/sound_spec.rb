require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Beep::Sound do
  it "should be able to call the default beep command" do
    Beep::Sound.should_receive(:system).with('beep')
    Beep::Sound.generate
  end
end
