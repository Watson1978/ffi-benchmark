require_relative 'ffi/bridge'
require_relative 'native/sample.bundle'
require 'benchmark/ips'

Benchmark.ips do |x|
  x.report('FFI')    { FFISample.add(1, 2) }
  x.report('Native') { NativeSample.add(1, 2) }
end
