require 'test/unit'

def parts_sums(ls)
  if ls.count == 0
    return [0]
  end
  sum_array = [ls.reduce(0, :+)]
  sum_array.concat(parts_sums(ls.count > 0 ? ls[1, ls.count - 1] : []))
  sum_array
end


print parts_sums [1, 2, 3, 4, 5, 6]

