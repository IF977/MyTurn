class Fornecedor < ActiveRecord::Base
 attr_accessor :remember_token, :activation_token, :reset_token
 validates :CNPJ, presence: true, length: { is: 14 }, uniqueness: true
 validates_presence_of :razaosocial, message: ' Não pode ser deixado em branco'
 validates_presence_of :CNPJ, message: ' Não pode ser deixado em branco'
 validates :razaosocial, length: { minimum: 1, message: ' Deve ter pelo menos 1 caracteres'}
end