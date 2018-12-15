require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    arr_of_sentences= []
    arr_of_sentences= self.split(/\.|\?|\!/)
    arr_of_sentences.delete_if do |snip|
      snip.length<2
    end
    arr_of_sentences.size
  end


end
