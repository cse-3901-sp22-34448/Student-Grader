class StudentsController < ApplicationController
  def homepage
    @name = Student.find(param[:id]).name
  end
end
