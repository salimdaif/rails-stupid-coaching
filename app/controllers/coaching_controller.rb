class CoachingController < ApplicationController
  def response_statement
    "I don't care, get dressed and go to work!"
  end

  def response_question
    "Silly question, get dressed and go to work!"
  end

  def answer

    if params[:query].downcase == "i am going to work right now!"
      @answer = ""
    else
      if params[:query].include? "?"
        @answer = response_question
      else
        @answer = response_statement
      end
    end
    @question = params[:query]
  end

  def ask
  end

end
