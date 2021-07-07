require 'pry'
def nyc_pigeon_organizer(data)
  pigeons = {}
  
  data.each do |attribute, value|

    value.each do |color, pigeons_array|

      pigeons_array.each do |name|
        
        if !pigeons[name]
          pigeons[name] = {}
        end
        
          if !pigeons[name][attribute]
            pigeons[name][attribute] = []
          end 
          pigeons[name][attribute] << color.to_s
          
      end
    end
  end
  
  pigeons 
end
