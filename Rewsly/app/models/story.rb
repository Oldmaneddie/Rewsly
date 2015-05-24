class Story < ActiveRecord::Base
    validates :title, presence: true #remember validates is just a method
    validates :link, presence: true
    validates :upvotes, presence: true
    validates :category, presence: true
end
