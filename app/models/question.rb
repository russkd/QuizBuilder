class Question < ActiveRecord::Base
# Relationships
    has_many :answers
    belongs_to :user
end
