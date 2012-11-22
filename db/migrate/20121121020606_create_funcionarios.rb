class CreateFuncionarios < ActiveRecord::Migration
  def change
    create_table :funcionarios do |t|
      t.string :nome, :limit => 60
      t.date :contratacao
      t.boolean :ativo
      t.integer :departamento_id

      t.timestamps
    end
  end
end
