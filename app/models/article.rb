class Article < ApplicationRecord
    #This is where you add in validations
    #these are called active record validations
    validates :title, presence: true
    validates :body, presence: true, length: {minimum: 10}
end
