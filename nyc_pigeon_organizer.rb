def nyc_pigeon_organizer(array)
  # write your code here!
      pigeon_hash = {}
      array.each do |attribute, list|
           list.each do |secondary, names|
                 secondary = secondary.to_s
               names.each do |name|
                   if !pigeon_hash[name]
                      pigeon_hash[name] = {}
                   end
                   if !pigeon_hash[name][attribute]
                       pigeon_hash[name][attribute] = [secondary]
                   else
                      pigeon_hash[name][attribute] << secondary
                   end
               end
           end
      end
      return pigeon_hash
end
