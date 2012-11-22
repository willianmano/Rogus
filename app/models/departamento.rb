class Departamento < ActiveRecord::Base
  attr_accessible :nome

  has_many :funcionarios

  validates :nome, :presence => { :message => "Informe o nome do departamento"}
end
