class CreateResolutions < ActiveRecord::Migration[7.0]
  def change
    create_table :resolutions do |t|
      t.string :description

      t.timestamps
    end
  end
end
