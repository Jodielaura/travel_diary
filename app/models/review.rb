class Review < ActiveRecord::Base
belongs_to :city
has_attached_file :picture, styles: { medium: "300*300#", thumb:"100*100#"}, default_url: "/images/:style/missing.png"
validates_attachment_content_type :picture, content_type:/\Aimage\/.*\z/
end
