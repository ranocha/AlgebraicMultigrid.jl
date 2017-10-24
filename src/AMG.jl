module AMG

import IterativeSolvers: gauss_seidel!
using Base.Threads

include("strength.jl")
export strength_of_connection, Classical, SymmetricStrength

include("splitting.jl")
export split_nodes, RS

include("gallery.jl")
export poisson

include("smoother.jl")
export GaussSeidel, SymmetricSweep, ForwardSweep, BackwardSweep,
        smooth_prolongator, JacobiProlongation

include("multilevel.jl")
export solve

include("classical.jl")
export ruge_stuben

include("aggregate.jl")
export standard_aggregation

include("aggregation.jl")
export fit_candidates

include("preconditioner.jl")
export aspreconditioner

end # module
