class Learning < ApplicationRecord

  belongs_to :user
  attachment :learning_image
  has_many :learning_comments, dependent: :destroy

end
