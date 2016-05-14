require_relative('lib/blog')
require_relative('lib/post')

post_1 = Post.new("Welcome to blog", Time.new(2001), "please, blablablablablablablablablabla")
post_2 = SponsorPost.new("doing as I go along", Time.new(2002), "make it stop, huahuahuahuahuahuahuahuahuahu")
post_3 = Post.new("I have barely any idea what im doing", Time.new(2003), "i cant, quiquiquiquiquiquiquiquiquiq")
post_4 = Post.new("this was a bad idea", Time.new(2004), "do this, plsplsplsplsplsplsplsplsplsplspl")
post_5 = Post.new("i ran out of ideas", Time.new(2005), "anymore, zxnzxnzxxnzxnzxnzxnzxnzxn")

array_of_posts = [post_1, post_2, post_3, post_4, post_5]

matts_blog = Blog.new(array_of_posts)

# post_1.post_print


matts_blog.publish
# matts_blog.next_page
# sleep(3)
# matts_blog.next_page
# sleep(3)
# matts_blog.prev_page
# sleep(3)
# matts_blog.next_page
# sleep(3)
# matts_blog.prev_page


