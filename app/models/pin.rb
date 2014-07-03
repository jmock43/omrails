class Pin < ActiveRecord::Base

	attr_accessible :description

	validates :description, presence: true #for others search for rails validations
end
