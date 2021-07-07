def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_sort = {}
    data.each do |color_gender_lives_key, value|
      value.each do |stats_key, value2|
        value2.each do |name_key|
          if pigeon_sort[name_key] == nil
            pigeon_sort[name_key] = {}
          end
          
          if pigeon_sort[name_key][color_gender_lives_key] == nil
            pigeon_sort[name_key][color_gender_lives_key] = []
          end
          
          stats_string = stats_key.to_s 
          pigeon_sort[name_key][color_gender_lives_key] << stats_string
          
          
          
          
          
        end
        
        
        
      end
      
      
    end
  
  pigeon_sort
end
