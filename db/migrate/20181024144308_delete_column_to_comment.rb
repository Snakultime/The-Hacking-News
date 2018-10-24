class DeleteColumnToComment < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :related_comment, :text
  end
end
