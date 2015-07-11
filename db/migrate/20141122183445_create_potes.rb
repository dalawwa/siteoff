class CreatePotes < ActiveRecord::Migration
  def change
    create_table :potes do |t|
      t.string :name
      t.string :age

      t.timestamps
    end
  end
end
