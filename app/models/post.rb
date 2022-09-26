class Post < ApplicationRecord
    validates :title, presence: true

    validates :content, length: {minimum: 250}

    validates :summary, length: {maximum: 250}

    validates :category, inclusion: {in: %w(Fiction Non-Fiction)}

    # validates :clickbait?

    # private

    # def clickbait
    #     if title.present? && (!title.include?("You Won't Believe The True Facts") && !title.include?("Secret") && !title.include?("Top /\d/") && !title.include?("Guess"))
    #         errors.add(:title, "must bait clicks")
    #     end
    # end
end
