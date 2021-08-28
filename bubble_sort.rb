def bubble_sort(arr)
  sorted = true
  loop do
    sorted=true
    for i in 0..arr.size-1
      if(i!=arr.size-1 && (arr[i]>arr[i+1]))
        arr[i],arr[i+1] = arr[i+1], arr[i]
        sorted=false
      end
    end
    break if sorted == true
  end
  arr
end

p bubble_sort([4,3,78,2,0,2])
p bubble_sort([10,9,8,7,6,5,4,3,2,1])

