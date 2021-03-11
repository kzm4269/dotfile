function conky_format(format, arg)
  return string.format(format, conky_parse(arg))
end
