def nyc_pigeon_organizer(data)
  # write your code here!
  data_hash = {}
  data.each do |attribute, hash|
    hash.each do |value, array|
      array. each do |name|
        if !data_hash.has_key?(name)
          data_hash[name] = {}
        end
        if !data_hash[name].has_key?(attribute)
          data_hash[name][attribute] = []
        end
        if !data_hash[name][attribute].include?(value)
          data_hash[name][attribute] << value.to_s
        end
      end
    end
  end
  data_hash
end