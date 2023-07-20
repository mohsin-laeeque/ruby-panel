class Article < ApplicationRecord

  belongs_to :publisher
  has_many :publisher
  has_one_attached :image

  validates  :act_header, :act_body, :act_type, :publish_date, presence: true
end
