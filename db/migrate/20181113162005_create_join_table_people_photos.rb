class CreateJoinTablePeoplePhotos < ActiveRecord::Migration[5.2]
  def change
    create_join_table :people, :photos do |t|
      # t.index [:person_id, :photo_id]
      # t.index [:photo_id, :person_id]
    end
  end
end
