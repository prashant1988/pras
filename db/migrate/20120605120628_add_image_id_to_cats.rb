class AddImageIdToCats < ActiveRecord::Migration
  def change
    add_column :cats, :image_id, :integer
  end
end
