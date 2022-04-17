class AddEventToFeedbacks < ActiveRecord::Migration[7.0]
  def change
    add_reference :feedbacks, :event
  end
end
