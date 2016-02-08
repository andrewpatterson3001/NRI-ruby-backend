#NRI Back End Challenge Solution

#################################
#Pseudocode
#1. Input from the user is an integer greater than 0 and their student id
#2. Output from the user is a list of question id's that samples from strands and standards equally while adjusting question difficulty to the student's previous responses.
##################################

require 'csv'

example_questions = CSV.read('questions.csv')

example_questions.each do |question_data|
  #create key value pairs to make selecting appropriate questions even easier
end

class Student
  def initialize(options = {})
    @student_id = options[:student_id]
    @standard_mastery = options[:standard_mastery]
    @quizzes = []
    @quizzes << add_quiz()
  end

  def add_quiz
    p "Please enter the number of questions you would like to answer as a whole number:"
    question_number_input = gets
    Quiz.new(number_of_questions: question_number_input)
  end
end

class Quiz
  def initialize(options = {})
    @number_of_questions = options[:number_of_questions]
    @questions = []
    add_questions(@number_of_questions)
    administer_quiz()
  end

  def add_questions(number_of_questions)
    number_of_questions.times do
      new_question = Question.new(question_id:example_questions[rand], difficulty:, standard_id:, strand_id:)
      @questions << new_question
  end

  def administer_quiz
    p "Here are your quiz questions"
    @questions.each do |question|
      p question.question_id
    end
  end

end

class Question
  def initialize(options = {})
    @question_id = options[:question_id]
    @difficulty = options[:difficulty]
    @standard_id = options[:standard_id]
    @strand_id = options[:strand_id]
    @student_response = {time_assigned: DateTime.now ,time_answered: null, body: null }
  end
end

#################################
#Test Code
#######assume Roy has student_id "1" and he enters "4" as the number of questions he wants to answer. He has never answered a quiz before so his standard mastery is null
roy_quiz = Student.new(student_id:1)
#Roy enters "4" on the command line when prompted
####### The output should be something like [1,3,7,9]

#Code Reflections
################################################
#I didn't complete the challenge in 2 hours, so here are a few things I will improve upon:
# - read up on attr readers, writers, and accessors so that I can ensure that the question data is provided to the quiz
# - add a method to the quiz that allows the student to provide responses to the questions
# - ensure that questions are chosen equally from strands and standards and that question challenge level is adjusted based on the students response