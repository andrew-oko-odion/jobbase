class ForumsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @replies = Reply.where({ question_id: params[:id] })
    @question = Question.find params[:id] 
  end

  def edit
  end
end
