class AddCommentRefToFeedback < ActiveRecord::Migration[7.0]
  def change
    add_reference :feedbacks, :comment, null: false, foreign_key: true
  end
end
