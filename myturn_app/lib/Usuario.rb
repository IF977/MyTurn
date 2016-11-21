class Usuario
  attr_accessor :cpf,:nome,:login,:telefone,:senha,:email
  
  def initialize
    @cpf = "02352641255"
    @nome = "Renata Carneiro Albuquerque"
    @login = "rca14"
    @telefone = "34330663"
    @senha = "teste"
    @email = "rca14@cin.ufpe.br"
  end
end