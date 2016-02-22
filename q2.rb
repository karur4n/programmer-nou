ops = ['+', '-', '*', '/', '']
results = []
(1000..9999).each do |i|
  n = i.to_s
  ops.each do |first_op|
    ops.each do |second_op|
      ops.each do |third_op|
        exp = n[3] + first_op + n[2] + second_op + n[1] + third_op + n[0]
        if (!exp.include?('/0')) && (!exp.match(/0\d/))
          if eval(exp) == i
            if exp.length > 4
              p "#{exp} = #{i}"
            end
          end
        end
      end
    end
  end
end
