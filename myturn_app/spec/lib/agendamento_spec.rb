require "spec_helper"
require "Agendamento"
describe Agendamento do
    regex_num = /[0-9]/
    valid_input = "[a-zA-Z ]"
   # invalid_input= "[^A-Za-z0-9 ]"
    obj = Agendamento.new
    
    it "Checar instância de agendamento" do
        expect(obj).to be_an_instance_of(Agendamento)
    end
    
    it "O id_usuario é válido?" do 
        expect(obj.id_usuario).not_to match(valid_input)
        expect(obj.id_usuario).to match(regex_num)
        expect(obj.id_usuario).not_to be_empty
    end
    it "A quantidade de trabalhadores é válida?" do 
        expect(obj.qtd_trabalhadores).not_to match(valid_input)
        expect(obj.qtd_trabalhadores).to match(regex_num)
        expect(obj.qtd_trabalhadores).not_to be_empty
    end
    
    it "A data é valida?" do
        #expect(ano).to be >= 2016
        
    end
    it "A hora é valida?" do
        #algoritmo para validar a hora
        array_hora = obj.hora.split(':')
        hora = Integer(array_hora[0])
        minuto = Integer(array_hora[1])
        if hora >= 0 and minuto >= 0;
            expect(hora).to be_between(0,23)
            expect(minuto).to be_between(0,59)
        end
    end
    it "O tempo de entrega é válido?" do
        expect(obj.tempoentrega).to match(regex_num)
        expect(obj.tempoentrega).not_to be_empty
    end
    it "A Paletização é valida?" do
        expect(obj.paletizacao).not_to be_empty
        expect(obj.paletizacao).to match(valid_input)
    end
    it "O Id do tipo de armazenamento é válido?" do
        expect(obj.id_tipoarmazenamento).to match(regex_num)
        expect(obj.id_tipoarmazenamento).not_to be_empty
    end
    it "O Id do fornecedor é válido?" do
        expect(obj.id_fornecedor).to match(regex_num)
        expect(obj.id_fornecedor).not_to be_empty
    end
end