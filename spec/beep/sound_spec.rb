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
  it "should be able to handle multiple beeps with a single command" do
    sounds = [
      {:frequency => 100, :duration => 200, :pause => 300},
      {:frequency => 400, :duration => 500, :pause => 600},
      {:frequency => 700, :duration => 800, :pause => 900},
    ]
    Beep::Sound.should_receive(:system).with('beep -f 100 -l 200 -D 300 -n -f 400 -l 500 -D 600 -n -f 700 -l 800 -D 900')
    Beep::Sound.generate(sounds)
  end
end
