class School < ActiveRecord::Base
 has_many :reviews
 belongs_to :area

 geocoded_by :address
 after_validation :geocode

  # has_attached_file :avatar,
                      # styles:  { medium: "300x300#", thumb: "100x100#" }
  # validates_attachment_content_type :avatar,
                                      # content_type: ["image/jpg","image/jpeg","image/png"]
end
