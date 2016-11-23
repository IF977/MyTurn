class Tipoarmazenamento < ActiveRecord::Base
    validates :descricao, presence: true, length: { maximum: 14 }
end
