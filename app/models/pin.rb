class Pin < ActiveRecord::Base

	attr_accessible :description, :image
	has_attached_file :image, styles: {medium: "320x240>"} #paperclip association


	validates :description, presence: true #for others search for rails validations
	validates :user_id, presence: true
	validates_attachment :image, presence: true,
							size: { less_than: 5.megabytes}
	belongs_to :user



end
