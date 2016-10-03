class Professor < ActiveRecord::Base
  belongs_to :academia
  validates_presence_of :nome, message: "O nome deve ser preenchido"
  validates_presence_of :endereco, message: "O Endereço deve ser preenchido"
  #validates_presence_of :telefone, message: "O telefone deve ser preenchido"
  validates_uniqueness_of :cpf, message: "CPF já cadastrado"
  validates_presence_of :academia_id, message: "O id da Academia deve ser preenchido"
  #validates_size_of :nome, :minimum => 10, :maximun=>100, message: "Muito pequeno ou muito grande, mÌnimo de 3 e m·ximo de 50 caracteres"
  mount_uploader :foto, FotoProfessorUploader
end


	

