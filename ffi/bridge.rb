require 'ffi'

module FFISample
  extend FFI::Library
  ffi_lib File.join(File.dirname(__FILE__), 'libsample.bundle')

  attach_function "add", [ :int, :int ], :int
end
