class AddColumnToResolutions < ActiveRecord::Migration[7.0]
  def change
    add_column :resolutions, :accepted, :boolean
  end
end
