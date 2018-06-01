class Post < ApplicationRecord
  validates_presence_of :title, :content
  has_attached_file :image
  validates :image, attachment_presence: true
  validates_attachment_content_type :image, content_type: /\Aimage/
  do_not_validate_attachment_file_type :image
end
