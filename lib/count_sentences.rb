require 'pry'

class String

  def sentence?
    self.is_a?(String) && self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    #self.split(".", "?").count
    #self.split(".", "!", "?").count
    can_run = true
    counter = 0
    self.each_char do |chr|
      if (chr == "." || chr == "?" || chr == "!")
        if can_run == true
          counter += 1
        end
        can_run = false
      else
        can_run = true
      end
    end
    counter
  end
end
