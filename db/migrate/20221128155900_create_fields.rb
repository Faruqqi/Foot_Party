class CreateFields < ActiveRecord::Migration[7.0]
  def change
    create_table :fields do |t|
      t.string :address
      t.string :zip_code
      t.string :city

      t.timestamps
    end
  end
end
