class CreateAmus < ActiveRecord::Migration
  def change
    create_table :amus do |t|
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end
