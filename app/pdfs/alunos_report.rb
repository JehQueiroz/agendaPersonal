class AlunosReport < Prawn::Document
def initialize(alunos)
super()
@totsal = 0
@alunos = alunos
header
text_content
table_content
sumary
end
def header
#This inserts an image in the pdf file and sets the size of the image
image "#{Rails.root}/app/assets/images/academia.jpg", width: 530, height: 100
end
def text_content
y_position = cursor - 50
# The bounding_box takes the x and y coordinates for positioning its content and
some options to style it
bounding_box([0, y_position], :width => 540, :height => 50) do
text "Relatório Agenda Personal", size: 15, style: :bold
text "Listagem dos Alunos Complementares", size: 12, style: :bold
end
end
def table_content
table alunos_rows do
row(0).font_style = :bold
self.header = true
self.row_colors = ['DDDDDD', 'FFFFFF']
self.column_widths = [90,200, 200, 50]
end
end
def alunos_rows
[['Nome','Telefone', 'Endereco', 'CPF', 'IdALuno']] + @alunos.map do |aluno|
		[aluno.nome,aluno.telefone,aluno.endereco,aluno.cpf,aluno.IdALuno]
end
end
y_position = cursor - 50
end
end
end