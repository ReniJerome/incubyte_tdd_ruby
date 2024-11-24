class StringCalculator
  def add(nums)
    arr = process_string_and_get_array(nums)
    negative_nums = []
    if arr.length == 0
      puts "Array is empty. Sum is 0"
      return 0
    end
    puts arr
    sum = 0
    arr.each do |arr_element|
      if(arr_element.to_i < 0)
          negative_nums << arr_element.to_i
      end
      sum = sum + arr_element.to_i
    end
    if(!negative_nums.empty?)
      raise "Negative numbers present"
    end
    puts "Sum is #{sum}"
    rescue => e
    puts "#{e.inspect}"
    puts negative_nums
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

StringCalculator.new.add('//;\n1;;2;6;7;-10,10,-20')
