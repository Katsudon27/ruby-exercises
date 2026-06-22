def contains?(hash, search_value)
  # Write a method that recursively searches for a value in a nested hash.
  # It should return `true` if the object contains that value.
  #
  # Examples:
  # contains?({ foo: { bar: "baz" } }, "baz") # true
  # contains?({ foo: { bar: "baz" } }, "egg") # false
  if !hash.instance_of?(Hash)
    return 
  elsif hash.has_value?(search_value)
    return true
  end

  contains = false 

  hash.each_value do |hashed_value|
    if contains?(hashed_value, search_value) == true
      contains = true
      break
    end
  end

  contains
end
