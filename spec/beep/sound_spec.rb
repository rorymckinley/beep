require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Beep::Sound do
  it "should be able to call the default beep command without arguments" do
    Beep::Sound.should_receive(:system).with('beep')
    Beep::Sound.generate
  end
  it "should allow a beep to be generated with a given frequency" do
    Beep::Sound.should_receive(:system).with('beep -f 100')
    Beep::Sound.generate([{:frequency => 100}])
  end
  it "should allow a beep to be generated with a given duration in milliseconds" do
    Beep::Sound.should_receive(:system).with('beep -l 1000')
    Beep::Sound.generate([{:duration => 1000}])
  end
  it "should allow a beep to be generated with a given pause after the beep" do
    Beep::Sound.should_receive(:system).with('beep -D 1000')
    Beep::Sound.generate([{:pause => 1000}])
  end
end
