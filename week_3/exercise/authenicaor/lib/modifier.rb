class Modifier
  def initialize(string)
  	@string = string    
  end

  def letter_count_it
    @string.length
  end
  
  def lower_case_it
    @string.lowcase
  end

  def reverse_it
    @string.reverse
  end  

  def word_count_it
    words = @string.split
    words.length
  end

    def up_case_it
    @string.upcase
  end  
end