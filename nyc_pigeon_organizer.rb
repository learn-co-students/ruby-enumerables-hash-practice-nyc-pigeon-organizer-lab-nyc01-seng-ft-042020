
def nyc_pigeon_organizer (data)
 data_by_name = {}
# loop through the hash. get the outer keys and the outer values. the outer value is another hash.
 data.each do |color_gender_lives,cgl_values|
 #loop through that inner hash and get the keys (colors, genders, where it lives) and the value, which is the array of names
  cgl_values.each do |innerkeys ,names_arr|
#loop through the array of names
names_arr.each do |name|

#if the name doesnt exist in the new array, add it in and assign it to empty hash
if data_by_name[name] == nil
data_by_name[name] = {}
end

#if the category doesnt exist in the new hash, add it in and set it equal to an empty array
if data_by_name[name][color_gender_lives] == nil
data_by_name[name][color_gender_lives] = []

end
data_by_name[name][color_gender_lives].push(innerkeys.to_s)
  end

 end
end
data_by_name
end
