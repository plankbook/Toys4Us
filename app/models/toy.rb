class Toy < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos

  def photos=(attachables)
    attachables = Array(attachables).compact_blank

   if attachables.any?
     attachment_changes["photos"] =
       ActiveStorage::Attached::Changes::CreateMany.new("photos", self, photos.blobs + attachables)
   end
 end

  validates :name, :description, :price, presence: true
end
