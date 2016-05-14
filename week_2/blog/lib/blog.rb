require_relative('post')
require_relative('sponsorpost')

class Blog
  def initialize(array_of_post)
    @array_of_post = array_of_post    
    @curren_page = 1
  end
  
  def publish
    first = (@curren_page - 1) * 3
    last = first + (3 - 1)

    @array_of_post[first..last].each do | single_post |
      single_post.post_print
    end

    input = gets.chomp

    if input == "next"
      @curren_page += 1
      publish
    elsif input == "back"
      @curren_page -= 1
      publish
    else 
      puts "peace!"
    end
  end
  
  # def next_page
      
  # end

  # def prev

end