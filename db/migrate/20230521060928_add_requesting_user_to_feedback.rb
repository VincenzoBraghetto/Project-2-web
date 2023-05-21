class AddRequestingUserToFeedback < ActiveRecord::Migration[7.0]
  def change
    add_reference :feedbacks, :requesting_user, null: false, foreign_key: true
  end
end
