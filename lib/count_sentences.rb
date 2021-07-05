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
    # self.split(/\.|\?|\!/).delete_if {|word| word.length < 2}.length
    # self.scan(/[^\.!?]+[\.!?]/).map(&:strip).count # scan has regex to split string and strip will remove trailing spaces
    self.split(/[.?!]+/).grep(/\S/).count
  end
end