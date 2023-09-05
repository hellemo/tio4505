### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local iv = try Base.loaded_modules[Base.PkgId(Base.UUID("6e696c72-6542-2067-7265-42206c756150"), "AbstractPlutoDingetjes")].Bonds.initial_value catch; b -> missing; end
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : iv(el)
        el
    end
end

# ╔═╡ 32744386-8fba-4d25-823d-b70ad8895ab4
using PlutoUI, ShortCodes

# ╔═╡ 95ba703d-9ec5-4cf5-8140-685aa0c9a29b
using QRCoders

# ╔═╡ e18095f0-a0e3-4014-9a56-0448ebe2d2ac
using Colors

# ╔═╡ d151da95-66cc-4c40-8114-1b8f8cd399cd
using LinearAlgebra

# ╔═╡ f2f17dfb-3a8e-4e37-ad79-d573b01a1c34
using AbstractTrees

# ╔═╡ 772de7b2-48d8-11ee-36b4-8b22efbd59c1
html"<button onclick=present()>Present</button>"

# ╔═╡ ff9a7246-6380-474c-bb9c-e6e2d6c43d24
html"""<img src="https://upload.wikimedia.org/wikipedia/commons/1/1f/Julia_Programming_Language_Logo.svg" width=400 />"""

# ╔═╡ 5d61fd36-dde1-4ba0-82b0-9bc3e5067d28
QRCode("https://github.com/JuliaLang/juliaup", version=4, width=4)

# ╔═╡ f442130c-5917-4674-a025-faeb06d8124c
html"""<img src="https://julialang.org/assets/images/benchmarks.svg" width=800 />"""

# ╔═╡ ffe58516-0914-4271-b76c-52dc20185431
YouTube("uecdcADM3hY", 8, 42)

# ╔═╡ 8fd832f5-9770-4134-8409-8b20a9088600
YouTube("xk-SIRH3sbE", 6, 43)

# ╔═╡ ce2be1c0-338e-4f58-9df0-111e743f5d45
YouTube("6JcMuFgnA6U",7,27) # High Performance in Dynamic Languages

# ╔═╡ 561fbab4-2780-413c-a280-6ce1ffb554ef
YouTube("kc9HwsxE1OY",3,47) # The Unreasonable Effectiveness of Multiple Dispatch

# ╔═╡ cb1685fa-9813-4b00-9e03-40ffd20a7cd8
2+2 # Calculation

# ╔═╡ 8ff39756-b5b1-4471-ac6f-434396a7b1bb
typeof(f(1))

# ╔═╡ c5cd45c5-6acc-448e-889f-6966aeccd880
typeof.([1, 1.0, "Hei", 1//2, π])

# ╔═╡ 9dbf7f36-46d6-4ad4-8cbf-6ce438eb04a0
[RGB(r, 0, 0) for r ∈ 0:0.1:1]

# ╔═╡ 5689831e-7620-428e-8d84-31dec4a9c4a4
@bind gran PlutoUI.Scrubbable(0.5)

# ╔═╡ a175b64f-ca73-4a22-862c-12f9bff88ec4
[RGB(r, 0, b) for r ∈ 0:gran:1, b ∈ 0:gran:1]

# ╔═╡ 6c668d28-5253-4d90-a589-f9f435e164b4
gran

# ╔═╡ 01ed0700-fde2-4b09-ac66-0b06bab74fe9
# f(x::String) = "Hello, $x"

# ╔═╡ b0e8213a-e265-4500-82a2-a8f0c163100b
greet(x, y) = "$x greets $y"

# ╔═╡ 823a8149-ba45-4266-a908-c6f7bc58102f
struct Person
	name::String
end

# ╔═╡ 87af3efa-6e9a-452b-a539-3f05982dac21
begin
	alice = Person("Alice")
	bob = Person("Bob")
end

# ╔═╡ f74a3055-1ce6-442f-83b9-48d87348ef57
# greet(x::Person, y::Person) = "$(x.name) hugs $(y.name)"

# ╔═╡ a53c2fae-6362-45b4-a4a8-57e91f0c0017
begin
	abstract type Animal end

	struct Cat <: Animal
    	name::String
	end
	
	struct Dog <: Animal
		name::String
	end
end

# ╔═╡ 96d904ad-b9e3-42b5-85da-47ec2635e0e9
greet(x::Person, y::Animal) = "$(x.name) pats $(y.name)"

# ╔═╡ 4f732815-bb9d-40f6-953e-c10a8543c850
greet(x::Cat, y::Person) = "$(x.name) meows at $(y.name)"

# ╔═╡ faa9e48f-f53c-4d45-8dac-bd33a9a9bef9
greet(x::Cat, y) = "$(x.name) carries on"

# ╔═╡ 2ca97a75-b670-4b62-8993-096d7b6d1ce6
struct Car end

# ╔═╡ 97866b26-b104-4f72-9147-f598851922e9
greet(x::Car, y) = "Car honks!"

# ╔═╡ 25df6f5f-ab96-4818-a4b5-dc430c5f9f91
greet("Alice","Bob")

# ╔═╡ abdb368c-4e2a-4379-91a8-fa45d75af14a
greet(alice, bob)

# ╔═╡ 2c24963c-3397-4a7c-98ff-d8cdeec15e80
greet(alice, Cat("Spot"))

# ╔═╡ 85adbe68-65ac-4fa7-b631-886a1f2e010a
greet(Cat("Spot"), bob)

# ╔═╡ 5db13ea2-571f-4d6d-bece-be954a060247
[greet(Car(), y) for y in [Cat("Spot"), Dog("Rex"), Person("Lisa")]]

# ╔═╡ 7b7a4edb-a2a6-467d-9288-3b93d4179292
begin
	abstract type Shape end
	struct 👊 <: Shape end
	struct ✌️ <: Shape end
	struct 👋 <: Shape end
	play(::Type{👋}, ::Type{👊}) = "👋 wins"
	play(::Type{👋}, ::Type{✌️}) = "✌️ wins"
	play(::Type{👊}, ::Type{✌️}) = "👊 wins"
	play(::Type{T}, ::Type{T}) where {T <: Shape} = "Tie, try again"
	play(a::Type{<:Shape}, b::Type{<:Shape}) = play(b, a) # Commutativity
end

# ╔═╡ 1b111bd1-629a-4381-b878-da69fd8f7af7
play(👋, 👊)

# ╔═╡ b198868b-fc7f-4326-9665-cd1e48d0b1f8
play(👊,👊)

# ╔═╡ 740e8d5d-2763-45d6-93b9-0eda5de52394
play(✌️, 👋)

# ╔═╡ 0466dc8e-81b3-4749-a6bb-b83a29220d40
play(rand([👋, 👊, ✌️]), 
	 rand([👋, 👊, ✌️]))

# ╔═╡ 3e7db536-ca29-4eaa-935b-98815fce09aa
A = rand(3, 3)

# ╔═╡ 95561ef9-9651-4e51-844b-5732c645f816
vs = [rand(3) for _ = 1:4]

# ╔═╡ 190f3004-c311-41bc-beaf-9dab4c9f281d
import Base: size, getindex, *

# ╔═╡ 50b5ec1c-f335-4ff7-8b17-bd4938c450f0
f(x) = 5x + 10 # functions (short form)

# ╔═╡ e9461298-e232-4649-bbfb-dbf0206fee0e
f(1.0)

# ╔═╡ 3063902d-e5f3-4317-8e9f-c134286202dc
f(1)

# ╔═╡ 04aded3e-fda8-4be3-aec5-d6f9c782ecf7
with_terminal() do
	 @code_llvm dump_module=false f(1)
end

# ╔═╡ b1900ac8-8da0-4ded-9f51-240d7aaabbd6
f("NTNU")

# ╔═╡ b0c4fb7c-71a4-4b64-a82d-412cef77ee25
methods(f)

# ╔═╡ 3eb1454b-1829-443d-88b3-d3218b82c9ca
inner(v, A, w) = dot(v, A * w)

# ╔═╡ a98deb16-4131-46c4-9b6b-09fd8124665e
function inner_sum(A, vs)
	t = zero(eltype(A))		# Generic code
	for v ∈ vs
		t += inner(v, A, v) # Multiple dispatch
	end
	return t
end

# ╔═╡ 77e70bf8-8d82-453f-9284-c910af03cff3
inner_sum(A, vs)

# ╔═╡ 2660788d-083b-45d0-bde9-e30c89f014ad
A*[1,0, 0]

# ╔═╡ 19cc28c9-37b5-4e69-89db-fdfb3540a1f6
struct OneHotVector <: AbstractVector{Bool}
	len::Int
	ind::Int
end

# ╔═╡ 61f66f58-84a9-4cdb-8237-39393b2c57ee
Base.getindex(v::OneHotVector, i::Integer) = i == v.ind

# ╔═╡ cdf238a2-57c2-4876-baf1-7449b9432ccd
md"# "

# ╔═╡ ef39b3e6-3f4c-4646-92ad-06b743f50ef6
md"### Optimization with Julia and JuMP"

# ╔═╡ 3cae7fa0-67b4-4665-94d7-a4a78d993a6b
md"# Why can Julia be useful for TIØ 4505?
* High-level programming with excellent performance
* Input/output processing
* Solver-agnostic modelling
* Simulations (high performance)
* Custom solution methods
* Advanced modelling
   - Bilevel programming
   - Non-linear modelling
   - Complementarity programs
"

# ╔═╡ 68db2722-a8f8-409a-af2f-d8b474e0d1e4
md"# Agenda
* About Julia (9:15-10:00)
   - examples of performant codes
   - what makes Julia fast
   - multiple dispatch
* JuMP (10:15-11:00)
   - basics with example
   - complementarity, multiobjective, (Benders)
* Examples from our work (11:15-12:00)
   - PiecewiseAffineApprox
   - CleanExport
   - Sirkulær masseforvaltning
     - UnitJuMP, (SparseVariables)

"

# ╔═╡ a3b74018-d431-4937-8653-5f3ad44c6464
md"# Follow along
* Install julia using juliaup
* Notebooks using Pluto
```julia
add Pluto
Pluto.run()
```
* Download notebooks here:"

# ╔═╡ afcace32-fd86-45b2-a807-9acc06d86cda
md"# Performance and High Level Code
[https://julialang.org/benchmarks/](https://julialang.org/benchmarks/)
"

# ╔═╡ c2aedd05-7cd7-45c6-9a39-6be942971ca9
md"# Matrix Multiplication | Octavian.jl
[https://github.com/JuliaLinearAlgebra/Octavian.jl/issues/24#issuecomment-766243445](https://github.com/JuliaLinearAlgebra/Octavian.jl/issues/24#issuecomment-766243445)
![](https://user-images.githubusercontent.com/29157027/105636255-ca40a580-5e24-11eb-80a3-6ea280114e91.png)
"

# ╔═╡ 365c1e5c-5e34-47d2-94fc-df25876d5a03
md"# Celeste: Julia joined the Petaflops club"

# ╔═╡ 06871e27-8047-4883-a5db-7cda1007e5a1
md"# Comrade: High-Performance Black Hole Imaging"

# ╔═╡ 6ff7c81c-01f7-48ba-b261-5e1acdb7e92f
md"# Fast Dynamic Language"

# ╔═╡ 5380e87d-db20-47a7-91eb-83e6e02ebde5
md"# Expressiveness with Multiple Dispatch"

# ╔═╡ 5cc96a71-b58a-4a1e-9a33-ac489dc96add
md" # A taste of Julia"

# ╔═╡ 84a5f074-025b-4f03-ab4b-54c8b4538fab
md"# Multiple Dispatch (Pets)"

# ╔═╡ bc99e32b-1d91-4221-acc6-d43f6c03dee5
md"# 👊, ✌️, 👋
Adapted from [https://giordano.github.io/blog/2017-11-03-rock-paper-scissors/](https://giordano.github.io/blog/2017-11-03-rock-paper-scissors/)"

# ╔═╡ ea4ee59e-9593-4200-9020-35f39c3ff22c
md"# Multiple Dispatch (Linear Algebra)"

# ╔═╡ c68bbcb4-b6e7-45d7-9895-c4e44cfc30d8
md"## Custom type: OneHotVector"

# ╔═╡ 9d1cac9e-0c95-4895-8d4f-c9b216eb3070
Base.size(v::OneHotVector) = (v.len,)

# ╔═╡ 609e0033-6227-4301-845e-47c0b9792232
OneHotVector(3,3).*1

# ╔═╡ 3c48c086-7387-4ea8-9c4b-e9cad728c754
vs₁ = [OneHotVector(3, rand(1:3)) for _ = 1:4]

# ╔═╡ 94062736-00ec-4c63-94ae-e4664080f512
inner_sum(A,vs₁)

# ╔═╡ 3c335469-ca67-498a-bc97-c81baa39605b
A

# ╔═╡ 3a82a6b4-4cfd-4387-a7c3-e0c94ea17db7
dot([1,0,0], A*[0,1,0]) # Corresponds to selecting col/row from A

# ╔═╡ 71b027b1-4a28-4dfa-99eb-3b030b7f091d
md"Multiple dispatch in action: dispatch on both first and third argument:"

# ╔═╡ 58734a5a-54ad-4a1b-bf78-c02ebf1912b3
# inner(v::OneHotVector, A, w::OneHotVector) = A[v.ind, w.ind]

# ╔═╡ aca4c163-2cd8-4681-baad-e55649dd55a4
inner_sum(A,vs₁)

# ╔═╡ 4dbe7c99-303b-4566-8f37-9996fd808b41
@elapsed inner_sum(A, vs₁)

# ╔═╡ 107217df-3a44-4cdb-856c-75157a29310d
@allocated inner_sum(A, vs₁)

# ╔═╡ 68e70424-ad85-44c9-b43f-65ac590ad458
B = [1//1 1//2 1//3
	 1//3 1//2 1//4
	 1//1 1//2 1//5]

# ╔═╡ 730798bc-0f8f-497a-ab13-022754589272
md" Dispatch on type of second argument as well:"

# ╔═╡ a010c5f9-ffc2-4f00-9025-9a973967894e
inner_sum(B,vs₁)

# ╔═╡ da6a5a59-4a8d-4160-9212-b026e1d8ee6c
@elapsed inner_sum(B,vs₁)

# ╔═╡ f03edb48-f172-420a-9ffa-5212f3fc3735
@allocated inner_sum(B,vs₁)

# ╔═╡ f153efd8-60b8-46a0-b544-5fbdba69eabd
md"# Happy Hacking"

# ╔═╡ e7a0820e-8cc5-4f46-956e-3daf04abeaeb
WebPage("https://julialang.org/downloads/#current_stable_release")

# ╔═╡ 4d411052-0e76-4739-80f2-a140804236ba
AbstractTrees.children(x::Type) = subtypes(x)

# ╔═╡ 1dee2129-6549-46e7-85c6-3e5c94a933bb
function print_typetree(T)
	vi = io = IOBuffer(UInt8[], read=true, write=true, maxsize=10_000)
	print_tree(vi,T)
	s = String(take!(vi))
	Base.Text(s)
end;

# ╔═╡ 7d853f9d-ed61-4829-8585-69f853231b5f
print_typetree(Integer)

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
AbstractTrees = "1520ce14-60c1-5f80-bbc7-55ef81b5835c"
Colors = "5ae59095-9a9b-59fe-a467-6f913c188581"
LinearAlgebra = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
QRCoders = "f42e9828-16f3-11ed-2883-9126170b272d"
ShortCodes = "f62ebe17-55c5-4640-972f-b59c0dd11ccf"

[compat]
AbstractTrees = "~0.4.4"
Colors = "~0.12.10"
PlutoUI = "~0.7.52"
QRCoders = "~1.4.5"
ShortCodes = "~0.3.5"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.9.3"
manifest_format = "2.0"
project_hash = "3e21f045557f5831ed643b9c4f72a823a9b3ef2f"

[[deps.AbstractFFTs]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "d92ad398961a3ed262d8bf04a1a2b8340f915fef"
uuid = "621f4979-c628-5d54-868e-fcf4e3e8185c"
version = "1.5.0"

    [deps.AbstractFFTs.extensions]
    AbstractFFTsChainRulesCoreExt = "ChainRulesCore"
    AbstractFFTsTestExt = "Test"

    [deps.AbstractFFTs.weakdeps]
    ChainRulesCore = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"
    Test = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "91bd53c39b9cbfb5ef4b015e8b582d344532bd0a"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.2.0"

[[deps.AbstractTrees]]
git-tree-sha1 = "faa260e4cb5aba097a73fab382dd4b5819d8ec8c"
uuid = "1520ce14-60c1-5f80-bbc7-55ef81b5835c"
version = "0.4.4"

[[deps.Adapt]]
deps = ["LinearAlgebra", "Requires"]
git-tree-sha1 = "76289dc51920fdc6e0013c872ba9551d54961c24"
uuid = "79e6a3ab-5dfb-504d-930d-738a2a938a0e"
version = "3.6.2"
weakdeps = ["StaticArrays"]

    [deps.Adapt.extensions]
    AdaptStaticArraysExt = "StaticArrays"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"
version = "1.1.1"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.AxisArrays]]
deps = ["Dates", "IntervalSets", "IterTools", "RangeArrays"]
git-tree-sha1 = "16351be62963a67ac4083f748fdb3cca58bfd52f"
uuid = "39de3d68-74b9-583c-8d2d-e117c070f3a9"
version = "0.4.7"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.BitFlags]]
git-tree-sha1 = "43b1a4a8f797c1cddadf60499a8a077d4af2cd2d"
uuid = "d1d4a3ce-64b1-5f1a-9ba4-7e7e69966f35"
version = "0.1.7"

[[deps.Bzip2_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "19a35467a82e236ff51bc17a3a44b69ef35185a2"
uuid = "6e34b625-4abd-537c-b88f-471c36dfa7a0"
version = "1.0.8+0"

[[deps.CEnum]]
git-tree-sha1 = "eb4cb44a499229b3b8426dcfb5dd85333951ff90"
uuid = "fa961155-64e5-5f13-b03f-caf6b980ea82"
version = "0.4.2"

[[deps.CodecZlib]]
deps = ["TranscodingStreams", "Zlib_jll"]
git-tree-sha1 = "02aa26a4cf76381be7f66e020a3eddeb27b0a092"
uuid = "944b1d66-785c-5afd-91f1-9de20f533193"
version = "0.7.2"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "eb7f0f8307f71fac7c606984ea5fb2817275d6e4"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.4"

[[deps.ColorVectorSpace]]
deps = ["ColorTypes", "FixedPointNumbers", "LinearAlgebra", "SpecialFunctions", "Statistics", "TensorCore"]
git-tree-sha1 = "600cc5508d66b78aae350f7accdb58763ac18589"
uuid = "c3611d14-8923-5661-9e6a-0046d554d3a4"
version = "0.9.10"

[[deps.Colors]]
deps = ["ColorTypes", "FixedPointNumbers", "Reexport"]
git-tree-sha1 = "fc08e5930ee9a4e03f84bfb5211cb54e7769758a"
uuid = "5ae59095-9a9b-59fe-a467-6f913c188581"
version = "0.12.10"

[[deps.Compat]]
deps = ["UUIDs"]
git-tree-sha1 = "e460f044ca8b99be31d35fe54fc33a5c33dd8ed7"
uuid = "34da2185-b29b-5c13-b0c7-acf172513d20"
version = "4.9.0"
weakdeps = ["Dates", "LinearAlgebra"]

    [deps.Compat.extensions]
    CompatLinearAlgebraExt = "LinearAlgebra"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.0.5+0"

[[deps.ConcurrentUtilities]]
deps = ["Serialization", "Sockets"]
git-tree-sha1 = "5372dbbf8f0bdb8c700db5367132925c0771ef7e"
uuid = "f0e56b4a-5159-44fe-b623-3e5288b988bb"
version = "2.2.1"

[[deps.Contour]]
deps = ["StaticArrays"]
git-tree-sha1 = "9f02045d934dc030edad45944ea80dbd1f0ebea7"
uuid = "d38c429a-6771-53c6-b99e-75d170b6e991"
version = "0.5.7"

[[deps.Crayons]]
git-tree-sha1 = "249fe38abf76d48563e2f4556bebd215aa317e15"
uuid = "a8cc5b0e-0ffa-5ad4-8c14-923d3ee1735f"
version = "4.1.1"

[[deps.DataAPI]]
git-tree-sha1 = "8da84edb865b0b5b0100c0666a9bc9a0b71c553c"
uuid = "9a962f9c-6df0-11e9-0e5d-c546b8b5ee8a"
version = "1.15.0"

[[deps.DataStructures]]
deps = ["Compat", "InteractiveUtils", "OrderedCollections"]
git-tree-sha1 = "3dbd312d370723b6bb43ba9d02fc36abade4518d"
uuid = "864edb3b-99cc-5e75-8d2d-829cb0a9cfe8"
version = "0.18.15"

[[deps.DataValueInterfaces]]
git-tree-sha1 = "bfc1187b79289637fa0ef6d4436ebdfe6905cbd6"
uuid = "e2d170a0-9d28-54be-80f0-106bbe20a464"
version = "1.0.0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.Distributed]]
deps = ["Random", "Serialization", "Sockets"]
uuid = "8ba89e20-285c-5b6f-9357-94700520ee1b"

[[deps.DocStringExtensions]]
deps = ["LibGit2"]
git-tree-sha1 = "2fb1e02f2b635d0845df5d7c167fec4dd739b00d"
uuid = "ffbed154-4ef7-542d-bbb7-c09d3a79fcae"
version = "0.9.3"

[[deps.Downloads]]
deps = ["ArgTools", "FileWatching", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
version = "1.6.0"

[[deps.EarCut_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "e3290f2d49e661fbd94046d7e3726ffcb2d41053"
uuid = "5ae413db-bbd1-5e63-b57d-d24a61df00f5"
version = "2.2.4+0"

[[deps.ExceptionUnwrapping]]
deps = ["Test"]
git-tree-sha1 = "e90caa41f5a86296e014e148ee061bd6c3edec96"
uuid = "460bff9d-24e4-43bc-9d9f-a8973cb893f4"
version = "0.1.9"

[[deps.Extents]]
git-tree-sha1 = "5e1e4c53fa39afe63a7d356e30452249365fba99"
uuid = "411431e0-e8b7-467b-b5e0-f676ba4f2910"
version = "0.1.1"

[[deps.FileIO]]
deps = ["Pkg", "Requires", "UUIDs"]
git-tree-sha1 = "299dc33549f68299137e51e6d49a13b5b1da9673"
uuid = "5789e2e9-d7fb-5bc7-8068-2c6fae9b9549"
version = "1.16.1"

[[deps.FileWatching]]
uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[deps.FreeType]]
deps = ["CEnum", "FreeType2_jll"]
git-tree-sha1 = "50351f83f95282cf903e968d7c6e8d44a5f83d0b"
uuid = "b38be410-82b0-50bf-ab77-7b57e271db43"
version = "4.1.0"

[[deps.FreeType2_jll]]
deps = ["Artifacts", "Bzip2_jll", "JLLWrappers", "Libdl", "Zlib_jll"]
git-tree-sha1 = "d8db6a5a2fe1381c1ea4ef2cab7c69c2de7f9ea0"
uuid = "d7e528f0-a631-5988-bf34-fe36492bcfd7"
version = "2.13.1+0"

[[deps.FreeTypeAbstraction]]
deps = ["ColorVectorSpace", "Colors", "FreeType", "GeometryBasics"]
git-tree-sha1 = "b5c7fe9cea653443736d264b85466bad8c574f4a"
uuid = "663a7486-cb36-511b-a19d-713bb74d65c9"
version = "0.9.9"

[[deps.GPUArraysCore]]
deps = ["Adapt"]
git-tree-sha1 = "2d6ca471a6c7b536127afccfa7564b5b39227fe0"
uuid = "46192b85-c4d5-4398-a991-12ede77f4527"
version = "0.1.5"

[[deps.GeoInterface]]
deps = ["Extents"]
git-tree-sha1 = "bb198ff907228523f3dee1070ceee63b9359b6ab"
uuid = "cf35fbd7-0cd7-5166-be24-54bfbe79505f"
version = "1.3.1"

[[deps.GeometryBasics]]
deps = ["EarCut_jll", "Extents", "GeoInterface", "IterTools", "LinearAlgebra", "StaticArrays", "StructArrays", "Tables"]
git-tree-sha1 = "424a5a6ce7c5d97cca7bcc4eac551b97294c54af"
uuid = "5c1252a2-5f33-56bf-86c9-59e7332b4326"
version = "0.4.9"

[[deps.Graphics]]
deps = ["Colors", "LinearAlgebra", "NaNMath"]
git-tree-sha1 = "d61890399bc535850c4bf08e4e0d3a7ad0f21cbd"
uuid = "a2bd30eb-e257-5431-a919-1863eab51364"
version = "1.1.2"

[[deps.HTTP]]
deps = ["Base64", "CodecZlib", "ConcurrentUtilities", "Dates", "ExceptionUnwrapping", "Logging", "LoggingExtras", "MbedTLS", "NetworkOptions", "OpenSSL", "Random", "SimpleBufferStream", "Sockets", "URIs", "UUIDs"]
git-tree-sha1 = "cb56ccdd481c0dd7f975ad2b3b62d9eda088f7e2"
uuid = "cd3eb016-35fb-5094-929b-558a96fad6f3"
version = "1.9.14"

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

[[deps.ImageAxes]]
deps = ["AxisArrays", "ImageBase", "ImageCore", "Reexport", "SimpleTraits"]
git-tree-sha1 = "2e4520d67b0cef90865b3ef727594d2a58e0e1f8"
uuid = "2803e5a7-5153-5ecf-9a86-9b4c37f5f5ac"
version = "0.6.11"

[[deps.ImageBase]]
deps = ["ImageCore", "Reexport"]
git-tree-sha1 = "b51bb8cae22c66d0f6357e3bcb6363145ef20835"
uuid = "c817782e-172a-44cc-b673-b171935fbb9e"
version = "0.1.5"

[[deps.ImageCore]]
deps = ["AbstractFFTs", "ColorVectorSpace", "Colors", "FixedPointNumbers", "Graphics", "MappedArrays", "MosaicViews", "OffsetArrays", "PaddedViews", "Reexport"]
git-tree-sha1 = "acf614720ef026d38400b3817614c45882d75500"
uuid = "a09fc81d-aa75-5fe9-8630-4744c3626534"
version = "0.9.4"

[[deps.ImageIO]]
deps = ["FileIO", "IndirectArrays", "JpegTurbo", "LazyModules", "Netpbm", "OpenEXR", "PNGFiles", "QOI", "Sixel", "TiffImages", "UUIDs"]
git-tree-sha1 = "bca20b2f5d00c4fbc192c3212da8fa79f4688009"
uuid = "82e4d734-157c-48bb-816b-45c225c6df19"
version = "0.6.7"

[[deps.ImageMagick]]
deps = ["FileIO", "ImageCore", "ImageMagick_jll", "InteractiveUtils"]
git-tree-sha1 = "b0b765ff0b4c3ee20ce6740d843be8dfce48487c"
uuid = "6218d12a-5da1-5696-b52f-db25d2ecc6d1"
version = "1.3.0"

[[deps.ImageMagick_jll]]
deps = ["JpegTurbo_jll", "Libdl", "Libtiff_jll", "Pkg", "Zlib_jll", "libpng_jll"]
git-tree-sha1 = "1c0a2295cca535fabaf2029062912591e9b61987"
uuid = "c73af94c-d91f-53ed-93a7-00f77d67a9d7"
version = "6.9.10-12+3"

[[deps.ImageMetadata]]
deps = ["AxisArrays", "ImageAxes", "ImageBase", "ImageCore"]
git-tree-sha1 = "355e2b974f2e3212a75dfb60519de21361ad3cb7"
uuid = "bc367c6b-8a6b-528e-b4bd-a4b897500b49"
version = "0.9.9"

[[deps.Imath_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "3d09a9f60edf77f8a4d99f9e015e8fbf9989605d"
uuid = "905a6f67-0a94-5f89-b386-d35d92009cd1"
version = "3.1.7+0"

[[deps.IndirectArrays]]
git-tree-sha1 = "012e604e1c7458645cb8b436f8fba789a51b257f"
uuid = "9b13fd28-a010-5f03-acff-a1bbcff69959"
version = "1.0.0"

[[deps.Inflate]]
git-tree-sha1 = "5cd07aab533df5170988219191dfad0519391428"
uuid = "d25df0c9-e2be-5dd7-82c8-3ad0b3e990b9"
version = "0.1.3"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.IntervalSets]]
deps = ["Dates", "Random"]
git-tree-sha1 = "8e59ea773deee525c99a8018409f64f19fb719e6"
uuid = "8197267c-284f-5f27-9208-e0e47529a953"
version = "0.7.7"
weakdeps = ["Statistics"]

    [deps.IntervalSets.extensions]
    IntervalSetsStatisticsExt = "Statistics"

[[deps.IrrationalConstants]]
git-tree-sha1 = "630b497eafcc20001bba38a4651b327dcfc491d2"
uuid = "92d709cd-6900-40b7-9082-c6be49f344b6"
version = "0.2.2"

[[deps.IterTools]]
git-tree-sha1 = "4ced6667f9974fc5c5943fa5e2ef1ca43ea9e450"
uuid = "c8e1da08-722c-5040-9ed9-7db0dc04731e"
version = "1.8.0"

[[deps.IteratorInterfaceExtensions]]
git-tree-sha1 = "a3f24677c21f5bbe9d2a714f95dcd58337fb2856"
uuid = "82899510-4779-5014-852e-03e436cf321d"
version = "1.0.0"

[[deps.JLLWrappers]]
deps = ["Artifacts", "Preferences"]
git-tree-sha1 = "7e5d6779a1e09a36db2a7b6cff50942a0a7d0fca"
uuid = "692b3bcd-3c85-4b1f-b108-f13ce0eb3210"
version = "1.5.0"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "31e996f0a15c7b280ba9f76636b3ff9e2ae58c9a"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.4"

[[deps.JSON3]]
deps = ["Dates", "Mmap", "Parsers", "PrecompileTools", "StructTypes", "UUIDs"]
git-tree-sha1 = "95220473901735a0f4df9d1ca5b171b568b2daa3"
uuid = "0f8b85d8-7281-11e9-16c2-39a750bddbf1"
version = "1.13.2"

[[deps.JpegTurbo]]
deps = ["CEnum", "FileIO", "ImageCore", "JpegTurbo_jll", "TOML"]
git-tree-sha1 = "327713faef2a3e5c80f96bf38d1fa26f7a6ae29e"
uuid = "b835a17e-a41a-41e7-81f0-2f016b05efe0"
version = "0.1.3"

[[deps.JpegTurbo_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "6f2675ef130a300a112286de91973805fcc5ffbc"
uuid = "aacddb02-875f-59d6-b918-886e6ef4fbf8"
version = "2.1.91+0"

[[deps.LERC_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "bf36f528eec6634efc60d7ec062008f171071434"
uuid = "88015f11-f218-50d7-93a8-a6af411a945d"
version = "3.0.0+1"

[[deps.LazyModules]]
git-tree-sha1 = "a560dd966b386ac9ae60bdd3a3d3a326062d3c3e"
uuid = "8cdb02fc-e678-4876-92c5-9defec4f444e"
version = "0.3.1"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"
version = "0.6.3"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"
version = "7.84.0+0"

[[deps.LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"
version = "1.10.2+0"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.Libtiff_jll]]
deps = ["Artifacts", "JLLWrappers", "JpegTurbo_jll", "LERC_jll", "Libdl", "Pkg", "Zlib_jll", "Zstd_jll"]
git-tree-sha1 = "3eb79b0ca5764d4799c06699573fd8f533259713"
uuid = "89763e89-9b03-5906-acba-b20f662cd828"
version = "4.4.0+0"

[[deps.LinearAlgebra]]
deps = ["Libdl", "OpenBLAS_jll", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.LogExpFunctions]]
deps = ["DocStringExtensions", "IrrationalConstants", "LinearAlgebra"]
git-tree-sha1 = "7d6dd4e9212aebaeed356de34ccf262a3cd415aa"
uuid = "2ab3a3ac-af41-5b50-aa03-7779005ae688"
version = "0.3.26"

    [deps.LogExpFunctions.extensions]
    LogExpFunctionsChainRulesCoreExt = "ChainRulesCore"
    LogExpFunctionsChangesOfVariablesExt = "ChangesOfVariables"
    LogExpFunctionsInverseFunctionsExt = "InverseFunctions"

    [deps.LogExpFunctions.weakdeps]
    ChainRulesCore = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"
    ChangesOfVariables = "9e997f8a-9a97-42d5-a9f1-ce6bfc15e2c0"
    InverseFunctions = "3587e190-3f89-42d0-90ee-14403ec27112"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.LoggingExtras]]
deps = ["Dates", "Logging"]
git-tree-sha1 = "0d097476b6c381ab7906460ef1ef1638fbce1d91"
uuid = "e6f89c97-d47a-5376-807f-9c37f3926c36"
version = "1.0.2"

[[deps.MIMEs]]
git-tree-sha1 = "65f28ad4b594aebe22157d6fac869786a255b7eb"
uuid = "6c6e2e6c-3030-632d-7369-2d6c69616d65"
version = "0.1.4"

[[deps.MacroTools]]
deps = ["Markdown", "Random"]
git-tree-sha1 = "9ee1618cbf5240e6d4e0371d6f24065083f60c48"
uuid = "1914dd2f-81c6-5fcd-8719-6d5c9610ff09"
version = "0.5.11"

[[deps.MappedArrays]]
git-tree-sha1 = "2dab0221fe2b0f2cb6754eaa743cc266339f527e"
uuid = "dbb5928d-eab1-5f90-85c2-b9b0edb7c900"
version = "0.4.2"

[[deps.MarchingCubes]]
deps = ["PrecompileTools", "StaticArrays"]
git-tree-sha1 = "c8e29e2bacb98c9b6f10445227a8b0402f2f173a"
uuid = "299715c1-40a9-479a-aaf9-4a633d36f717"
version = "0.1.8"

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
version = "2.28.2+0"

[[deps.Memoize]]
deps = ["MacroTools"]
git-tree-sha1 = "2b1dfcba103de714d31c033b5dacc2e4a12c7caa"
uuid = "c03570c3-d221-55d1-a50c-7939bbd78826"
version = "0.4.4"

[[deps.Missings]]
deps = ["DataAPI"]
git-tree-sha1 = "f66bdc5de519e8f8ae43bdc598782d35a25b1272"
uuid = "e1d29d7a-bbdc-5cf2-9ac0-f12de2c33e28"
version = "1.1.0"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MosaicViews]]
deps = ["MappedArrays", "OffsetArrays", "PaddedViews", "StackViews"]
git-tree-sha1 = "7b86a5d4d70a9f5cdf2dacb3cbe6d251d1a61dbe"
uuid = "e94cdb99-869f-56ef-bcf0-1ae2bcbe0389"
version = "0.3.4"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"
version = "2022.10.11"

[[deps.NaNMath]]
deps = ["OpenLibm_jll"]
git-tree-sha1 = "0877504529a3e5c3343c6f8b4c0381e57e4387e4"
uuid = "77ba4419-2d1f-58cd-9bb1-8ffee604a2e3"
version = "1.0.2"

[[deps.Netpbm]]
deps = ["FileIO", "ImageCore", "ImageMetadata"]
git-tree-sha1 = "d92b107dbb887293622df7697a2223f9f8176fcd"
uuid = "f09324ee-3d7c-5217-9330-fc30815ba969"
version = "1.1.1"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"
version = "1.2.0"

[[deps.OffsetArrays]]
deps = ["Adapt"]
git-tree-sha1 = "2ac17d29c523ce1cd38e27785a7d23024853a4bb"
uuid = "6fe1bfb0-de20-5000-8ca7-80f57d26f881"
version = "1.12.10"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.21+4"

[[deps.OpenEXR]]
deps = ["Colors", "FileIO", "OpenEXR_jll"]
git-tree-sha1 = "327f53360fdb54df7ecd01e96ef1983536d1e633"
uuid = "52e1d378-f018-4a11-a4be-720524705ac7"
version = "0.3.2"

[[deps.OpenEXR_jll]]
deps = ["Artifacts", "Imath_jll", "JLLWrappers", "Libdl", "Zlib_jll"]
git-tree-sha1 = "a4ca623df1ae99d09bc9868b008262d0c0ac1e4f"
uuid = "18a262bb-aa17-5467-a713-aee519bc75cb"
version = "3.1.4+0"

[[deps.OpenLibm_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "05823500-19ac-5b8b-9628-191a04bc5112"
version = "0.8.1+0"

[[deps.OpenSSL]]
deps = ["BitFlags", "Dates", "MozillaCACerts_jll", "OpenSSL_jll", "Sockets"]
git-tree-sha1 = "51901a49222b09e3743c65b8847687ae5fc78eb2"
uuid = "4d8831e6-92b7-49fb-bdf8-b643e874388c"
version = "1.4.1"

[[deps.OpenSSL_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "e78db7bd5c26fc5a6911b50a47ee302219157ea8"
uuid = "458c3c95-2e84-50aa-8efc-19380b2a3a95"
version = "3.0.10+0"

[[deps.OpenSpecFun_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "13652491f6856acfd2db29360e1bbcd4565d04f1"
uuid = "efe28fd5-8261-553b-a9e1-b2916fc3738e"
version = "0.5.5+0"

[[deps.OrderedCollections]]
git-tree-sha1 = "2e73fe17cac3c62ad1aebe70d44c963c3cfdc3e3"
uuid = "bac558e1-5e72-5ebc-8fee-abe8a469f55d"
version = "1.6.2"

[[deps.PNGFiles]]
deps = ["Base64", "CEnum", "ImageCore", "IndirectArrays", "OffsetArrays", "libpng_jll"]
git-tree-sha1 = "9b02b27ac477cad98114584ff964e3052f656a0f"
uuid = "f57f5aa1-a3ce-4bc8-8ab9-96f992907883"
version = "0.4.0"

[[deps.PaddedViews]]
deps = ["OffsetArrays"]
git-tree-sha1 = "0fac6313486baae819364c52b4f483450a9d793f"
uuid = "5432bcbf-9aad-5242-b902-cca2824c8663"
version = "0.5.12"

[[deps.Parsers]]
deps = ["Dates", "PrecompileTools", "UUIDs"]
git-tree-sha1 = "716e24b21538abc91f6205fd1d8363f39b442851"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.7.2"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "FileWatching", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.9.2"

[[deps.PkgVersion]]
deps = ["Pkg"]
git-tree-sha1 = "f9501cc0430a26bc3d156ae1b5b0c1b47af4d6da"
uuid = "eebad327-c553-4316-9ea0-9fa01ccd7688"
version = "0.3.3"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "FixedPointNumbers", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "MIMEs", "Markdown", "Random", "Reexport", "URIs", "UUIDs"]
git-tree-sha1 = "e47cd150dbe0443c3a3651bc5b9cbd5576ab75b7"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.52"

[[deps.PrecompileTools]]
deps = ["Preferences"]
git-tree-sha1 = "03b4c25b43cb84cee5c90aa9b5ea0a78fd848d2f"
uuid = "aea7be01-6a6a-4083-8856-8a6e6704d82a"
version = "1.2.0"

[[deps.Preferences]]
deps = ["TOML"]
git-tree-sha1 = "7eb1686b4f04b82f96ed7a4ea5890a4f0c7a09f1"
uuid = "21216c6a-2e73-6563-6e65-726566657250"
version = "1.4.0"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.ProgressMeter]]
deps = ["Distributed", "Printf"]
git-tree-sha1 = "ae36206463b2395804f2787ffe172f44452b538d"
uuid = "92933f4c-e287-5a05-a399-4b506db050ca"
version = "1.8.0"

[[deps.QOI]]
deps = ["ColorTypes", "FileIO", "FixedPointNumbers"]
git-tree-sha1 = "18e8f4d1426e965c7b532ddd260599e1510d26ce"
uuid = "4b34888f-f399-49d4-9bb3-47ed5cae4e65"
version = "1.0.0"

[[deps.QRCoders]]
deps = ["FileIO", "ImageCore", "ImageIO", "ImageMagick", "StatsBase", "UnicodePlots"]
git-tree-sha1 = "b3e5fcc7a7ade2d43f0ffd178c299b7a264c268a"
uuid = "f42e9828-16f3-11ed-2883-9126170b272d"
version = "1.4.5"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.RangeArrays]]
git-tree-sha1 = "b9039e93773ddcfc828f12aadf7115b4b4d225f5"
uuid = "b3c3ace0-ae52-54e7-9d0b-2c1406fd6b9d"
version = "0.3.2"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.Requires]]
deps = ["UUIDs"]
git-tree-sha1 = "838a3a4188e2ded87a4f9f184b4b0d78a1e91cb7"
uuid = "ae029012-a4dd-5104-9daa-d747884805df"
version = "1.3.0"

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

[[deps.SimpleTraits]]
deps = ["InteractiveUtils", "MacroTools"]
git-tree-sha1 = "5d7e3f4e11935503d3ecaf7186eac40602e7d231"
uuid = "699a6c99-e7fa-54fc-8d76-47d257e15c1d"
version = "0.9.4"

[[deps.Sixel]]
deps = ["Dates", "FileIO", "ImageCore", "IndirectArrays", "OffsetArrays", "REPL", "libsixel_jll"]
git-tree-sha1 = "2da10356e31327c7096832eb9cd86307a50b1eb6"
uuid = "45858cf5-a6b0-47a3-bbea-62219f50df47"
version = "0.1.3"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SortingAlgorithms]]
deps = ["DataStructures"]
git-tree-sha1 = "c60ec5c62180f27efea3ba2908480f8055e17cee"
uuid = "a2af1166-a08f-5f64-846c-94a0d3cef48c"
version = "1.1.1"

[[deps.SparseArrays]]
deps = ["Libdl", "LinearAlgebra", "Random", "Serialization", "SuiteSparse_jll"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.SpecialFunctions]]
deps = ["IrrationalConstants", "LogExpFunctions", "OpenLibm_jll", "OpenSpecFun_jll"]
git-tree-sha1 = "e2cfc4012a19088254b3950b85c3c1d8882d864d"
uuid = "276daf66-3868-5448-9aa4-cd146d93841b"
version = "2.3.1"

    [deps.SpecialFunctions.extensions]
    SpecialFunctionsChainRulesCoreExt = "ChainRulesCore"

    [deps.SpecialFunctions.weakdeps]
    ChainRulesCore = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"

[[deps.StackViews]]
deps = ["OffsetArrays"]
git-tree-sha1 = "46e589465204cd0c08b4bd97385e4fa79a0c770c"
uuid = "cae243ae-269e-4f55-b966-ac2d0dc13c15"
version = "0.1.1"

[[deps.StaticArrays]]
deps = ["LinearAlgebra", "Random", "StaticArraysCore"]
git-tree-sha1 = "9cabadf6e7cd2349b6cf49f1915ad2028d65e881"
uuid = "90137ffa-7385-5640-81b9-e52037218182"
version = "1.6.2"
weakdeps = ["Statistics"]

    [deps.StaticArrays.extensions]
    StaticArraysStatisticsExt = "Statistics"

[[deps.StaticArraysCore]]
git-tree-sha1 = "36b3d696ce6366023a0ea192b4cd442268995a0d"
uuid = "1e83bf80-4336-4d27-bf5d-d5a4f845583c"
version = "1.4.2"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"
version = "1.9.0"

[[deps.StatsAPI]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "45a7769a04a3cf80da1c1c7c60caf932e6f4c9f7"
uuid = "82ae8749-77ed-4fe6-ae5f-f523153014b0"
version = "1.6.0"

[[deps.StatsBase]]
deps = ["DataAPI", "DataStructures", "LinearAlgebra", "LogExpFunctions", "Missings", "Printf", "Random", "SortingAlgorithms", "SparseArrays", "Statistics", "StatsAPI"]
git-tree-sha1 = "d1bf48bfcc554a3761a133fe3a9bb01488e06916"
uuid = "2913bbd2-ae8a-5f71-8c99-4fb6c76f3a91"
version = "0.33.21"

[[deps.StructArrays]]
deps = ["Adapt", "DataAPI", "GPUArraysCore", "StaticArraysCore", "Tables"]
git-tree-sha1 = "521a0e828e98bb69042fec1809c1b5a680eb7389"
uuid = "09ab397b-f2b6-538f-b94a-2f83cf4a842a"
version = "0.6.15"

[[deps.StructTypes]]
deps = ["Dates", "UUIDs"]
git-tree-sha1 = "ca4bccb03acf9faaf4137a9abc1881ed1841aa70"
uuid = "856f2bd8-1eba-4b0a-8007-ebc267875bd4"
version = "1.10.0"

[[deps.SuiteSparse_jll]]
deps = ["Artifacts", "Libdl", "Pkg", "libblastrampoline_jll"]
uuid = "bea87d4a-7f5b-5778-9afe-8cc45184846c"
version = "5.10.1+6"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"
version = "1.0.3"

[[deps.TableTraits]]
deps = ["IteratorInterfaceExtensions"]
git-tree-sha1 = "c06b2f539df1c6efa794486abfb6ed2022561a39"
uuid = "3783bdb8-4a98-5b6b-af9a-565f29a5fe9c"
version = "1.0.1"

[[deps.Tables]]
deps = ["DataAPI", "DataValueInterfaces", "IteratorInterfaceExtensions", "LinearAlgebra", "OrderedCollections", "TableTraits", "Test"]
git-tree-sha1 = "1544b926975372da01227b382066ab70e574a3ec"
uuid = "bd369af6-aec1-5ad0-b16a-f7cc5008161c"
version = "1.10.1"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"
version = "1.10.0"

[[deps.TensorCore]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "1feb45f88d133a655e001435632f019a9a1bcdb6"
uuid = "62fd8b95-f654-4bbd-a8a5-9c27f68ccd50"
version = "0.1.1"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.TiffImages]]
deps = ["ColorTypes", "DataStructures", "DocStringExtensions", "FileIO", "FixedPointNumbers", "IndirectArrays", "Inflate", "Mmap", "OffsetArrays", "PkgVersion", "ProgressMeter", "UUIDs"]
git-tree-sha1 = "8621f5c499a8aa4aa970b1ae381aae0ef1576966"
uuid = "731e570b-9d59-4bfa-96dc-6df516fadf69"
version = "0.6.4"

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
git-tree-sha1 = "b7a5e99f24892b6824a954199a45e9ffcc1c70f0"
uuid = "5c2747f8-b7ea-4ff2-ba2e-563bfd36b1d4"
version = "1.5.0"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.UnicodePlots]]
deps = ["ColorTypes", "Contour", "Crayons", "Dates", "FileIO", "FreeTypeAbstraction", "LazyModules", "LinearAlgebra", "MarchingCubes", "NaNMath", "Printf", "SparseArrays", "StaticArrays", "StatsBase", "Unitful"]
git-tree-sha1 = "ae67ab0505b9453655f7d5ea65183a1cd1b3cfa0"
uuid = "b8865327-cd53-5732-bb35-84acbb429228"
version = "2.12.4"

[[deps.Unitful]]
deps = ["Dates", "LinearAlgebra", "Random"]
git-tree-sha1 = "a72d22c7e13fe2de562feda8645aa134712a87ee"
uuid = "1986cc42-f94f-5a68-af5c-568840ba703d"
version = "1.17.0"

    [deps.Unitful.extensions]
    ConstructionBaseUnitfulExt = "ConstructionBase"
    InverseFunctionsUnitfulExt = "InverseFunctions"

    [deps.Unitful.weakdeps]
    ConstructionBase = "187b0558-2788-49d3-abe0-74a17ed4e7c9"
    InverseFunctions = "3587e190-3f89-42d0-90ee-14403ec27112"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"
version = "1.2.13+0"

[[deps.Zstd_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "49ce682769cd5de6c72dcf1b94ed7790cd08974c"
uuid = "3161d3a3-bdf6-5164-811a-617609db77b4"
version = "1.5.5+0"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.8.0+0"

[[deps.libpng_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Zlib_jll"]
git-tree-sha1 = "94d180a6d2b5e55e447e2d27a29ed04fe79eb30c"
uuid = "b53b4c65-9356-5827-b1ea-8c7a1a84506f"
version = "1.6.38+0"

[[deps.libsixel_jll]]
deps = ["Artifacts", "JLLWrappers", "JpegTurbo_jll", "Libdl", "Pkg", "libpng_jll"]
git-tree-sha1 = "d4f63314c8aa1e48cd22aa0c17ed76cd1ae48c3c"
uuid = "075b6546-f08a-558a-be8f-8157d0f608a5"
version = "1.10.3+0"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"
version = "1.48.0+0"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
version = "17.4.0+0"
"""

# ╔═╡ Cell order:
# ╟─772de7b2-48d8-11ee-36b4-8b22efbd59c1
# ╠═32744386-8fba-4d25-823d-b70ad8895ab4
# ╟─cdf238a2-57c2-4876-baf1-7449b9432ccd
# ╟─ff9a7246-6380-474c-bb9c-e6e2d6c43d24
# ╟─ef39b3e6-3f4c-4646-92ad-06b743f50ef6
# ╟─3cae7fa0-67b4-4665-94d7-a4a78d993a6b
# ╟─68db2722-a8f8-409a-af2f-d8b474e0d1e4
# ╟─95ba703d-9ec5-4cf5-8140-685aa0c9a29b
# ╟─a3b74018-d431-4937-8653-5f3ad44c6464
# ╟─5d61fd36-dde1-4ba0-82b0-9bc3e5067d28
# ╟─afcace32-fd86-45b2-a807-9acc06d86cda
# ╟─f442130c-5917-4674-a025-faeb06d8124c
# ╟─c2aedd05-7cd7-45c6-9a39-6be942971ca9
# ╟─365c1e5c-5e34-47d2-94fc-df25876d5a03
# ╠═ffe58516-0914-4271-b76c-52dc20185431
# ╟─06871e27-8047-4883-a5db-7cda1007e5a1
# ╠═8fd832f5-9770-4134-8409-8b20a9088600
# ╟─6ff7c81c-01f7-48ba-b261-5e1acdb7e92f
# ╠═ce2be1c0-338e-4f58-9df0-111e743f5d45
# ╟─5380e87d-db20-47a7-91eb-83e6e02ebde5
# ╠═561fbab4-2780-413c-a280-6ce1ffb554ef
# ╟─5cc96a71-b58a-4a1e-9a33-ac489dc96add
# ╠═cb1685fa-9813-4b00-9e03-40ffd20a7cd8
# ╠═50b5ec1c-f335-4ff7-8b17-bd4938c450f0
# ╠═e9461298-e232-4649-bbfb-dbf0206fee0e
# ╠═3063902d-e5f3-4317-8e9f-c134286202dc
# ╠═8ff39756-b5b1-4471-ac6f-434396a7b1bb
# ╠═04aded3e-fda8-4be3-aec5-d6f9c782ecf7
# ╠═c5cd45c5-6acc-448e-889f-6966aeccd880
# ╠═7d853f9d-ed61-4829-8585-69f853231b5f
# ╠═e18095f0-a0e3-4014-9a56-0448ebe2d2ac
# ╠═9dbf7f36-46d6-4ad4-8cbf-6ce438eb04a0
# ╠═5689831e-7620-428e-8d84-31dec4a9c4a4
# ╠═a175b64f-ca73-4a22-862c-12f9bff88ec4
# ╠═6c668d28-5253-4d90-a589-f9f435e164b4
# ╠═b1900ac8-8da0-4ded-9f51-240d7aaabbd6
# ╠═01ed0700-fde2-4b09-ac66-0b06bab74fe9
# ╠═b0c4fb7c-71a4-4b64-a82d-412cef77ee25
# ╟─84a5f074-025b-4f03-ab4b-54c8b4538fab
# ╠═b0e8213a-e265-4500-82a2-a8f0c163100b
# ╠═25df6f5f-ab96-4818-a4b5-dc430c5f9f91
# ╠═823a8149-ba45-4266-a908-c6f7bc58102f
# ╠═87af3efa-6e9a-452b-a539-3f05982dac21
# ╠═f74a3055-1ce6-442f-83b9-48d87348ef57
# ╠═abdb368c-4e2a-4379-91a8-fa45d75af14a
# ╠═a53c2fae-6362-45b4-a4a8-57e91f0c0017
# ╠═96d904ad-b9e3-42b5-85da-47ec2635e0e9
# ╠═2c24963c-3397-4a7c-98ff-d8cdeec15e80
# ╠═4f732815-bb9d-40f6-953e-c10a8543c850
# ╠═faa9e48f-f53c-4d45-8dac-bd33a9a9bef9
# ╠═85adbe68-65ac-4fa7-b631-886a1f2e010a
# ╠═2ca97a75-b670-4b62-8993-096d7b6d1ce6
# ╠═97866b26-b104-4f72-9147-f598851922e9
# ╠═5db13ea2-571f-4d6d-bece-be954a060247
# ╟─bc99e32b-1d91-4221-acc6-d43f6c03dee5
# ╠═7b7a4edb-a2a6-467d-9288-3b93d4179292
# ╠═1b111bd1-629a-4381-b878-da69fd8f7af7
# ╠═b198868b-fc7f-4326-9665-cd1e48d0b1f8
# ╠═740e8d5d-2763-45d6-93b9-0eda5de52394
# ╠═0466dc8e-81b3-4749-a6bb-b83a29220d40
# ╟─ea4ee59e-9593-4200-9020-35f39c3ff22c
# ╠═d151da95-66cc-4c40-8114-1b8f8cd399cd
# ╠═a98deb16-4131-46c4-9b6b-09fd8124665e
# ╠═3eb1454b-1829-443d-88b3-d3218b82c9ca
# ╠═2660788d-083b-45d0-bde9-e30c89f014ad
# ╠═3e7db536-ca29-4eaa-935b-98815fce09aa
# ╠═95561ef9-9651-4e51-844b-5732c645f816
# ╠═77e70bf8-8d82-453f-9284-c910af03cff3
# ╟─c68bbcb4-b6e7-45d7-9895-c4e44cfc30d8
# ╠═190f3004-c311-41bc-beaf-9dab4c9f281d
# ╠═19cc28c9-37b5-4e69-89db-fdfb3540a1f6
# ╠═61f66f58-84a9-4cdb-8237-39393b2c57ee
# ╠═9d1cac9e-0c95-4895-8d4f-c9b216eb3070
# ╠═609e0033-6227-4301-845e-47c0b9792232
# ╠═3c48c086-7387-4ea8-9c4b-e9cad728c754
# ╠═94062736-00ec-4c63-94ae-e4664080f512
# ╠═3c335469-ca67-498a-bc97-c81baa39605b
# ╠═3a82a6b4-4cfd-4387-a7c3-e0c94ea17db7
# ╟─71b027b1-4a28-4dfa-99eb-3b030b7f091d
# ╠═58734a5a-54ad-4a1b-bf78-c02ebf1912b3
# ╠═aca4c163-2cd8-4681-baad-e55649dd55a4
# ╠═4dbe7c99-303b-4566-8f37-9996fd808b41
# ╠═107217df-3a44-4cdb-856c-75157a29310d
# ╠═68e70424-ad85-44c9-b43f-65ac590ad458
# ╠═730798bc-0f8f-497a-ab13-022754589272
# ╠═a010c5f9-ffc2-4f00-9025-9a973967894e
# ╠═da6a5a59-4a8d-4160-9212-b026e1d8ee6c
# ╠═f03edb48-f172-420a-9ffa-5212f3fc3735
# ╟─f153efd8-60b8-46a0-b544-5fbdba69eabd
# ╠═e7a0820e-8cc5-4f46-956e-3daf04abeaeb
# ╟─f2f17dfb-3a8e-4e37-ad79-d573b01a1c34
# ╟─4d411052-0e76-4739-80f2-a140804236ba
# ╟─1dee2129-6549-46e7-85c6-3e5c94a933bb
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
