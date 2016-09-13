# Contribute by pull requests

Conributions of code and documentation to existing BioJulia repositories
take the form of pull requests (PR's). 

Before you start to work on your fix or addition to a BioJulia repository we recommend that you make your pull request early. This allows better collaboration with others, exchange of ideas, more code contributions from others (taking the pressure off you!), and better overall code as a result.

The first thing all developers should do when making a PR is create themselves a fork of the BioJulia repository they want to contribute to, and then create a branch on that fork for the PR. This keeps the number of branches on the BioJulia repositories manageable and limited to release branches, and branches for major milestones involving work from many contributors. All developers, even those with push and pull access to BioJulia repositories, should follow this guidance.

## The BioJulia Pull Request lifecycle

Pull Requests on BioJulia repositories go through several stages, and these stages are indicated by the following labels. Please use these labels to help let others know how far your are along with your work.

- **stage: planing**:
  You're planning. Figuring out the best way to code something or discussing ideas.
- **stage: WIP**:
  You're coding or writing, actively working on it. 
- **stage: RTR**:
  You're finished, and want others to review the work and see if it is ready to be accepted and merged into BioJulia.

## The BioJulia Pull Request review

Once the pull request enters the RTR (ready to review) stage, other members of the BioJulia organisation, will review the code and documentation in the pull request, and will assess it according to the
[BioJulia code and package guidelines](code_style.md).

Your pull request will be accepted and merged if:

1. Two reviewers subsequently recommend the pull request for merging.
2. The automated build system confirms that all unit tests pass without failiure. 


