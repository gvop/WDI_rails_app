class ChangeTypeName < ActiveRecord::Migration
  def change
    rename_column :sneakers, :type, :type_of
  end
end
