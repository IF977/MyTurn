class CreateTipoarmazenamentos < ActiveRecord::Migration[5.0]
  def change
    create_table :tipoarmazenamentos do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
