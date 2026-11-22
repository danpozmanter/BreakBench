import Foundation

func job() async {
    Thread.sleep(forTimeInterval: 0.5) // CONTROL! try? await Task.sleep(for: .milliseconds(500))
}

let start = ContinuousClock.now
async let a: Void = job()
async let b: Void = job()
_ = await (a, b)
print(ContinuousClock.now - start < .milliseconds(800) ? "concurrent" : "serial")
