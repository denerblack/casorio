class Photo < ActiveRecord::Base
	has_attached_file :image, :styles => { large: "850x400>", :medium => "400x300>", :thumb => "200x100>" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
