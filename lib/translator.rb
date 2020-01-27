require 'yaml'
def load_library(file)
  result = {"get_meaning" => {}, "get_emoticon" => {}}
  YAML.load_file(file).each do |meaning, emoticons|
    result["get_meaning"][emoticons[1]] = meaning
    result["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  result
end



def get_japanese_emoticon(file, emoticon)
  library = load_library(file)
  if library["get_emoticon"].include?(emoticon) 
    library["get_emoticon"][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end
  


def get_english_meaning(file, emoticon)
 library = load_library(file)
  if library["get_meaning"].include?(emoticon) 
    library["get_meaning"][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end