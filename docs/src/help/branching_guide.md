# Choosing and using a brannching moded for a repo

If you are a [dedicated maintainer](@ref dedicated_maintainers) on a BioJulia
package, you may be wondering which branching model to choose for development
and maintenance of your code.

If you are a contributor, knowing the branching model of a package may help
you work more smoothly with the maintainer of the package.

There are several options available, including git-flow.

Below is a BioJulia recommended branching model for your repo, but it is
only a suggestion. What is best for you as the
[dedicated maintainer](@ref dedicated_maintainers), is best for _you_.

The model below is a brief summary of the ['OneFlow model'](http://endoflineblog.com/oneflow-a-git-branching-model-and-workflow).
We describe it in summary here for convenience, but we recommend you check out
the blog article as a lot more justification and reasoning is presented on _why_ this
model is the way it is.

## Branching model

### During development

1. There is only one main branch - you can call it anything, but usually it's
called `master`.

2. Use temporary branches for features, releases, and bug-fixes. These temporary
branches are used as a convenience to share code with other developers and as a
backup measure. They are always removed once the changes present on them are
added to master.

3. Features are integrated onto the master branch primarily in a way which keeps
the history linear and simple. This is made easy since GitHub now allows you
to [rebase and merge](https://github.com/blog/2243-rebase-and-merge-pull-requests)
pull requests (But you have a lot of choice here, you could do rebases, you could
use merge commits, and you could do some hybrid approach between the two).

### Making releases

4. You create a new branch for a new release. It branches off from `master` at the
point that you decided `master` has all the necessary features.

5. From then on new work, aimed for the _next_ release, is pushed to `master` as
always, and any necessary changes for the _current_ release are pushed to the
release branch. Once the release is ready, you tag the top of the release branch.

6. Once the release is ready, tag the top of the release branch with a version
number. Then merge the release branch into `master` and push that changed
`master`. Any changes that were made during the release will now be part of
`master`. Delete the release branch.

7. Do you pushes, and got to GitHub to make your release available.

### Hot-fixes

8. When a hot-fix is needed, create a hot-fix branch, that branches from the
release tag that you want to apply the fix to.

9. Push the needed fixes to the hot-fix branch.

10. When the fix is ready, tag the top of the fix branch with a new release,
merge it into master, finally delete the hot-fix branch.
