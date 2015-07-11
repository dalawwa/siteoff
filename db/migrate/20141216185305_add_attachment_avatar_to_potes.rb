class AddAttachmentAvatarToPotes < ActiveRecord::Migration
  def self.up
    change_table :potes do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :potes, :avatar
  end
end
