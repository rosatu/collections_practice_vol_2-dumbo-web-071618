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
 array.uniq 
 binding.pry
  array.each do |element|
    new_array << array.count(element)
    end 
  end  
end  