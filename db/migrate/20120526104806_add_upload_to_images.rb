class AddUploadToImages < ActiveRecord::Migration
  def self.up
    change_table :images do |t|
      t.has_attached_file :upload
    end
  end
end
