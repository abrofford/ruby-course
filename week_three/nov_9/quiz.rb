QA = [
  {question: "Who is the president of the United States?", answer: "Donald Trump"},
  {question: "What year is it?", answer: "2017"},
  {question: "3 + 5 = ?", answer: "8"},
  {question: "True or False: Candy Corn is a vegetable?", answer: "False"},
  {question: "Thanksgiving is celebrated World-Wide? :", answer: "False"}
]

class Quiz
  attr_accessor :score

  def initialize
    @score = 0
  end

  def check_answer(question_index, user_answer)
    question = QA[question_index]
    if question[:answer] == user_answer
      @score += 1
    end
  end
end

quiz = Quiz.new

QA.each_with_index do |qa, index|
  puts qa[:question]
  user_answer = gets.chomp
  quiz.check_answer(index, user_answer)
end

puts "Your score is #{quiz.score}"
