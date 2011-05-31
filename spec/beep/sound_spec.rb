require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Beep::Sound do
  it "should be able to call the default beep command without arguments" do
    Beep::Sound.should_receive(:system).with('beep')
    Beep::Sound.generate
  end
  it "should allow a beep to be generated with a frequency" do
    Beep::Sound.should_receive(:system).with('beep -f 100')
    Beep::Sound.generate([{:frequency => 100}])
  end
end
