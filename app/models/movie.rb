class Movie < ApplicationRecord
  has_attached_file :poster, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :poster, content_type: /\Aimage\/.*\z/
  belongs_to :director
end
