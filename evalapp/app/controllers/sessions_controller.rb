class SessionsController < ApplicationController
  #before_action :redirect_if_authenticated, only: [:create, :new]

  def create
    @student = Student.find_by(name: params[:session][:name])
    if @student
      log_in @student
      redirect_to @student
    else
      render :new
    end
  end

  def destroy
    log_out
    redirect_to root_path, notice: "Signed out."
  end

  def new
  end

end