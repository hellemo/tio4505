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

# ╔═╡ 015aa792-7444-4369-b1e6-dd46202e0ded
import Pkg; Pkg.activate(@__DIR__) # Needs IntervalArithmetic v0.20 (breaks in v0.21)

# ╔═╡ 239a8a92-784c-11eb-34e8-e9a85b781eb9
using PlutoUI, ShortCodes

# ╔═╡ 2510c375-f678-4f11-b0b3-e0f2f0ed0a20
using IntervalArithmetic

# ╔═╡ 955954ed-2eeb-43d3-8d6f-2b9500c75461
html"<button onclick=present()>Present</button>"

# ╔═╡ 7a1933fa-77a7-11eb-1f0d-711f1ea70487
md" # Automatic Differentiation"

# ╔═╡ 71ce995d-7d4f-49b9-8fc4-08f03362bb79
YouTube("vAp6nUMrKYg")

# ╔═╡ e47c8ff2-78e8-11eb-0562-c5f7bd22f799
md"## Babylonian √
Algoritm to compute √ invented by the [Babylonians](https://johncarlosbaez.wordpress.com/2011/12/02/babylon-and-the-square-root-of-2/) (similar to Newton's method)"

# ╔═╡ f9b3ecb2-78e8-11eb-1d45-0d11fa8e3c3f
md" Verify that it computes the correct value for $(@bind v Scrubbable(3)):"

# ╔═╡ fd05f400-78e8-11eb-3888-a5f3553eb3df
md"## Implement a simple AD in 10 LOC:"

# ╔═╡ 7cbd70ce-786c-11eb-12bb-1b841aa95e37
struct D{T} <: Number
	f::Tuple{T, T}
end

# ╔═╡ 182eda1c-779f-11eb-13e2-15ba3dcd580c
begin 
	import Base: +, -, *, /, convert, promote_rule
	+(x::D, y::D) = D(x.f .+ y.f )
	/(x::D, y::D) = D((x.f[1]/y.f[1], (y.f[1]*x.f[2] - x.f[1]*y.f[2])/y.f[1]^2))
	-(x::D, y::D) = D(x.f .- y.f)
	*(x::D, y::D) = D((x.f[1]*y.f[1], (x.f[2]*y.f[1] + x.f[1]*y.f[2])))
	convert(::Type{D{T}}, x::Real) where {T} = D((convert(T, x), zero(T)))
	promote_rule(::Type{D{T}}, ::Type{S}) where {T,S<:Number} = D{promote_type(T,S)}
end

# ╔═╡ ef87973a-779d-11eb-2ad6-e3b77b5e9b86
function babylonian_sqrt(x; N=10)
	t = (1+x)/2
	for i = 2:N
		t = (t + x/t)/2
	end
	return t
end

# ╔═╡ 7f4f99b8-2535-4238-b6f4-6ba5343d2af4
babylonian_sqrt(v; N=5)

# ╔═╡ 5d30c4a0-779e-11eb-17fc-055fc6902ec5
babylonian_sqrt(v; N=5)^2 ≈ v

# ╔═╡ b8a687da-6550-4a39-9f90-b5647862ca14
md" Test for a number $(@bind x Scrubbable(64))"

# ╔═╡ ffcec872-77a0-11eb-2d0a-8f88a10ba81f
babylonian_sqrt(D((x,1))), (√x, 1/2/√x)

# ╔═╡ a8697704-7876-11eb-23b3-7d74249e5949
roundtrip(x) = babylonian_sqrt(x)^2

# ╔═╡ dfc40372-7876-11eb-2994-ad805f351fac
roundtrip(D((8.0, 1.0)))

# ╔═╡ 1404f4f0-784c-11eb-0932-efff4825cc60
with_terminal() do
	 @code_native babylonian_sqrt(D((x,1)))
end

# ╔═╡ fa6ef650-786c-11eb-1e49-7bf262569a6c
md" ## What is going on under the hood?"

# ╔═╡ 58e5ab1a-77a1-11eb-3308-a5d50f7acb58
# Hand-written version for derivative:
function d_babylonian(x; N=10)
	t = (1+x)/2
	t´= 1/2
	for i = 2:N
		t = (t + x/t)/2
		t´= (t´+(t-x*t´)/t^2)/2
	end
	return t´
end

# ╔═╡ 0a3004d2-77a3-11eb-082b-5d34f31e5418
d_babylonian(x;N=100), 0.5/√x

# ╔═╡ 25185afc-78e9-11eb-261e-6fcf5f6f8686
md" ## Polynomials
Our AD also works for polynomials:"

# ╔═╡ e1846c2c-77a4-11eb-32c9-251b711e6fe7
f(x) = x^2 + 5x^3 -2x

# ╔═╡ e3452cb6-77a3-11eb-3ab2-07ed1eb530cb
x₁ = 2.0; f(D((x₁, 1.0)))

# ╔═╡ 63719708-4f23-447b-a980-1ccbcecfd83b
md" ## Composition"

# ╔═╡ 97ce16b2-5d0d-4582-bf44-4d428a3a9404
function fd(f::Function) 	# First derivative
	x->f(D((x,one(x)))).f[2]
end

# ╔═╡ 858efa8d-0c46-497b-9309-8312b2d99837
function fd2(f::Function) 	# Second derivative
	return fd(fd(f))
end

# ╔═╡ 632f3085-2cbc-4bed-b51c-db7754f5e15b
(1..2)^2

# ╔═╡ f9dac3de-8ea6-4cbe-908c-c6698bba467e
function is_convex(f, intrvl)
	return fd2(f)(intrvl) ≥ 0
end

# ╔═╡ 506fee66-0b78-46d6-bbdd-30ac6659b00a
is_convex(x->x^2, (1..2))

# ╔═╡ f29ef59c-d147-4cee-aca2-a3f113d2af47
is_convex(x->-1*(x^2), (-1..1))

# ╔═╡ ba5dacb8-96af-443f-bcef-b369cdc12b5d
is_convex(babylonian_sqrt, (1..2))

# ╔═╡ 3a21c8bc-78e9-11eb-1bb6-f510c764f0f6
md" ## Generalized algorithm for nth root"

# ╔═╡ f977f8d6-77a5-11eb-2440-9bb6e6a68a78
function nthroot(x, n=2; t=1, N=10)
	for i = 1:N
		t += (x/t^(n-1)-t)/n
	end
	return t
end

# ╔═╡ 9fbd1d24-786a-11eb-21d9-79677237b7cc
md" Checking accuracy of with different number of interations, N=$(@bind N Scrubbable(3))"

# ╔═╡ 21317690-786e-11eb-3e6b-2be6200e8292
md"root:$(@bind nroot Scrubbable(3))"

# ╔═╡ 23a0568c-77a6-11eb-269f-39a5226f95a3
 nthroot(BigFloat(8.0), nroot;N)

# ╔═╡ c5712944-7869-11eb-0ec6-3dbf3b292df3
begin
	z₁ = D((BigFloat(2.0), BigFloat(1.0)))
	z₂ = D((Float16(2.0), Float16(1.0)))
	z₃ = D((2.0, 1.0)) # Default to Float64
end

# ╔═╡ c356ae34-786d-11eb-097d-bffdf237381a
nthroot(z₁, nroot)

# ╔═╡ 9b9b0ea8-786b-11eb-3c65-53e6598a252f
nthroot(z₂, nroot)

# ╔═╡ 720f91ba-786d-11eb-18a5-ebd0e5305f4f
nthroot(z₃, nroot)

# ╔═╡ 2d551cb4-7f72-11eb-35e4-c54d3d9af0d0
df = fd2(x->x^3)

# ╔═╡ 393556de-7f72-11eb-1f5d-37039d1fba5c
f((3..4))

# ╔═╡ a251e37c-7f7b-11eb-271d-995151e5097f
fd(babylonian_sqrt)(1..2)

# ╔═╡ fa905e32-7f72-11eb-1d2b-f9ce228a0187
function is_concave(f,intrvl)
	return is_convex(x->(-1 * f(x)),intrvl)
end

# ╔═╡ 10e5a462-7f73-11eb-0ad7-d1093a2ed069
testf(x) = x^2

# ╔═╡ 87e5ecc2-7f7b-11eb-10e1-e7b6d94eeb6d
intrvl=(-1..1)

# ╔═╡ 1a577b6a-7f73-11eb-1226-310cc3aef54c
is_convex(testf,intrvl),is_concave(testf,intrvl)

# ╔═╡ f089ffce-7f7c-11eb-017e-09f334372e54
md"However, our Babylonian algorithm is not well behaved:"

# ╔═╡ 68e14a16-7f7d-11eb-33fe-051a9e6adde2
is_convex(babylonian_sqrt,(100..101))

# ╔═╡ c4bc16e0-7f7f-11eb-04cd-814d138c5f58
fd(babylonian_sqrt)(100..101)

# ╔═╡ 2bd28ede-7f7d-11eb-2f6d-134ba71a8301
is_concave(babylonian_sqrt,1000..1001)

# ╔═╡ 7033f4ec-7f7f-11eb-1b88-197f7d1c8930
m = (fd2 ∘ babylonian_sqrt)

# ╔═╡ e8b2c538-7f81-11eb-0f16-9720a642389b
function alt_sqrt(x;N=20)
	yn = x/1000
	xn = x*yn
	hn = yn/2
	for n ∈ 1:N
		rn = one(x)/2 - xn*hn
		xn = xn + xn*rn
		hn = hn + hn*rn
	end
	return xn
end

# ╔═╡ e3a1b212-7f82-11eb-16b7-3d3d379c6922
alt_sqrt(3)^2

# ╔═╡ 9d92ceca-7f83-11eb-082a-453c79ad3ebe
fd2(babylonian_sqrt)(0.9999..1)

# ╔═╡ 4cc1a348-7f83-11eb-2481-c5ad20f91866
is_concave(alt_sqrt,(0.9999..1))

# ╔═╡ Cell order:
# ╟─015aa792-7444-4369-b1e6-dd46202e0ded
# ╠═239a8a92-784c-11eb-34e8-e9a85b781eb9
# ╟─955954ed-2eeb-43d3-8d6f-2b9500c75461
# ╟─7a1933fa-77a7-11eb-1f0d-711f1ea70487
# ╠═71ce995d-7d4f-49b9-8fc4-08f03362bb79
# ╟─e47c8ff2-78e8-11eb-0562-c5f7bd22f799
# ╠═ef87973a-779d-11eb-2ad6-e3b77b5e9b86
# ╟─f9b3ecb2-78e8-11eb-1d45-0d11fa8e3c3f
# ╠═7f4f99b8-2535-4238-b6f4-6ba5343d2af4
# ╠═5d30c4a0-779e-11eb-17fc-055fc6902ec5
# ╟─fd05f400-78e8-11eb-3888-a5f3553eb3df
# ╠═7cbd70ce-786c-11eb-12bb-1b841aa95e37
# ╠═182eda1c-779f-11eb-13e2-15ba3dcd580c
# ╟─b8a687da-6550-4a39-9f90-b5647862ca14
# ╠═ffcec872-77a0-11eb-2d0a-8f88a10ba81f
# ╠═a8697704-7876-11eb-23b3-7d74249e5949
# ╠═dfc40372-7876-11eb-2994-ad805f351fac
# ╠═1404f4f0-784c-11eb-0932-efff4825cc60
# ╟─fa6ef650-786c-11eb-1e49-7bf262569a6c
# ╠═58e5ab1a-77a1-11eb-3308-a5d50f7acb58
# ╠═0a3004d2-77a3-11eb-082b-5d34f31e5418
# ╟─25185afc-78e9-11eb-261e-6fcf5f6f8686
# ╠═e1846c2c-77a4-11eb-32c9-251b711e6fe7
# ╠═e3452cb6-77a3-11eb-3ab2-07ed1eb530cb
# ╟─63719708-4f23-447b-a980-1ccbcecfd83b
# ╠═97ce16b2-5d0d-4582-bf44-4d428a3a9404
# ╠═858efa8d-0c46-497b-9309-8312b2d99837
# ╠═2510c375-f678-4f11-b0b3-e0f2f0ed0a20
# ╠═632f3085-2cbc-4bed-b51c-db7754f5e15b
# ╠═f9dac3de-8ea6-4cbe-908c-c6698bba467e
# ╠═506fee66-0b78-46d6-bbdd-30ac6659b00a
# ╠═f29ef59c-d147-4cee-aca2-a3f113d2af47
# ╠═ba5dacb8-96af-443f-bcef-b369cdc12b5d
# ╟─3a21c8bc-78e9-11eb-1bb6-f510c764f0f6
# ╠═f977f8d6-77a5-11eb-2440-9bb6e6a68a78
# ╠═9fbd1d24-786a-11eb-21d9-79677237b7cc
# ╠═21317690-786e-11eb-3e6b-2be6200e8292
# ╠═23a0568c-77a6-11eb-269f-39a5226f95a3
# ╠═c5712944-7869-11eb-0ec6-3dbf3b292df3
# ╠═c356ae34-786d-11eb-097d-bffdf237381a
# ╠═9b9b0ea8-786b-11eb-3c65-53e6598a252f
# ╠═720f91ba-786d-11eb-18a5-ebd0e5305f4f
# ╠═2d551cb4-7f72-11eb-35e4-c54d3d9af0d0
# ╠═393556de-7f72-11eb-1f5d-37039d1fba5c
# ╠═a251e37c-7f7b-11eb-271d-995151e5097f
# ╠═fa905e32-7f72-11eb-1d2b-f9ce228a0187
# ╠═10e5a462-7f73-11eb-0ad7-d1093a2ed069
# ╠═87e5ecc2-7f7b-11eb-10e1-e7b6d94eeb6d
# ╠═1a577b6a-7f73-11eb-1226-310cc3aef54c
# ╟─f089ffce-7f7c-11eb-017e-09f334372e54
# ╠═68e14a16-7f7d-11eb-33fe-051a9e6adde2
# ╠═c4bc16e0-7f7f-11eb-04cd-814d138c5f58
# ╠═2bd28ede-7f7d-11eb-2f6d-134ba71a8301
# ╠═7033f4ec-7f7f-11eb-1b88-197f7d1c8930
# ╠═e8b2c538-7f81-11eb-0f16-9720a642389b
# ╠═e3a1b212-7f82-11eb-16b7-3d3d379c6922
# ╠═9d92ceca-7f83-11eb-082a-453c79ad3ebe
# ╠═4cc1a348-7f83-11eb-2481-c5ad20f91866
