require 'colorize'

module SemiColon
  def semi_colon_space (args)
    missing_semi = []
    args.each_with_index { |x, i|
      if x.match(/:/) && !x.match?(/;+$/) && !x.match?(/}+$/)
        missing_semi << "Missing semi-colon at the end of line #{i+1}"
      end
    }
    missing_semi
  end

  def semi_colon_message (args)
    message_array = semi_colon_space (args)
    message_array.each_with_index { |x|
      puts x.colorize(:light_blue)
    }
  end
end
