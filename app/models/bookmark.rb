class Bookmark < ActiveRecord::Base
	#attr_accessible :url, :name

	validates :url, :name, :presence => true
	validates :url, :uniqueness => { :message => "That url is already used for another bookmark!" }
	validates :url, url: true
end
