require 'pry'

class String

  def sentence?
    return true if self[-1] == "." else false
  end

  def question?
    return true if self[-1] == "?" else false
  end

  def exclamation?
    return true if self[-1] == "!" else false
  end

  def count_sentences
    # binding.pry
    total = self.split(". ").count
    total += self.split("? ").count / 2
    total += self.split("! ").count / 2
    total
  end
end
