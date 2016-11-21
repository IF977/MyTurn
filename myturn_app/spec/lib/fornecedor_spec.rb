require "spec_helper"
require "Fornecedor"
describe Fornecedor do
    regex_num = /[0-9]/
    valid_input = "[a-zA-z ]"
    invalid_input= "[^A-Za-z0-9 ]"
    obj = Fornecedor.new
    
    it "Checar instância de fornecedor" do
        expect(obj).to be_an_instance_of(Fornecedor)
    end
    
    it "A Razão Social é válida?" do #verifica se tem espaço e letras que compões  nome
        expect(obj.razaosocial).to match(valid_input)
        expect(obj.razaosocial).not_to match(regex_num)
        expect(obj.razaosocial).not_to match(invalid_input) #aprimoramento do teste
    end
    it "O CNPJ é válido?" do 
        expect(obj.cnpj).to match(regex_num)
        expect(obj.cnpj).not_to be_empty 
        expect(obj.cnpj).not_to match(invalid_input) #aprimoramento do teste
    end
end
    
    