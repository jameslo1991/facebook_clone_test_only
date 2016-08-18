class Status < ActiveRecord::Base
	belongs_to :user
	validates :title, :content, presence: true
	has_many :likes, dependent: :destroy
	default_scope -> {order("created_at DESC")}
	validates_length_of :title, :minimum => 8, :message => "title is too short" 
	validates_length_of :content, :minimum => 10, :message => "content is too short"
end
