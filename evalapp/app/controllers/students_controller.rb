class StudentsController < ApplicationController
  def show
    @student = Student.find_by_id(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to @student
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def student_params
    params.require(:student).permit(:name)
  end
end
