def nyc_pigeon_organizer(data)
new_hash = {}
data.each do |bird , value|
  value.each do |section,array|
    array.each do |name|
       if !new_hash.has_key?(name)
          new_hash[name] = {}
      end
end
end
end
new_hash
end


