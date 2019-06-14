class Show < ActiveRecord::Base
    def highest_rating
      Show.maximum(:rating)
   end 
   
   def most_popular_show
     self.highest_rating
   end
   
   def lowest_rating
     Show.minimum(:rating)
   end
   
   def least_popular_show
     self.lowest_rating
   end
   
   def ratings_sum
     Show.sum(:ratings)
   end
   
   def popular_shows
     Show.where("ratings > ?", 5)
   end
   
end