### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 4a3c9c50-ad10-4646-88c7-d23ecf539f88
import Pkg

# ╔═╡ fb317baa-1d62-43a0-bdf3-f1d3ae1c45a2
using PlutoUI, ShortCodes

# ╔═╡ e2d9d90e-faba-11ea-2f70-cfe077bf0b02
html"<button onclick=present()>Present</button>"

# ╔═╡ c94ad35a-fad1-11ea-36b2-9f7221bc2e42
Text(sprint(versioninfo))

# ╔═╡ 1fa8b43a-8c4f-424c-855d-f6d0de648775
Text(sprint(io -> Pkg.status(io=io)))

# ╔═╡ f65374ae-faba-11ea-1951-a9729c1f1023
md"# "

# ╔═╡ bf2faff8-faba-11ea-0076-d32d5d26452d
html"""<img src="https://upload.wikimedia.org/wikipedia/commons/1/1f/Julia_Programming_Language_Logo.svg" width=400 />"""

# ╔═╡ 8312c020-fabb-11ea-0237-43c8b54130b2
md"### State-of-the-art Numerical Computing"

# ╔═╡ 9f8cd3f8-90c5-11eb-393f-6de735e6d9c7
md"# Programming Languages
![](https://raw.githubusercontent.com/hellemo/figures_and_data/main/or_timeline/or_timeline.svg)"

# ╔═╡ d6fbd082-90c5-11eb-01b5-db792cb83005
md"# Algorithms vs Hardware
Cumulative performance MILP algorithmic improvements CPLEX/Gurobi estimates vs Moore's law (2x every 18 months)
![](https://raw.githubusercontent.com/hellemo/figures_and_data/main/bixby/bixby.svg)"

# ╔═╡ 311abe34-fabc-11ea-3f0b-51e3c44b3efb
md"# Performance and High Level Code
[https://julialang.org/benchmarks/](https://julialang.org/benchmarks/)"

# ╔═╡ 451707e4-fabc-11ea-399f-a3123e4fefa2
html"""<img src="https://julialang.org/assets/images/benchmarks.svg" width=800 />"""

# ╔═╡ 80973e30-6734-11eb-3562-0fd72f03c79a
md"# Matrix Multiplication | Octavian.jl
[https://github.com/JuliaLinearAlgebra/Octavian.jl/issues/24#issuecomment-766243445](https://github.com/JuliaLinearAlgebra/Octavian.jl/issues/24#issuecomment-766243445)
![](https://user-images.githubusercontent.com/29157027/105636255-ca40a580-5e24-11eb-80a3-6ea280114e91.png)
"

# ╔═╡ 14818ab2-fabe-11ea-20e0-2101e6cd78b8
md"# LU Factorization
[https://discourse.julialang.org/t/ann-recursivefactorization-jl/39213](https://discourse.julialang.org/t/ann-recursivefactorization-jl/39213)"

# ╔═╡ 1d0ee116-fabe-11ea-298e-4f98ecf41f06
html"""<img src="https://global.discourse-cdn.com/business5/uploads/julialang/optimized/3X/f/a/fa295fbe8cc1d421b31f3164b0d49ff986de1492_2_1035x556.png" width=800 />"""

# ╔═╡ a948132a-fabc-11ea-31b2-01e38085b522
md"# JuMP vs Pyomo and GNU Mathprog"

# ╔═╡ 0fd2ba26-fac1-11ea-1364-fddfde058ea1
Twitter(1197546688732389376)

# ╔═╡ c544183a-fac1-11ea-00ce-550c2e86c6c8
md"# Graph/Network Algorithms
[https://www.timlrx.com/2020/05/10/benchmark-of-popular-graph-network-packages-v2/](https://www.timlrx.com/2020/05/10/benchmark-of-popular-graph-network-packages-v2/)"

# ╔═╡ d4804d48-fac1-11ea-30d3-e725b6be78dc
html"""<img src="https://d33wubrfki0l68.cloudfront.net/d5555fa76c7f0b19c71c0d7046b57906f38d628c/a1f43/post/2020-05-10-benchmark-of-popular-graph-network-packages-v2_files/figure-html/ranking-1.png" width="600" />"""

# ╔═╡ fe582f0e-fac0-11ea-25d2-218ed612aee0
md"# CSV parsing
[https://towardsdatascience.com/the-great-csv-showdown-julia-vs-python-vs-r-aa77376fb96](https://towardsdatascience.com/the-great-csv-showdown-julia-vs-python-vs-r-aa77376fb96)"

# ╔═╡ 52f2fe04-fac1-11ea-0efa-83e374131c00
md"![](https://miro.medium.com/max/875/0*0nNfDvP2K0kkY5S2)"

# ╔═╡ 29992d0f-54fd-451d-886d-ff332319fa2a
md"# DataFrames
[https://h2oai.github.io/db-benchmark/](https://h2oai.github.io/db-benchmark/)
![](https://h2oai.github.io/db-benchmark/groupby/G1_1e9_1e2_0_0_basic.png)"

# ╔═╡ 040a6999-b80f-4754-8e90-dcd100537d94
md"# K-Means
[https://discourse.julialang.org/t/ann-parallelkmeans-v1-0-0-kmeans-in-super-sonic-mode/61786](https://discourse.julialang.org/t/ann-parallelkmeans-v1-0-0-kmeans-in-super-sonic-mode/61786)
![](https://aws1.discourse-cdn.com/business5/uploads/julialang/original/3X/f/b/fbad8b1aa6f79a8efc5462aefb309e2444a6cd79.png)"

# ╔═╡ 578ef77a-2d5f-405f-a81e-28a637be73fd
html"""<img src="https://global.discourse-cdn.com/business5/uploads/julialang/optimized/3X/f/b/fbad8b1aa6f79a8efc5462aefb309e2444a6cd79_2_1035x735.png"/>"""

# ╔═╡ b6aae662-094b-11eb-3c13-8d9611bcae96
md"# GPU
[https://juliagpu.org/2020-09-28-gemmkernels/](https://juliagpu.org/2020-09-28-gemmkernels/)
"

# ╔═╡ ededf59c-094b-11eb-39a3-8b69e361f392
md"![](https://juliagpu.org/post/2020-09-28-gemmkernels/mixed_precision.png)"

# ╔═╡ 30440516-d2b8-4c69-a69e-1c3d99481df8
Twitter(1384224176014204929)

# ╔═╡ 57bd353d-2cf3-4b52-aa99-4d449038c53f
md"# Tiff read performance
![](https://user-images.githubusercontent.com/1661487/108654721-21668400-747e-11eb-9113-bf543f3e2f39.png)"

# ╔═╡ 907226d4-fd00-465b-98c2-9c64b4343249
md"# HPC"

# ╔═╡ 5352e87d-16d6-42ef-a5e1-33b65ef90d56
Twitter(1461025057132748801)

# ╔═╡ 16a16598-262f-47fa-884a-0681770b611a
md"# Fast Dynamic Language"

# ╔═╡ 293dd452-7d3a-471d-8f90-a356c12dd56a
YouTube("6JcMuFgnA6U",7,27) # High Performance in Dynamic Languages

# ╔═╡ d89dfe68-90f7-4e7b-b4ec-3f633cb436d9
YouTube("mSgXWpvQEHE", 21, 55)

# ╔═╡ 6735f61d-aa22-473c-b767-1cd67683d0f7
md"# Inlining"

# ╔═╡ c126a33e-69c1-493d-a743-f8d2e5b713b5
Twitter(1440636966639263745)

# ╔═╡ 0630b169-54f7-43e4-8b9c-bb1f18712593
md"# Expressiveness with Multiple Dispatch"

# ╔═╡ 5ba77c93-604d-422d-bb79-2a54306a6c25
YouTube("kc9HwsxE1OY",3,47) # The Unreasonable Effectiveness of Multiple Dispatch

# ╔═╡ 97008336-fabb-11ea-3e1d-bfe14ba19287
md"# In Short"

# ╔═╡ e5bc7ab8-fabb-11ea-2084-9578ee6f6871
Twitter(1271484464447647746)

# ╔═╡ 6c48d730-6735-11eb-1962-2f194669c921
md"# Celeste.jl (PFLOP)"

# ╔═╡ 7c34b894-6735-11eb-3214-f3b7c7549e87
YouTube("uecdcADM3hY", 7, 20)

# ╔═╡ 94140fca-6738-11eb-2afb-89fb36b61f74
md"# Climate Modelling"

# ╔═╡ b126d07c-6736-11eb-3231-0139530367dd
Twitter(1353102345291390979)

# ╔═╡ a63b9bbe-6738-11eb-06ae-c9671581e10a
md"# Oceananigans.jl
[https://github.com/CliMA/Oceananigans.jl](https://github.com/CliMA/Oceananigans.jl)
"

# ╔═╡ bb817d9a-6738-11eb-0c29-3d0ae5d75602
YouTube("kpUrxnKKMjI", 0, 05)

# ╔═╡ 2ce3d4d6-fac3-11ea-0a05-7773282fa8ed
md"# Solvers Written in Julia

* [Alpine.jl](https://github.com/lanl-ansi/Alpine.jl) (Global, MINLP)
* [CBLS.jl](https://github.com/JuliaConstraints/CBLS.jl) (CP)
* [Cerberus.jl](https://github.com/joehuchette/Cerberus.jl) (MILP, Disjunctive)
* [Clarabel.jl](https://github.com/oxfordcontrol/Clarabel.jl) (Conic)
* [ConstraintSolver.jl](https://github.com/Wikunia/ConstraintSolver.jl) (CP)
* [COSMO.jl](https://github.com/oxfordcontrol/COSMO.jl) (convex conic)
* [Evolutionary.jl](https://github.com/wildart/Evolutionary.jl)
* [EAGO.jl](https://github.com/PSORLab/EAGO.jl) (Global, NLP)
* [FirstOrderLP.jl](https://github.com/google-research/FirstOrderLp.jl) (LP, first order)
* [FrankWolfe.jl](https://github.com/ZIB-IOL/FrankWolfe.jl)
* [Hypatia.jl](https://github.com/chriscoey/Hypatia.jl) (generic conic)
* [Juniper.jl](https://github.com/lanl-ansi/Juniper.jl) (Heuristic, MINLP)
* [LightenQP.jl](https://github.com/PharosAbad/LightenQP.jl)
* [Loraine.jl](https://github.com/kocvara/Loraine.jl) (SPD)
* [MadNLP.jl](https://github.com/sshin23/MadNLP.jl) (NLP) 
* [Metaheuristics.jl](https://github.com/jmejia8/Metaheuristics.jl)
* [Nonconvex.jl](https://github.com/mohamed82008/Nonconvex.jl)
* [Optim.jl](https://github.com/JuliaNLSolvers/Optim.jl) (Non-constrained)
* [Pajarito.jl](https://github.com/JuliaOpt/Pajarito.jl) (MICP)
* [SDDP.jl](https://github.com/odow/SDDP.jl) (SP)
* [SeaPearl.jl](https://github.com/corail-research/SeaPearl.jl) (CP)
* [Tulip.jl](https://github.com/ds4dm/Tulip.jl) (LP, interior point)
"

# ╔═╡ d11c6f7e-09a6-11eb-362f-a72a81c66763
md"# Frameworks on top of JuMP

* [AnyMOD.jl](https://github.com/leonardgoeke/AnyMOD.jl)
* [BilevelJuMP.jl](https://github.com/joaquimg/BilevelJuMP.jl)
* [Coluna.jl](https://github.com/atoptima/Coluna.jl) (branch-and-price-and-cut)
* [DisjunctiveProgramming.jl](https://github.com/hdavid16/DisjunctiveProgramming.jl)
* [EnergyModelsX](https://github.com/EnergyModelsX)
* [InfiniteOpt.jl](https://github.com/pulsipher/InfiniteOpt.jl)
* [MultiJuMP.jl](https://github.com/anriseth/MultiJuMP.jl)
* [Plasmo.jl](https://github.com/zavalab/Plasmo.jl) (graph-based algebraic modeling framework)
* [SpineOpt.jl](https://github.com/Spine-project/SpineOpt.jl)
* [StochasticPrograms.jl](https://github.com/martinbiel/StochasticPrograms.jl)
"

# ╔═╡ 4ff0a868-6735-11eb-071d-8302b4345b51
md"# Depth-first nested parallelism"

# ╔═╡ 38ea3c8a-6735-11eb-155e-71aa0584bb57
YouTube("YdiZa0Y3F3c",21,43)

# ╔═╡ 195b88e5-6d05-4573-ba9c-f9d7678c617c
md"# Reproducibility"

# ╔═╡ d4e90d0b-13a9-4c2e-96a9-59cc6d550aaa
md"Using the built-in packet manager in the Pluto notebook:"

# ╔═╡ ed727547-d403-4069-84d0-ee3142ebbf59
with_terminal() do
	Pkg.status()
end

# ╔═╡ 4c8dfc6d-5a86-453c-ba84-88562a562515
md"# Testing"

# ╔═╡ 4ba9aff8-1ba7-4d44-98b9-57a6c9c6f6f0
#with_terminal() do
#	Pkg.test("ShortCodes")
#end

# ╔═╡ a59c6870-3d31-44f7-a9e0-1458eeb024e4
md"# Package Server"

# ╔═╡ 25009a1e-a6e5-424a-a631-8d48fe48ce50
YouTube("xPhnJCAkI4k",12,25)

# ╔═╡ 615d0c86-06cc-495f-b2db-02949b000363
md" # Plotting | Makie.jl"

# ╔═╡ 0ec5f29a-8d76-4978-adfb-dfee32c3c7e1
WebPage("https://makie.org/")

# ╔═╡ c1ecaef8-d0b0-4fa1-af13-f3576297c964
md"# JuMP and MOI"

# ╔═╡ e84c2146-727a-4c70-825b-fe7df14b172b
YouTube("cTmqmPcroFo", 16, 53)

# ╔═╡ 36ec96d0-6303-4158-9185-488677f14016
md"# InfiniteOpt.jl"

# ╔═╡ 755ac813-b5af-422b-b0b3-61e87a5b6294
YouTube("z03Fjvz90os", 9, 00)

# ╔═╡ ffb74be6-5de2-4473-8fc7-77e814c87726
md"# Plasmo.jl & PlasmoAlgorithms.jl
[https://github.com/bbrunaud/PlasmoAlgorithms.jl](https://github.com/bbrunaud/PlasmoAlgorithms.jl)
![](https://raw.githubusercontent.com/bbrunaud/PlasmoAlgorithms.jl/master/doc/Plasmo.png)"

# ╔═╡ 9b1d0f35-2df9-43d2-9e50-43939b326ef1
md"# Happy Coding!"

# ╔═╡ 54f4d8af-4ac6-44a2-8e4c-bc2b0c473463
WebPage("https://julialang.org/downloads/#current_stable_release")

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
Pkg = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
ShortCodes = "f62ebe17-55c5-4640-972f-b59c0dd11ccf"

[compat]
PlutoUI = "~0.7.51"
ShortCodes = "~0.3.5"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.11.0-DEV"
manifest_format = "2.0"
project_hash = "25da01d11f7ec4f8f713807662cb4ee94f470374"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "8eaf9f1b4921132a4cff3f36a1d9ba923b14a481"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.1.4"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"
version = "1.1.1"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.BitFlags]]
git-tree-sha1 = "43b1a4a8f797c1cddadf60499a8a077d4af2cd2d"
uuid = "d1d4a3ce-64b1-5f1a-9ba4-7e7e69966f35"
version = "0.1.7"

[[deps.CodecZlib]]
deps = ["TranscodingStreams", "Zlib_jll"]
git-tree-sha1 = "9c209fb7536406834aa938fb149964b985de6c83"
uuid = "944b1d66-785c-5afd-91f1-9de20f533193"
version = "0.7.1"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "eb7f0f8307f71fac7c606984ea5fb2817275d6e4"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.4"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.0.5+1"

[[deps.ConcurrentUtilities]]
deps = ["Serialization", "Sockets"]
git-tree-sha1 = "96d823b94ba8d187a6d8f0826e731195a74b90e9"
uuid = "f0e56b4a-5159-44fe-b623-3e5288b988bb"
version = "2.2.0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.Downloads]]
deps = ["ArgTools", "FileWatching", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
version = "1.6.0"

[[deps.FileWatching]]
uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[deps.HTTP]]
deps = ["Base64", "CodecZlib", "ConcurrentUtilities", "Dates", "Logging", "LoggingExtras", "MbedTLS", "NetworkOptions", "OpenSSL", "Random", "SimpleBufferStream", "Sockets", "URIs", "UUIDs"]
git-tree-sha1 = "5e77dbf117412d4f164a464d610ee6050cc75272"
uuid = "cd3eb016-35fb-5094-929b-558a96fad6f3"
version = "1.9.6"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "8d511d5b81240fc8e6802386302675bdf47737b9"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.4"

[[deps.HypertextLiteral]]
deps = ["Tricks"]
git-tree-sha1 = "c47c5fa4c5308f27ccaac35504858d8914e102f9"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.4"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "d75853a0bdbfb1ac815478bacd89cd27b550ace6"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.3"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.JLLWrappers]]
deps = ["Preferences"]
git-tree-sha1 = "abc9885a7ca2052a736a600f7fa66209f96506e1"
uuid = "692b3bcd-3c85-4b1f-b108-f13ce0eb3210"
version = "1.4.1"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "31e996f0a15c7b280ba9f76636b3ff9e2ae58c9a"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.4"

[[deps.JSON3]]
deps = ["Dates", "Mmap", "Parsers", "PrecompileTools", "StructTypes", "UUIDs"]
git-tree-sha1 = "5b62d93f2582b09e469b3099d839c2d2ebf5066d"
uuid = "0f8b85d8-7281-11e9-16c2-39a750bddbf1"
version = "1.13.1"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"
version = "0.6.4"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"
version = "8.0.1+1"

[[deps.LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"
version = "1.11.0+1"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "OpenBLAS_jll", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.LoggingExtras]]
deps = ["Dates", "Logging"]
git-tree-sha1 = "cedb76b37bc5a6c702ade66be44f831fa23c681e"
uuid = "e6f89c97-d47a-5376-807f-9c37f3926c36"
version = "1.0.0"

[[deps.MIMEs]]
git-tree-sha1 = "65f28ad4b594aebe22157d6fac869786a255b7eb"
uuid = "6c6e2e6c-3030-632d-7369-2d6c69616d65"
version = "0.1.4"

[[deps.MacroTools]]
deps = ["Markdown", "Random"]
git-tree-sha1 = "42324d08725e200c23d4dfb549e0d5d89dede2d2"
uuid = "1914dd2f-81c6-5fcd-8719-6d5c9610ff09"
version = "0.5.10"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS]]
deps = ["Dates", "MbedTLS_jll", "MozillaCACerts_jll", "Random", "Sockets"]
git-tree-sha1 = "03a9b9718f5682ecb107ac9f7308991db4ce395b"
uuid = "739be429-bea8-5141-9913-cc70e7f3736d"
version = "1.1.7"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"
version = "2.28.2+1"

[[deps.Memoize]]
deps = ["MacroTools"]
git-tree-sha1 = "2b1dfcba103de714d31c033b5dacc2e4a12c7caa"
uuid = "c03570c3-d221-55d1-a50c-7939bbd78826"
version = "0.4.4"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"
version = "2023.1.10"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"
version = "1.2.0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.23+2"

[[deps.OpenSSL]]
deps = ["BitFlags", "Dates", "MozillaCACerts_jll", "OpenSSL_jll", "Sockets"]
git-tree-sha1 = "51901a49222b09e3743c65b8847687ae5fc78eb2"
uuid = "4d8831e6-92b7-49fb-bdf8-b643e874388c"
version = "1.4.1"

[[deps.OpenSSL_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "cae3153c7f6cf3f069a853883fd1919a6e5bab5b"
uuid = "458c3c95-2e84-50aa-8efc-19380b2a3a95"
version = "3.0.9+0"

[[deps.Parsers]]
deps = ["Dates", "PrecompileTools", "UUIDs"]
git-tree-sha1 = "a5aef8d4a6e8d81f171b2bd4be5265b01384c74c"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.5.10"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "FileWatching", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.11.0"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "FixedPointNumbers", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "MIMEs", "Markdown", "Random", "Reexport", "URIs", "UUIDs"]
git-tree-sha1 = "b478a748be27bd2f2c73a7690da219d0844db305"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.51"

[[deps.PrecompileTools]]
deps = ["Preferences"]
git-tree-sha1 = "9673d39decc5feece56ef3940e5dafba15ba0f81"
uuid = "aea7be01-6a6a-4083-8856-8a6e6704d82a"
version = "1.1.2"

[[deps.Preferences]]
deps = ["TOML"]
git-tree-sha1 = "7eb1686b4f04b82f96ed7a4ea5890a4f0c7a09f1"
uuid = "21216c6a-2e73-6563-6e65-726566657250"
version = "1.4.0"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.ShortCodes]]
deps = ["Base64", "CodecZlib", "HTTP", "JSON3", "Memoize", "UUIDs"]
git-tree-sha1 = "95479a28f0bb4ad37ec7c7ece7fdbfc400c643e0"
uuid = "f62ebe17-55c5-4640-972f-b59c0dd11ccf"
version = "0.3.5"

[[deps.SimpleBufferStream]]
git-tree-sha1 = "874e8867b33a00e784c8a7e4b60afe9e037b74e1"
uuid = "777ac1f9-54b0-4bf8-805c-2214025038e7"
version = "1.1.0"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SparseArrays]]
deps = ["Libdl", "LinearAlgebra", "Random", "Serialization", "SuiteSparse_jll"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"
version = "1.10.0"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"
version = "1.9.0"

[[deps.StructTypes]]
deps = ["Dates", "UUIDs"]
git-tree-sha1 = "ca4bccb03acf9faaf4137a9abc1881ed1841aa70"
uuid = "856f2bd8-1eba-4b0a-8007-ebc267875bd4"
version = "1.10.0"

[[deps.SuiteSparse_jll]]
deps = ["Artifacts", "Libdl", "Pkg", "libblastrampoline_jll"]
uuid = "bea87d4a-7f5b-5778-9afe-8cc45184846c"
version = "7.2.0+1"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"
version = "1.0.3"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"
version = "1.10.0"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.TranscodingStreams]]
deps = ["Random", "Test"]
git-tree-sha1 = "9a6ae7ed916312b41236fcef7e0af564ef934769"
uuid = "3bb67fe8-82b1-5028-8e26-92a6c54297fa"
version = "0.9.13"

[[deps.Tricks]]
git-tree-sha1 = "aadb748be58b492045b4f56166b5188aa63ce549"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.7"

[[deps.URIs]]
git-tree-sha1 = "074f993b0ca030848b897beff716d93aca60f06a"
uuid = "5c2747f8-b7ea-4ff2-ba2e-563bfd36b1d4"
version = "1.4.2"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"
version = "1.2.13+1"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.8.0+1"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"
version = "1.52.0+1"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
version = "17.4.0+2"
"""

# ╔═╡ Cell order:
# ╟─e2d9d90e-faba-11ea-2f70-cfe077bf0b02
# ╠═fb317baa-1d62-43a0-bdf3-f1d3ae1c45a2
# ╠═4a3c9c50-ad10-4646-88c7-d23ecf539f88
# ╠═c94ad35a-fad1-11ea-36b2-9f7221bc2e42
# ╠═1fa8b43a-8c4f-424c-855d-f6d0de648775
# ╟─f65374ae-faba-11ea-1951-a9729c1f1023
# ╟─bf2faff8-faba-11ea-0076-d32d5d26452d
# ╟─8312c020-fabb-11ea-0237-43c8b54130b2
# ╟─9f8cd3f8-90c5-11eb-393f-6de735e6d9c7
# ╟─d6fbd082-90c5-11eb-01b5-db792cb83005
# ╟─311abe34-fabc-11ea-3f0b-51e3c44b3efb
# ╟─451707e4-fabc-11ea-399f-a3123e4fefa2
# ╟─80973e30-6734-11eb-3562-0fd72f03c79a
# ╟─14818ab2-fabe-11ea-20e0-2101e6cd78b8
# ╟─1d0ee116-fabe-11ea-298e-4f98ecf41f06
# ╟─a948132a-fabc-11ea-31b2-01e38085b522
# ╠═0fd2ba26-fac1-11ea-1364-fddfde058ea1
# ╟─c544183a-fac1-11ea-00ce-550c2e86c6c8
# ╟─d4804d48-fac1-11ea-30d3-e725b6be78dc
# ╟─fe582f0e-fac0-11ea-25d2-218ed612aee0
# ╟─52f2fe04-fac1-11ea-0efa-83e374131c00
# ╟─29992d0f-54fd-451d-886d-ff332319fa2a
# ╟─040a6999-b80f-4754-8e90-dcd100537d94
# ╟─578ef77a-2d5f-405f-a81e-28a637be73fd
# ╠═b6aae662-094b-11eb-3c13-8d9611bcae96
# ╟─ededf59c-094b-11eb-39a3-8b69e361f392
# ╠═30440516-d2b8-4c69-a69e-1c3d99481df8
# ╟─57bd353d-2cf3-4b52-aa99-4d449038c53f
# ╟─907226d4-fd00-465b-98c2-9c64b4343249
# ╟─5352e87d-16d6-42ef-a5e1-33b65ef90d56
# ╟─16a16598-262f-47fa-884a-0681770b611a
# ╠═293dd452-7d3a-471d-8f90-a356c12dd56a
# ╠═d89dfe68-90f7-4e7b-b4ec-3f633cb436d9
# ╟─6735f61d-aa22-473c-b767-1cd67683d0f7
# ╠═c126a33e-69c1-493d-a743-f8d2e5b713b5
# ╟─0630b169-54f7-43e4-8b9c-bb1f18712593
# ╠═5ba77c93-604d-422d-bb79-2a54306a6c25
# ╟─97008336-fabb-11ea-3e1d-bfe14ba19287
# ╠═e5bc7ab8-fabb-11ea-2084-9578ee6f6871
# ╟─6c48d730-6735-11eb-1962-2f194669c921
# ╠═7c34b894-6735-11eb-3214-f3b7c7549e87
# ╟─94140fca-6738-11eb-2afb-89fb36b61f74
# ╠═b126d07c-6736-11eb-3231-0139530367dd
# ╟─a63b9bbe-6738-11eb-06ae-c9671581e10a
# ╠═bb817d9a-6738-11eb-0c29-3d0ae5d75602
# ╟─2ce3d4d6-fac3-11ea-0a05-7773282fa8ed
# ╟─d11c6f7e-09a6-11eb-362f-a72a81c66763
# ╟─4ff0a868-6735-11eb-071d-8302b4345b51
# ╠═38ea3c8a-6735-11eb-155e-71aa0584bb57
# ╟─195b88e5-6d05-4573-ba9c-f9d7678c617c
# ╟─d4e90d0b-13a9-4c2e-96a9-59cc6d550aaa
# ╠═ed727547-d403-4069-84d0-ee3142ebbf59
# ╟─4c8dfc6d-5a86-453c-ba84-88562a562515
# ╠═4ba9aff8-1ba7-4d44-98b9-57a6c9c6f6f0
# ╟─a59c6870-3d31-44f7-a9e0-1458eeb024e4
# ╠═25009a1e-a6e5-424a-a631-8d48fe48ce50
# ╟─615d0c86-06cc-495f-b2db-02949b000363
# ╠═0ec5f29a-8d76-4978-adfb-dfee32c3c7e1
# ╟─c1ecaef8-d0b0-4fa1-af13-f3576297c964
# ╠═e84c2146-727a-4c70-825b-fe7df14b172b
# ╟─36ec96d0-6303-4158-9185-488677f14016
# ╠═755ac813-b5af-422b-b0b3-61e87a5b6294
# ╟─ffb74be6-5de2-4473-8fc7-77e814c87726
# ╟─9b1d0f35-2df9-43d2-9e50-43939b326ef1
# ╠═54f4d8af-4ac6-44a2-8e4c-bc2b0c473463
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
