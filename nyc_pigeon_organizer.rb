def nyc_pigeon_organizer(data)
  
  data_by_pigeon = {}
  
  data.keys.each do |property| 
    data[property].keys.each do |value|
      data[property][value].each do |name|
        data_by_pigeon[name] = data_by_pigeon[name] || {}  
        data_by_pigeon[name][property] = data_by_pigeon[name][property] || []
        data_by_pigeon[name][property] << value.to_s 
      end
    end
  end
 data_by_pigeon
end
