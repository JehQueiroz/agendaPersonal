class Horario < ActiveRecord::Base
  belongs_to :professor
  belongs_to :academia
  validates_presence_of :hora, message: "A hora deve ser preenchida"
  validates_presence_of :professor_id, message: "O Professor deve ser preenchido"
  validates_presence_of :academia_id, message: "A academia deve ser preenchida"
end
