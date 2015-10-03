class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts  
  has_many :jobs 


  has_attached_file :image, styles: { small: "100x100>" }
  validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/]
  acts_as_messageable

  def mailboxer_name
    self.name
  end
 
  def mailboxer_email(object)
    self.email
  end

  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("name like ?", "%#{query}%") 

  end

end

