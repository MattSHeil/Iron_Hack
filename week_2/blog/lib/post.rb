class Post
  attr_reader :title, :date, :content
  def initialize(title, date, content)
  	@title = title
  	@date = date
  	@content = content
  end

  def post_print
  	puts "#### #{@title} ####"
    puts @date
    puts @content
    puts "-----------------"
   end
end