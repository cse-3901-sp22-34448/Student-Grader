class AddStudentToFeedbacks < ActiveRecord::Migration[7.0]
  def change
    add_reference :feedbacks, :student
  end
end
