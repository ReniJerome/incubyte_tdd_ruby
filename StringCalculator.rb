class StringCalculator
  def add(nums)
    arr = process_string_and_get_array(nums)
    if arr.length == 0
      puts "Array is empty. Sum is 0"
      return 0
    end
    puts arr
    sum = 0
    arr.each do |arr_element|
      sum = sum + arr_element.to_i
    end
    puts "Sum is #{sum}"
  end
  
  def process_string_and_get_array(nums)
    delimiter = ',';
    if nums.start_with?("//")
      delimiter = nums[2]
      puts delimiter
    end
    
    array = nums.split(/\s*([,#{delimiter}\\n]+|\s\s)\s*/)
    array
  end
  
end

StringCalculator.new.add(''1\n2\n\n3')
