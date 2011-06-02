module Beep
  class Sound
    def self.generate(instructions=[])
      basic_command = 'beep%s' % create_arguments(instructions)
      system(basic_command)
    end

    private

    def self.create_arguments(instructions)
      instructions_to_args = {
        :frequency => ' -f %s', 
        :duration => ' -l %s',
        :pause => ' -D %s'
      }
      (instructions.map do |instruction|
        arguments = ''
        instruction.each do |name,value|
          arguments += instructions_to_args[name] % value
        end
        arguments
      end).join(" -n")
    end
  end
end
