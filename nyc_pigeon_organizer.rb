require 'pry'

def nyc_pigeon_organizer(data)
  updated_data = {}
  data.each do |attributes, value_hash|
    value_hash.each do |type, names_array|
      names_array.each do |name|
        updated_data[name] ||= {}
        updated_data[name][attributes] ||= []
        updated_data[name][attributes] << type.to_s
      end
    end
  end
  updated_data
end
