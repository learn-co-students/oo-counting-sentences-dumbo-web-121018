require 'pry'

class String
  
  attr_accessor :string
  
  @@all = []
  #creates a class variable scoped within the String class 
  
 def initialize
   
   @@all << self
   
   #everytime a new string is created its shoeveled into the string class 
 end  
 
  def self.all 
    @@all 
    #returns an array of all string instances 
  end 
    
  def sentence? # => returns true if teh string ends in a question mark
  #iterate through the string class and see if it ends in a period 
  #self.all.select do |self|
   self.end_with?(".")
  end


  def question?
self.end_with?("?")
  end

  def exclamation?
self.end_with?("!")
  end


  def count_sentences # => returns # of sentences in a string 
# 
#count the numbeer of elements 
    self.split(/\?|\.|!/).delete_if {|element|
      element.size < 2}.size
    #.split(/\?|.!/) 
    # splits the string at every ending punctuation into an array 
# .delete_if {|value| value < 3} Deletes every element of self for which block evaluates to true.
#and then gets the size of the array
  end
end 

