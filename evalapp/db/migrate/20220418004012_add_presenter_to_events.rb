class AddPresenterToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :presenter, :string
  end
end
