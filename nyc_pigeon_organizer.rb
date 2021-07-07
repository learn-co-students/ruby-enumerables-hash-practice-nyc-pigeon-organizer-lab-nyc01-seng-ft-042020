def nyc_pigeon_organizer(data)
  organized_data = {}
  data.map do |col_gen_lives, attributes|
    attributes.each do |property, name_array|
      name_array.map do |name|
        if organized_data[name] == nil
          organized_data[name] = {}
        end
         if organized_data[name][col_gen_lives] == nil
            organized_data[name][col_gen_lives] = []
       end
         organized_data[name][col_gen_lives] << (property.to_s)
       end
    end
  end 
  organized_data
end

    
=begin 
organized_hash = {}
    pigeon_data.map do |ky, val|
      # "Theo", "Peter Jr.", "Lucky", "Ms. K", "Queenie", "Andrew", "Alex"]
      uniq_names = val.values.flatten.uniq
      uniq_names.each do |name|
        organized_hash[name] = {}
        # if name is included in the values of each color, then add that color to the value
        attributes_array = []
        val.each do |color_name, names_array|

          if names_array.include?(name)
            attributes_array << color_name.to_s
          end
          organized_hash[name].merge!({ky => attributes_array})
          organized_hash[name][ky].merge(attributtes_array)
          # we left off here. 

          # x.merge!(name: {color: 'purple'}) (this overwrote the key/values)
          # x[name].merge!({color: 'purple'}) (this didnt )
        end
      end
=end