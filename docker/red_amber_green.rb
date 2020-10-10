
lambda { |stdout,stderr,status|
  output = stdout + stderr
  return :red   if /AssertionError:/.match(output)
  return :green if status === 0
  return :amber
}
