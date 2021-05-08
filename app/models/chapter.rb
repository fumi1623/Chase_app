class Chapter < ApplicationRecord

  belongs_to :user
  belongs_to :learning

  has_one_attached :video

end
