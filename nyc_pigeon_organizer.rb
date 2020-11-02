def nyc_pigeon_organizer(data)
  final_results = data.each_with_object({}) do |(key, value), final_object|
    value.each do |inner_key, names|
      names.each do |name|
        if !final_object[name]
          final_object[name] = {}
        end
        if !final_object[name][key]
          !final_object[name][key] = []
        end
        final_object[name][key].push(inner_key.to_s)
      end
    end
  end
end
