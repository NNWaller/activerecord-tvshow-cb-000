class CreateShows < ActiveRecord::Migration
    def change
      create_table :tvshows do |t|
        t.string :name
        t.string :day
        t.string :network
        t.integer :rating
      end 
    end
  end