def nyc_pigeon_organizer(data)
  pigeons = {}
  data.each do |attribute, hash|
    hash.each do |trait, array|
      array.each do |name|
        if !pigeons.has_key?(name)
          pigeons[name] = {}
        end
        if !pigeons[name].has_key?(attribute)
          pigeons[name][attribute] = []
        end
        if !pigeons[name][attribute].include?(trait)
          pigeons[name][attribute] << trait.to_s
        end
      end
    end
  end
  pigeons
end
