class CreateProfessores < ActiveRecord::Migration
  def change
    create_table :professores do |t|
      t.string :nome
      t.integer :telefone
      t.string :endereco
      t.integer :cpf
      t.references :academia, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
