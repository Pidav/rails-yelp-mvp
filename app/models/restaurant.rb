class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

CAT_LIST = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CAT_LIST, allow_nil: false }

end
