class CreateTipoArmazenamentos < ActiveRecord::Migration[5.0]
  def change
    create_table :tipo_armazenamentos do |t|
      t.string :new

      t.timestamps
    end
  end
end
