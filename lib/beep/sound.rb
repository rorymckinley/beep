module Beep
  class Sound
    def self.generate(instructions=[])
      basic_command = 'beep'
      basic_command += ' -f %s' % instructions[0][:frequency] if instructions.any? && instructions[0][:frequency]
      basic_command += ' -l %s' % instructions[0][:duration] if instructions.any? && instructions[0][:duration]
      basic_command += ' -D %s' % instructions[0][:pause] if instructions.any? && instructions[0][:pause]
      system(basic_command)
    end
  end
end
