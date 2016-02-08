#NRI Back End Challenge Solution

#################################
#Pseudocode
#1. Input from the user is an integer greater than 0 and their student id
#2. Output from the user is a list of question id's that samples from strands and standards equally while adjusting question difficulty to the student's previous responses.
##################################

class Student
  def initialize(options = {})
    @student_id = options[:student_id]
    @standard_mastery = options[:standard_mastery]
    @quizzes = options[:quizzes]
  end
end

class Quiz
  def initialize(options = {})
    @number_of_questions = options[:number_of_questions]
    @questions = []
  end

  def add_question(new_question)
    @questions << new_question
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

#################################
#Test Code
#######assume Roy has student_id "1" and he enters "4" as the number of questions he wants to answer. He has never answered a quiz before so his standard mastery is null
roy = Student.new(student_id:1)
english_quiz = Quiz.new(number_of_questions: 4)
####### The output should be something like [1,3,7,9]


# question_1 = Question.new()
# question_2 =
# question_3 =
# question_4 =
# english_quiz.add_question(question_1)
# english_quiz.add_question(question_2)
# english_quiz.add_question(question_3)
# english_quiz.add_question(question_4)


