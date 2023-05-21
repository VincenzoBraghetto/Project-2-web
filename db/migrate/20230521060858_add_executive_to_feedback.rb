class AddExecutiveToFeedback < ActiveRecord::Migration[7.0]
  def change
    add_reference :feedbacks, :executive, null: false, foreign_key: true
  end
end
