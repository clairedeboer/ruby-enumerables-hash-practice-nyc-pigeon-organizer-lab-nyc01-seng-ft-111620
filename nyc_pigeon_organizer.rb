def nyc_pigeon_organizer(data)
  data.each_with_object({}) { |(outer_key, value), output| 
  # outer_key == color || gender || lives
    inner_keys = data[outer_key].keys
    #  --> inner_keys
    inner_keys.each { |inner_key| 
      names = data[outer_key][inner_key]
      names.each { |name| 
        if !output[name]
          output[name] = {}
        end
        if !output[name][outer_key]
          output[name][outer_key] = []
        end
        output[name][outer_key].push(inner_key.to_s)
      }
    }
    output
  }
end
