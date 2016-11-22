class CreateAgendamentos < ActiveRecord::Migration[5.0]
  def change
    create_table :agendamentos do |t|
      t.string :ID_Usuario
      t.string :Qtd_Trabalhadores
      t.datetime :Data
      t.string :TempoEntrega
      t.string :Paletizacao
      t.string :ID_TipoArmazenamento
      t.string :ID_Fornecedor

      t.timestamps
    end
  end
end
