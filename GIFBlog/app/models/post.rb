class Post < ActiveRecord::Base

	has_many :labeled_posts
	has_many :labels, through: :labeled_posts

	def self.sotr_by_date(n)
		limit(n).order(created_at: :desc)
	end

	def self.sotr_by_vote(n)
		limit(n).order(votes: :desc)
	end
	
	def self.low_rated_index(n)
		limit(n).where("votes > ?", 5)
	end


	def voteUp(params)
		thePost = Post.find(params)
		thePost.votes += 1 
		thePost.save
	end

	def voteDown(params)
		thePost = Post.find(params)
		thePost.votes -= 1 
		thePost.save
	end
end
