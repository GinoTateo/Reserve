class AddIdToReservation < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :party_size, :integer
  end
end
