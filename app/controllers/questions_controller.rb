class QuestionsController < ApplicationController
  def ask() end

  def answer
    question = params['question']
    @question = question
    @answer = if question[-1] == '?'
                'Silly question, get dressed and go to work!'
              elsif question.downcase == 'I am going to work'.downcase
                'Great!'
              else
                'I don\'t care, get dressed and go to work!'
              end
  end
end
