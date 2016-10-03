class Academia < ActiveRecord::Base
	
	validates_presence_of :nome, message: "O nome deve ser preenchido"
	validates_presence_of :endereco, message: "O Endereço deve ser preenchido"
	validates_presence_of :telefone, message: "O telefone deve ser preenchido"
	validates_uniqueness_of :cnpj, message: "CNPJ já cadastrado"
end
