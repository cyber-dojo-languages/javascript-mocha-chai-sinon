
lambda { |stdout,stderr,status|
  output = stdout + stderr
  error_pattern = /(\d+) errors?/
  if error_pattern.match(output)
    return :amber
  end
  return :red   if /AssertionError:/.match(output)
  return :amber if /SyntaxError:/.match(output)
  return :amber if /ReferenceError:/.match(output)
  return :amber if /TypeError:/.match(output)
  return :green
}
