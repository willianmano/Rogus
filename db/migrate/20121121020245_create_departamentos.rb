class CreateDepartamentos < ActiveRecord::Migration
  def change
    create_table :departamentos do |t|
      t.string :nome, :limit => 60

      t.timestamps
    end
  end
end
