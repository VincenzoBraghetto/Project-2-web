class AddTicketRefToFeedback < ActiveRecord::Migration[7.0]
  def change
    add_reference :feedbacks, :ticket, null: false, foreign_key: true
  end
end
