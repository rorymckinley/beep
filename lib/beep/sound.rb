module Beep
  class Sound
    def self.generate(instructions=[])
      basic_command = 'beep'
      basic_command += ' -f %s' % instructions[0][:frequency] if instructions.any? && instructions[0][:frequency]
      system(basic_command)
    end
  end
end
