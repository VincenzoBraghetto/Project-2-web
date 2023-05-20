class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.string :title
      t.string :description
      t.string :state
      t.string :tags
      t.string :priority
      t.string :response
      t.string :attached_documents

      t.timestamps
    end
  end
end
