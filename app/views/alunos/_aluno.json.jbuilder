json.extract! aluno, :id, :nome, :telefone, :endereco, :cpf, :created_at, :updated_at
json.url aluno_url(aluno, format: :json)