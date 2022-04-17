class FeedbacksController < ApplicationController
  def index
    @feedbacks = Feedback.all
  end

  def show
    @feedback = Feedback.find(params[:id])
  end

  def new
    @feedback = Feedback.new
  end
  
  def create
    @feedback = Feedback.new(feedback_params)
    @student = current_student

    if @feedback.save
      redirect_to "/events/"+@feedback.event_id.to_s
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @feedback = Feedback.find(params[:id])
  end

  def update
    @feedback = Feedback.find(params[:id])

    if @feedback.update(feedback_params)
      redirect_to @feedback
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @feedback = Feedback.find(params[:id])
    @feedback.destroy
    redirect_to root_path, status: :see_other
  end
  
  private def feedback_params
    params.require(:feedback).permit(:score, :comment, :event_id)
  end
end