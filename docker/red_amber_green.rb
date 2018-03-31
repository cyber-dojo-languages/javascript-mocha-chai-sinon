
lambda { |stdout,stderr,status|
  output = stdout + stderr
  js_hint_pattern = /^(\d+) error(s?)/
  return :amber if js_hint_pattern.match(output)
  return :red   if /AssertionError:/.match(output)
  return :amber if /SyntaxError:/.match(output)
  return :amber if /ReferenceError:/.match(output)
  return :amber if /TypeError:/.match(output)
  return :green
}
