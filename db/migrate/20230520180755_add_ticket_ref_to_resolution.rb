class AddTicketRefToResolution < ActiveRecord::Migration[7.0]
  def change
    add_reference :resolutions, :ticket, null: false, foreign_key: true
  end
end
