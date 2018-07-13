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
   array.map do |x|
     if x.split.include? ("a") == false
       binding.pry
     array.pop(x)
     end
   end  
   array
end   