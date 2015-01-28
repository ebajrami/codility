def solution(a)
  a1 = a[0]
  a2 = a[1..a.length].inject(:+)

  minValue = (a1 - a2).abs

  a[1..a.length-1].each do |item|
    a1 += item
    a2 -= item
    possible = (a1 - a2).abs

    minValue = possible if possible < minValue
  end

  minValue
end