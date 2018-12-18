require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else
      return false
    end
  end

  def question?
    if self.end_with?("?")
      return true
    else
      return false
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
    end
  end

  def count_sentences
    count = 0
    sentences = self.split(/[.?!]/)
    sentences.each do |sent|
      if !sent.empty?
        count += 1
      end
      #binding.pry
    end
    return count
  end
end
