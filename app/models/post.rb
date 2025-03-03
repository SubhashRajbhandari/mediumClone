class Post < ApplicationRecord
  belongs_to :user

  has_one_attached :photo

  validates :photo, presence: true

  validates :title, presence: true, length: { minimum: 30 }

  validates :description, presence: true, length: { minimum: 100 }

  has_many :comments, dependent: :destroy

  has_many :likes, dependent: :destroy

  has_many :bookmarks, dependent: :destroy


end
