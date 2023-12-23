class CreateVigilantes < ActiveRecord::Migration[7.0]
  def change
    create_table :vigilantes do |t|
      t.string :name
      t.string :vehicle

      t.timestamps
    end
  end
end
