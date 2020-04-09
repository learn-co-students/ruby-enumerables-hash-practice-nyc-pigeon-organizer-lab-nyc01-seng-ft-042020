def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |trait, hash|
    hash.each do |characteristic, array|
      array.each do |name|
        if !new_hash.has_key?(name)
          new_hash[name] = {}
        end
        if !new_hash[name].has_key?(trait)
          new_hash[name][trait] = []
        end
        if !new_hash[name][trait].include?(characteristic)
          new_hash[name][trait] << characteristic.to_s
        end
      end
    end
  end
  new_hash
end
