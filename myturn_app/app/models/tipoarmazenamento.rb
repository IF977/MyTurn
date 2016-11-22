class Tipoarmazenamento < ApplicationRecord
    validates :descricao, presence: true, length: { maximum: 14 }
end
