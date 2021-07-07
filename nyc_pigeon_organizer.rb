def nyc_pigeon_organizer(data)
new_hash = {}
data.each do |bird , value|
  value.each do |section,array|
    array.each do |name|
       if !new_hash.has_key?(name)
          new_hash[name] = {}
        end
        if !new_hash[name].has_key?(bird)
     new_hash[name][bird]= []
   end
   if !new_hash[name][bird].include?(section)
     new_hash[name][bird].push(section.to_s)
   end
end
end
end
new_hash
end



