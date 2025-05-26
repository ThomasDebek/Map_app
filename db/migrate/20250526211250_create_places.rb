class CreatePlaces < ActiveRecord::Migration[8.0]
  def change
    create_table :places do |t|
      t.string :neme
      t.string :locatioin
      t.decimal :x
      t.decimal :y

      t.timestamps
    end
  end
end
