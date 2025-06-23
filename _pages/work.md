---
title: A few things I work on
header:
  image: /assets/images/outtosea.jpg
permalink: /work/
---

If you'd like to chat more about my work, email me at `gregory.leclaire.wagner@gmail.com`. 
See my [github] for real-time updates on my software projects.

### [Oceananigans] and [ClimaOcean]

I lead the development of the ocean modeling software [Oceananigans], and the ocean
component it's based on, [ClimaOcean]. 
Oceananigans is written in the [Julia programming language][julia] and
accelerated by GPUs.
It's simple and intuitive enough for idealized classroom-ready tutorials,
but also 10-50x faster than existing models, enabling high-resolution large eddy simulations in complex domains
and realistic mesoscale-turbulence-resolving global ocean simulations.
Here's a screenshot from the [Oceananigans documentation]:

![Oceananigans docs](/assets/figures/oceananigans_docs.png)

The Oceananigans and ClimaOcean community is hard at work on 
global coupled ocean and sea ice simulations, biogeochemistry simulations for verifying
[marine carbon dioxide removal], and [making Oceananigans differentiable] to enable the
the next generation of hybrid AI/physics ocean simulations.

### [ClimaSeaIce]

ClimaSeaIce is new software for simulating sea ice thermodynamics and mechanics that builds off Oceananigans.
As with Oceananigans, our goal is to develop software that is flexible and hackable enough to be used like a research code
but fast and sophisticated enough to power the sea ice component of a new climate model.

### Turbulent ocean mixing

I develop models for turbulent mixing at scales between 1 and 100 meters.
My work combines "traditional" theory-based model development
with modern data-driven techniques for parameter estimation and uncertainty quantification.

### Surface gravity waves and wave-turbulence interactions

Frothing, whitecapping, undulating surface waves are the top of the
ocean surface boundary layer. I collaborate with experimentalists and observationalists
to develop, improve, and validate theories and numerical simulations of near-surface
turbulence interacting with surface waves.
The image below depicts surface-wave-affected turbulence simulated by
[Oceananigans].

![Forced growth](/assets/figures/forced_growth.png)

Information about how to produce this image can be found
[on github](https://github.com/glwagner/WaveTransmittedTurbulence.jl),
or in [this paper](https://glwagner.github.io/assets/pdf/near-inertial-waves-turbulence-growth-swell-preprint.pdf).

[Subsurface internal waves]: http://www.livescience.com/42459-huge-ocean-internal-waves-explained.html
[quasi-geostrophic eddies]: https://en.wikipedia.org/wiki/Geostrophic_current
[FourierFlows.jl]: https://github.com/FourierFlows/FourierFlows.jl
[Navid Constantinou]: http://www.navidconstantinou.com
[CliMa]: https://clima.caltech.edu
[julia]: https://julialang.org
[Oceananigans]: https://clima.github.io/OceananigansDocumentation/stable/
[ClimaSeaIce]: https://github.com/CliMA/ClimaSeaIce.jl
[ClimaOcean]: https://github.com/CliMA/ClimaOcean.jl
[github]: https://github.com/glwagner
[marine carbon dioxide removal]: https://www.whitehouse.gov/ostp/news-updates/2023/10/06/marine-carbon-dioxide-removal-potential-ways-to-harness-the-ocean-to-mitigate-climate-change/
[making Oceananigans differentiable]: https://dj4earth.github.io/
[Oceananigans documentation]: clima.github.io/OceananigansDocumentation/stable

