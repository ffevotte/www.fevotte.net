---
layout: page
permalink: /
sitemap-priority: 1.0
---

# Research interests

My interest lies in the performance and quality of numerical simulations. Such
simulations are used more and more everyday, not only as numerical experiments
helping understand physics, but also as input for decision-makers. It is
therefore equally important that simulations meet the performance level required
by their use in industrial contexts, but also that the results are precise
enough to get confidence in the decisions that are taken based on them.


## Neutron transport

I'm interested in the broad field of simulation for the physics of (pressurized
water) nuclear reactors, in particular as far as neutronics is concerned.

More precisely, I'm interested in all numerical techniques helping depart from
the classical, industrial two-stage methods in which the neutron transport
equation is only solved at the scale of a fuel assembly, and whole core
calculations are performed using the approximate diffusion model.

I work on the definition and implementation of numerical methods allowing the
solution of the neutron transport equation at the scale of whole 3D nuclear
reactor cores. In particular, I specialize in numerical techniques involving the
Method of Characteristics (MoC) and fusion-like methods (2D-1D iterations), such
as implemented in the MICADO solver.


## Numerical verification

As far as results quality is involved, I'm interested in the process of
numerical verification, in which one checks the consistency between the obtained
result and the mathematical problem it is supposed to be a solution of. More
precisely, I try to investigate the effect of using floating-point arithmetics
to implement algorithms that are usually designed to work with real numbers.

I am one of the original developers
of [Verrou](http://github.com/edf-hpc/verrou), a tool relying on monte-carlo
arithmetics and random rounding to help diagnose and fix numerical instabilities
in industrial scientific computing codes.


# Students

- **Wesley Ford**, PhD student (2016-present), "Towards stable and efficient
  acceleration methods in parallel contexts for the neutron transport equation",
  director: Christophe Calvin.

- **Romain Picot**, PhD student (2015-present), "Numerical verification of
  industrial scientific computing codes",
  director: [Fabienne Jézéquel](http://www-pequan.lip6.fr/~jezequel/index.html).

- **Rebecca Jeffers**, PhD student (2013-2016), "Goal Based Coupled Adaptive
  Mesh Refinement (AMR) and angular adaptivity on Cartesian Meshes for Modelling
  Neutron Transport in PWR Reactor Cores",
  director: [Matthew D. Eaton](http://www.imperial.ac.uk/people/m.eaton).


- **Marc-André Lajoie**, PhD student (2011-2017), "Development of a generalized
  prismatic parallel scheme for deterministic neutron transport calculations in
  heterogeneous 3-D geometries",
  co-director:
  [Guy Marleau](http://www.polymtl.ca/recherche/rc/en/professeurs/details.php?NoProf=142).
