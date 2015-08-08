include("util.jl")
srand(0) #to make the tests repeatable

unittests = [
  "parameters",
  "policies",
  "samples",
  "proposals",
  "samplers",
  "chains",
  "models",
  "indicator",
  "runners"]

println("===================")
println("Running unit tests:")
println("===================")

for t in unittests
  tfile = t*".jl"
  println("  * $(tfile) *")
  include(string("unit/",tfile))
  println()
  println()
end
