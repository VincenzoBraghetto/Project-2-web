class AddRequestingUserToTicket < ActiveRecord::Migration[7.0]
  def change
    add_reference :tickets, :requesting_user, null: false, foreign_key: true
  end
end
