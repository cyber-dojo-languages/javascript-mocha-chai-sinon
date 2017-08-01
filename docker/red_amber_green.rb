
lambda { |stdout,stderr,status|
  output = stdout + stderr
  return :red   if /AssertionError:/.match(output)
  return :amber if /SyntaxError:/.match(output)
  return :amber if /ReferenceError:/.match(output)
  return :amber if /TypeError:/.match(output)
  return :green
}
