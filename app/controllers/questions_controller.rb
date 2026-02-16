class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:question]

@coach = case @answer
         when "I am going to work"
           "Great"
         when ->(a) { a.ends_with?("?") }
           "Silly question, get dressed and go to work!"
         else
           "I don't care, get dressed and go to work!"
         end
  end
end
