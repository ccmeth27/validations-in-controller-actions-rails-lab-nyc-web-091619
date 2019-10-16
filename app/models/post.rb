class Post < ActiveRecord::Base
    belongs_to :author
    validates :title, presence: true
    validates :category, inclusion: { in: %w(Non-Fiction Fiction),
    message: "%{value} is not a valid category" }
    validates :content, length: { minimum: 100 }
end
