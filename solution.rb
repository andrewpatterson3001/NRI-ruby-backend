#NRI Back End Challenge Solution

#################################
#Pseudocode
#1. Input from the user is an integer greater than 0 and their student id
#2. Output from the user is a list of question id's that samples from strands and standards equally while adjusting question difficulty to the student's previous responses.
##################################

class Student
  def initialize(options = {})
    @standard_mastery = options[:standard_mastery]
    @quizzes = options[:quizzes]
  end
end

class Quiz
  def initialize(options = {})
    @questions = options[:questions]
  end
end

class Question
  def initialize(options = {})
    @question_id = options[:question_id]
    @difficulty = options[:difficulty]
    @standard_id = options[:standard_id]
    @strand_id = options[:strand_id]
    @assigned_hours_ago = options[:assigned_hours_ago]
    @answered_hours_ago = options[:answered_hours_ago]
  end
end
