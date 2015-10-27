class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
     
  has_many :posts  
  has_many :jobs 


  #socialization gem 
  acts_as_follower
  acts_as_followable
  acts_as_liker
  acts_as_likeable
  acts_as_mentionable

  has_attached_file :resume


  ROLES= %w[admin student fellow company]


  has_attached_file :image, styles: { small: "100x100>" }
  validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/]
  acts_as_messageable

  def mailboxer_name
    self.name
  end
 
  def mailboxer_email(object)
    self.email
  end

  def self.search(search)
    User.where('name LIKE :search OR major LIKE :search OR school LIKE :search OR gradyear LIKE :search', search: "%#{search}%")

  end


  after_create
    :assign_role

    def assign_role
        self.role ||= Role.find_by_name('student')
      end
end

