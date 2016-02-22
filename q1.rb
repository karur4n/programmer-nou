done = false
n = 11

def kaibunsuu?(n)
  digit = n.length

  check_count = (digit % 2) == 0 ? digit / 2 : (digit / 2) + 1

  num_arry = n.to_s.chars.map do |t|
    t.to_i
  end

  # 本書では String#reverse が使われているけど、書いたので残しておく
  (0...check_count).each do |i|
    done = num_arry[i] == num_arry[-(i+1)] ? true : false
    return false unless done
  end
  true
end

while(!done) do
  if (kaibunsuu?(n.to_s) && kaibunsuu?(n.to_s(8)) && kaibunsuu?(n.to_s(2)))
    puts "ok: #{n}"
    done = true
  end

  # この場合、
  # 2進数が 0 から始まることはない
  # よって奇数だけを探索する
  n += 2
end

