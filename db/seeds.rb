[
  ["Make a plan to do today"],
  ["Run the first paragraph"],
  ["Rest of the work done"]
].each do |(title)|
  Todo.create! title: title
end