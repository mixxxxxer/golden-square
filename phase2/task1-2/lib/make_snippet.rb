def make_snippet(str)
  str.split.size <= 5 ? str : str.split[0...5].join(" ") + "..."
end