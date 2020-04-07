def nyc_pigeon_organizer(data)
  # write your code here!
  # HoHoA
  updated_data = {}
  data.each do |color_gender_location, value_hash|
    value_hash.each do |attributes, value_array|
      value_array.each do |name|
        updated_data[name] ||= {}
        updated_data[name][color_gender_location] ||= []
        updated_data[name][color_gender_location].push(attributes.to_s)
        # if !updated_data[name]
        #   updated_data[name] = {}
        # end
        # if !updated_data[name][color_gender_location]
        #   updated_data[name][color_gender_location] = []
        # end
        # if !updated_data[name][color_gender_location].include?(attributes)
        #   updated_data[name][color_gender_location].push(attributes.to_s)
        # end
      end
    end
  end
  updated_data
end
