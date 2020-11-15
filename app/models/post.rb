class Post < ApplicationRecord
  validates :title, presence: true, length: { minumun: 5 }
end
