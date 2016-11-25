class Agendamento < ActiveRecord::Base
  belongs_to :user
  has_one :fornecedors, dependent: :destroy
  validates :user_id, presence: true
  validates :ID_Fornecedor, presence: true
end

