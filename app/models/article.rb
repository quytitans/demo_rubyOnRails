class Article < ApplicationRecord
  validates :title, presence: {message: "Tittle is required" }
  validates :body, presence: true, length: { minimum: 10 }
end
