class Rename < ActiveRecord::Migration[5.0]
  def change
    rename_column :agendamentos, :ID_Usuario, :user_id
  end
end
