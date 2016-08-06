class LabeledPost < ActiveRecord::Base
	belongs_to :posts
	belongs_to :labels

end
