class Story < ActiveRecord::Base
    validates :title, presence: true #remember validates is just a method
end
