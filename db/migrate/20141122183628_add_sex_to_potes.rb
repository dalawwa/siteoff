class AddSexToPotes < ActiveRecord::Migration
  def change
    add_column :potes, :sex, :string
  end
end
