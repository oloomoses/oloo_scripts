require 'json'

def split_to_many_arrays(array, size)
    array.each_slice(size).to_a
end

file_content = File.read('response_version_ids.json')

data = JSON.parse(file_content)

array = data["version_ids"]

puts split_to_many_arrays(array, 300).inspect