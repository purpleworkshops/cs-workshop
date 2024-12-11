# Helper library for doing simple test assertions
def assert(expr, msg = nil)
  raise "Assertion failed\n  at #{caller[0]&.sub(/in `.+$/,"")} #{msg}" unless expr
end

def assert_equal(expected, actual)
  assert(expected == actual, "  Expected #{expected} but got #{actual ? actual : 'nil'}")
end

class String
  def colorize(color_code)
    "\e[#{color_code}m#{self}\e[0m"
  end

  def red
    colorize(31)
  end

  def green
    colorize(32)
  end

end