def rke(arr)
  indices = arr.size.times.to_a
  indices.sort_by! {|i| arr[i]}
  indices.map {|i| indices[i]+1}
end