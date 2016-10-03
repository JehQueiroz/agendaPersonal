class CreateAcademias < ActiveRecord::Migration
  def change
    create_table :academias do |t|
      t.string :nome
      t.string :endereco
      t.integer :telefone
      t.integer :cnpj

      t.timestamps null: false
    end
  end
end
