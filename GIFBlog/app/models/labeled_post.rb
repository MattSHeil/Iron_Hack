class LabeledPost < ActiveRecord::Base
	belongs_to :post
	belongs_to :label
end
