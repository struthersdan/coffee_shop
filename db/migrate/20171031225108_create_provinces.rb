class CreateProvinces < ActiveRecord::Migration[5.1]
  def change
    create_table :provinces do |t|
      t.string :name
      t.decimal :PST
      t.decimal :GST
      t.decimal :HST
      t.string :code

      t.timestamps
    end
  end
end
