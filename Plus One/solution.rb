def plus_one(digits)
    return (digits.join.to_i+1).to_s.split("").map(&:to_i)
end
