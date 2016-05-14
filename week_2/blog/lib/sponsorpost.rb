require_relative('post')
require_relative('blog')

class SponsorPost < Post
  def initialize(title, date, content)
  	title = "*****#{title}****"
    super(title, date, content)
  end

  # def post
  #   puts "***** #{@title} *****"
  #   puts @date
  #   puts @content
  #   puts "-----------------"
  # end
end