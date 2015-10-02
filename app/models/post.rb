class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments, dependent: :destroy
	has_many :hashtags
	validates :title, presence:true, length: {minimum: 5}
	validates :body, presence:true
	has_attached_file :image, styles: { medium: "100x100>" }
	validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/]
  acts_as_taggable	  	


  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("title like ?", "%#{query}%") 

  end
end
