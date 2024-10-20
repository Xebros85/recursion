# Merge Sort


def merge_sort(arr)
  # Empty or Nil
  return [] if arr.nil? || arr.empty?

  # Base Case:
  return arr if arr.length <= 1

  middle = arr.length / 2
  left_half = merge_sort(arr[0...middle])
  right_half = merge_sort(arr[middle..-1])
  
  merge_arr(left_half, right_half)
 
end

def merge_arr(left, right)
  # Merges the array back together  
  sorted = []

  until left.empty? && right.empty?
    if left.empty?
      sorted.concat(right)
      break
    elsif right.empty?
      sorted.concat(left)
      break
    else
      case left[0] <=> right[0]
      when -1
        sorted << left.shift
      when 0
        sorted << left.shift
        sorted << right.shift
      when 1
        sorted << right.shift
      end
    end
  end

  sorted
end



arr1 = [3, 2, 1, 13, 8, 5, 0, 1]
arr2 = [105, 79, 100, 110]

p merge_sort(arr1)
p merge_sort(arr2)
