require 'pry'
def begins_with_r(tools)
  tools.any? do |x|
  if x.start_with?("r") == false
  return false
  end
  end
  !!tools
end    

def contain_a(array)
   a_array = []
   array.each do |x|
     if x.split("").include?("a") == true
     a_array << x
     end
   end  
   a_array
end   

def first_wa(array)
  array.find do |element|
  (element.class == String) && element.start_with?("wa")
  end
end  

def remove_non_strings(array)
   array.delete_if do |var|
   var.class != String 
   end
  return array
end    

def count_elements(array)
    array.uniq.map do |element|
    element[:count] = array.count(element)
    element
    end 
end  

def merge_data(keys, data)
  merged_data = []     
  keys.each do |keys_hash|
  keys_hash.each do |kname, name_value|
  data.each do |data_hash|
  data_hash.each do |dname, name_hash|
      if name_value == dname
        name_hash[kname] = name_value
        merged_data << name_hash
    end
  end
end
end
end
        merged_data 
end 

def find_cool (hashes)
  hashes.each do |hash|
    hash.each do |name_temp, name_temp_value|
      if name_temp_value == "cool" 
      return [hash]
      end
end
end 
end