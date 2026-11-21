def main():
    var values: List[Int] = [3, 4]
    var sum = values[0] + values[1]
    var count = len(values)
    var avg: Float64 = sum / count  # BREAK!
    # CONTROL! var avg: Float64 = Float64(sum) / Float64(count)
    print(round(avg, 1))
