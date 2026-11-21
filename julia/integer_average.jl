using Printf

function main()
    values = [3, 4]
    total = sum(values)
    count = length(values)
    avg::Float64 = total / count
    @printf("%.1f\n", avg)
end

main()
