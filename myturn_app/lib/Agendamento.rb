class Agendamento
    attr_accessor :id_usuario,:qtd_trabalhadores,:data,:hora,:tempoentrega,:paletizacao,:id_tipoarmazenamento,:id_fornecedor
    def initialize
        @id_usuario ="1"
        @qtd_trabalhadores ="2"
        @data ="14/11/2016"
        @hora ="23:59"
        @tempoentrega ="30 minutos"
        @paletizacao ="sim"
        @id_tipoarmazenamento ="1"
        @id_fornecedor ="1"
    end
end