class CreateAlunos < ActiveRecord::Migration
  def change
    create_table :alunos do |t|
      t.string :nome
      t.integer :telefone
      t.string :endereco
      t.integer :cpf

      t.timestamps null: false
    end
  end
end
