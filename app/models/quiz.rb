class Quiz < ActiveRecord::Base
    has_many :quizquestions
    has_many :questions, through: :quizquestions

    attr_accessible :question_ids
end
