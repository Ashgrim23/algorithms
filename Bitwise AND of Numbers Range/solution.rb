def range_bitwise_and(m, n)
    while (m<n and m!=n) do
        n-=(n & -n)
    end
    return n
end
