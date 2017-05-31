# Databases 1 example

A notated exemplar of extracting a Database Structure from a Domain, accompanying the Makers Academy [Databases 1](https://github.com/makersacademy/skills-workshops/blob/master/week-4/databases_1) Skills Workshop.

## Definitions

- **Program**: models a domain.
- **Domain**: the realm the program models.
- **Database Structure**: a persistent organised collection of information relevant to the domain.

### A bit more about Domains

Domains are **functional**, and when we build programs we often start by modelling the domain entity with the **most central functionality**. This also means we don't model (i.e. we ignore) domain entities with no functional value.

For instance, when modelling **Santander Cycles** (formerly 'Boris Bikes'), we have, among others, the following possible domain entities:

- Docking Stations
- Bikes
- Vans
- Garages
- Santander
- Barclays (the former sponsor)
- Docking Station buttons
- Gears on Bikes
- Engines in Vans
- etc.

We start by building a *Minimum Viable Product* that models the *most important functional aspects of the domain*. So, Docking Stations and Bikes. Those things get us closer to an accurate domain model than building, say, a Santander entity (or even a Van or Garage). They also _constrain_ us, which helps us to understand what's important to model and what isn't. Once we're putting Bikes in Docking Stations and breaking them, we are less tempted to introduce account management, insurance, sponsorship, and any other thing we might accidentally go and build if we started with a `Santander` entity.

> This is not the only school of thought when building programs. Some programmers, for example Fred George, advocate not building the thing with the *most important functional aspect of the domain* but instead building the *most atomic building block of the domain*. For example: while an MVP approach to building a banking system would probably start with an `Account`, withdrawals and deposits, Fred George would advocate starting from modelling `Quantity`, `Transaction`, and `Money`. This approach is very successful, although arguably more advanced.
