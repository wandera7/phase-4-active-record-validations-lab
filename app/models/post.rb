class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category,  inclusion: { in: ['Fiction', 'Non-Fiction']}
  validate :title_is_clickbait

  def title_is_clickbait
    unless title =="You Won't Believe These True Facts"
      errors.add(:title, "Title should be You Won't Believe These True Facts ")
    end
  end
end
