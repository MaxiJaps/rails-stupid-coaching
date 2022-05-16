class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @query = params[:question]
    @answer = coach_answer(@query) if @query
  end

  def coach_answer(your_message)
    if your_message == 'I am going to work'
      return 'Great!'
    elsif your_message.end_with?('?')
      return 'Silly question, get dressed and go to work!'
    else "I don't care, get dressed and go to work!"
    end
  end
end
