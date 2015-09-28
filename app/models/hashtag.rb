class Hashtag < ActiveRecord::Base
	belongs_to :post
	belongs_to :job
end
