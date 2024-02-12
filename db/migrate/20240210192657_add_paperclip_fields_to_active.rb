class AddPaperclipFieldsToActive < ActiveRecord::Migration[7.1]
  def change
    add_column :actives, :image_file_name,    :string
    add_column :actives, :image_content_type, :string
    add_column :actives, :image_file_size,    :integer
    add_column :actives, :image_updated_at,   :datetime
  end
end
