# [Organization of the BioJulia community](@id community_structure)

In order to provide the best possible experience for new and existing users of
Julia from the life-sciences. A little bit of structure and organization is
necessary.

## The package ecosystem and Maintainers

The BioJulia software ecosystem, around which the BioJulia community is based,
consists of a growing number of individual packages.

Each package is dedicated to introducing a specific data type or algorithm, or
dealing with a specific biological problem or pipeline.

Whilst there are some "meta-packages" such as Bio.jl, which bundle individual
packages together for convenience of installation and use, most of the BioJulia
software ecosystem is quite decentralized.

Therefore, it made sense that maintainership of the packages should also be
fairly decentralized, to achieve this, we created the role of a
"Dedicated Maintainer", and have a Maintainers team.

### [Dedicated Maintainers](@id dedicated_maintainers)  

Packages have at least one "Dedicated Maintainer" who has admin access to the
package.
Typically this will be the original author of the package, when they contribute
it to BioJulia.
However, popular or larger packages may have multiple such dedicated
maintainers.
Dedicated maintainers may be recruited through on-boarding, and may leave their
position through [off-boarding](@ref off_boarding).

Dedicated maintainers are listed on their project's README file, and

The dedicated maintainer(s) will be responsible for the following for their
package:

1. Deciding the branching model used and how branches are protected.
2. Reviewing pull requests, and issues for that package.
3. To tag releases of a package at suitable points in the lifetime of the package.
4. To be the first contact for new contributors, community members and
   maintainers.
5. To uphold the [BioJulia code of conduct](@ref conduct_code), and report any
   incidents to a BioJulia [admin](@ref admin_members) member.

Dedicated maintainers hold admin level access for any package(s) for which they
are listed as a dedicated maintainer, and so new contributors to BioJulia should
rest assured they will not be 'giving up' any package they decide to contribute,
they shall remain that package's administrator.   

### The Maintainers Team

All dedicated maintainers are added the the Maintainers team.

Whilst, dedicated maintainers have admin access to specific packages, all
maintainers in the Maintainers team have push access to all code packages in
the BioJulia ecosystem.

This allows for a community spirit where maintainers who are dedicated primarily
to other packages may step in to help other maintainers to resolve a PR or issue.
As such, newer maintainers and researchers contributing a package to the BioJulia
ecosystem can rest assured help will always be at hand from our community.

However, if you are a maintainer stepping in to help the dedicated maintainer(s)
of another package, please respect them by first offering to step in and help
resolve something, and secondly, by asking the Dedicated Maintainer before doing
advanced and potentially destructive git operations e.g forcing pushes to
branches (especially master), or re-writing history of branches.

## [Administrators](@id admin_members)

BioJulia has a select group of members in an Admin team.
This team has administrative access to all repositories in the BioJulia project.

The administrators are expected to:

1. Uphold the [BioJulia code of conduct](@ref conduct_code)
2. Respond to conduct breaches by enacting appropriate [incident response](@ref incident_response).
3. Act as mentors to all other BioJulia maintainers.
4. Assist maintainers in upkeep of software packages when requested. Typically
   when harder tasks such as re-bases and history manipulation may be required.
5. Maintain BioJulia infrastructure.

Such members have often been contributing to BioJulia for a long time, and may
even be founders present at the inception of the project.
In order to become an admin, one does not necessarily have to contribute large
amounts of code to the project. Rather the decision to on-board a member to
an admin position depends on how long they have been using and contributing to
BioJulia, and a positive interaction and involvement with the community,
