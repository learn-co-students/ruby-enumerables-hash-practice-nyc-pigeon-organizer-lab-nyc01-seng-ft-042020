def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |k, v|
    # p value
    v.each do |value, names|
      #p value
      names.each do |name|
      # p names
        if !new_hash[name]
          new_hash[name] = {}
        end
        if !new_hash[name][k]
          new_hash[name][k] = []
        end

        new_hash[name][k] << value.to_s

      end
    end
  end
  new_hash
end
