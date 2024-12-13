require 'base64'

s = "Hello there, how are you?"
Digest::Base64.strict_encode64(s)