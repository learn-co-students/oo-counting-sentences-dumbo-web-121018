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
        self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size
    # above is from solution - i kind of get it but i'll need to look into this a bit more!
    # below are some code i found online - they don't work though
    # self.scan([^\.!?]+[\.!?]).map(&:strip).count # scan has regex to split string and strip will remove trailing spaces.
    # self.strip.split(/\w[?!.]/).length
    # self.split(/\.|\?|!/).length
  end

  # binding.pry
end
