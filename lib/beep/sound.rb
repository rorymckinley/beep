module Beep
  class Sound
    def self.generate(instructions=[])
      basic_command = 'beep%s' % create_arguments(instructions)
      system(basic_command)
    end

    private

    def self.create_arguments(instructions)
      (instructions.map do |instruction|
        instruction_as_args = ''
        instruction_as_args += ' -f %s' % instruction[:frequency] if instruction[:frequency]
        instruction_as_args += ' -l %s' % instruction[:duration] if instruction[:duration]
        instruction_as_args += ' -D %s' % instruction[:pause] if instruction[:pause]
        instruction_as_args
      end).join(" -n")
    end
  end
end
