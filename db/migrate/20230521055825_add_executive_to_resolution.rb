class AddExecutiveToResolution < ActiveRecord::Migration[7.0]
  def change
    add_reference :resolutions, :executive, null: false, foreign_key: true
  end
end
