class Aluno < ActiveRecord::Base
	validates_presence_of :nome, message: "O nome deve ser preenchido"
	validates_presence_of :endereco, message: "O Endereço deve ser preenchido"
	validates_presence_of :telefone, message: "O telefone deve ser preenchido"
	validates_uniqueness_of :cpf, message: "Cpf já cadastrado"
	mount_uploader :foto, FotoAlunoUploader
end
