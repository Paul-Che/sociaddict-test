class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :parraine_par, :string
    add_column :users, :filleuls,     :string, array: true, default: []
    add_column :users, :new_filleul,  :string
  end
end
