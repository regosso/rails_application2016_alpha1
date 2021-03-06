class Product < ActiveRecord::Base
  validates :name, :about, :price, :goods_group_id, :gender_id, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  has_one :goods_group
  has_one :gender	
  #added here 
  has_many :cart_item2s 
  
  has_many :images, :dependent => :destroy
  accepts_nested_attributes_for :images, :allow_destroy => true

  accepts_nested_attributes_for :goods_group
  accepts_nested_attributes_for :gender
  #self.per_page = 6
  #WillPaginate.per_page = 6
  #attr_accessible :image
  mount_uploader :image, ImageUploader
#search in producTS
  def self.search(search)
    if search
  	  where('name ILIKE ?', "%#{search}%")
    else
  	  all
    end
  end  
end
