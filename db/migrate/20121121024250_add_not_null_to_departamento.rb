class AddNotNullToDepartamento < ActiveRecord::Migration
  def up
  	change_column :departamentos, :nome, :string, :null => false
  end
  def down
  	change_column :departamentos, :nome, :string, :null => true
  end
end
