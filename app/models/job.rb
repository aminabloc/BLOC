class Job < ActiveRecord::Base
	belongs_to :user
	
	has_many :hashtags
	validates :title, presence:true, length: {minimum: 5}
	validates :description, presence:true

	acts_as_taggable

	has_many :japps
end
