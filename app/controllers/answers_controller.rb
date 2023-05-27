class AnswersController < ApplicationController
  def answer
    @question = params[:question]
    @happy = false
    @answers = ["I don't care, get dressed and go to work!", "Great!", "Silly question, get dressed and go to work!."]
    if @question.include?("?")
      @answer = @answers[2]
    elsif @question.match(/\w?.{2,3}\sgoing\sto\swork\snow.?/i)
      @happy = true
      @answer = @answers[1]
    else
      @answer = @answers[0]
    end
  end
end
