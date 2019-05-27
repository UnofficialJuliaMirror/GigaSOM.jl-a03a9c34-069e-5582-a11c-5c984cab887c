"""
Main module for `GigaSOM.jl` - Huge-scale, high-performance flow cytometry clustering

The documentation is here: http://LCSB-BioCore.github.io/GigaSOM.jl

"""

module GigaSOM

    using CSV
    using DataFrames
    using Distances
    using Distributed
    using DistributedArrays
    using Distributions
    using FileIO
    using FCSFiles
    using JuliaInterpreter
    using LinearAlgebra
    using MultivariateStats
    using ProgressMeter
    using SOM
    using StatsBase
    using StatsPlots
    using Statistics
    using TensorToolbox

    include("batch_som.jl")
    include("parallel_som.jl")

    # include IO files
    include("io/Fcs_helper.jl")

    # include visualization files
    include("visualization/Plotting.jl")

    export # Fcs_helper
        cleannames!,
        readflowset,
        create_daFrame,
        getMarkers,
        daFrame

    export # Plotting
        plotcounts,
        plotPCA

end # module
