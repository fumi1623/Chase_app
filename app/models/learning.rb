class Learning < ApplicationRecord

  belongs_to :user
  attachment :learning_image
  has_many :learning_comments, dependent: :destroy
  has_many :chapters

  # validates :learning_name, presence: true
  # validates :learning_detail, presence: true

end
