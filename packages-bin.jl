using Pkg

function PkgAdd(pkg)
  try
    Pkg.add(pkg)
  catch
    for (exception, backtrace) in Base.catch_stack()
      showerror(stdout, exception, backtrace)
      println()
    end
  end
end

GAP = PackageSpec("GAP")
AbstractAlgebra = PackageSpec("AbstractAlgebra")
Nemo = PackageSpec("Nemo")
Hecke = PackageSpec("Hecke")
Singular = PackageSpec("Singular")
Polymake = PackageSpec("Polymake")
HomalgProject = PackageSpec("HomalgProject")
Oscar = PackageSpec(path="Oscar.jl") # No binary package yet

PkgAdd(GAP)
PkgAdd(AbstractAlgebra)
PkgAdd(Nemo)
PkgAdd(Hecke)
PkgAdd(Singular)
PkgAdd(Polymake)
PkgAdd(HomalgProject)
Pkg.add(Oscar)

try
  Pkg.update()
catch
end
