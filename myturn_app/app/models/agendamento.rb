class Agendamento < ActiveRecord::Base
  belongs_to :user
  has_many :fornecedor, dependent: :destroy
  validates :user_id, presence: true
  validates :fornecedor_id, presence: true
end

