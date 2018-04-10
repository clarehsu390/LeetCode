def object_path(object, path)
  return object[path[0]] if path.length == 1
  key = path[0]
  object_path(object[key], path[1..-1])
end

obj1 = {"a" => {"b" => {"c" => 3}}}
p object_path(obj1, ["a", "b", "c"])
