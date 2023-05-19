class CreateSupervisors < ActiveRecord::Migration[7.0]
  def change
    create_table :supervisors do |t|
      t.string :name
      t.string :last_name
      t.string :email
      t.string :telephone

      t.timestamps
    end
  end
end
