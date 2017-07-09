class ForumsController < ApplicationController
  layout 'forums_layout', only: [:new, :edit]
  def index
    @questions = Question.all.order(id: 'DESC').plant(params[:page]).per(8)
  end

  def show
    @question = Question.find params[:id]
    @replies = Reply.where({ question_id: @question.id })
    @questions_comments = Comment.where({question_id: @question.id })
    # @reply_comments = Comment.where({reply_id: @replies
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to forum_path(@question)
      flash[:notice] =  'Your Question Posted Successfully'
    else
      render :new
      flash[:notice] = 'Unable to Post Question Please Retry' 
    end
  end
  
  def edit
  end


  private
  def question_params
    params.require(:question).permit(:title, :body, :tag)
  end
end
