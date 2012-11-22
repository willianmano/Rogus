class AddNotNullToFuncionario < ActiveRecord::Migration
  def up
  	change_column :funcionarios, :nome, :string, :null => false
  	change_column :funcionarios, :contratacao, :date, :null => false
  	change_column :funcionarios, :departament_id, :integer, :null => false
  	change_column :funcionarios, :ativo, :boolen, :null => false, :default => false
  end
  def down
  	
  end
end
