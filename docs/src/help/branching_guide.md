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
the history linear and simple. A good compromise to the rebase vs. merge commit
debate for this step is to first do an interactive rebase of the feature branch
on master, and then do a non-fast-forward merge.

_Feature Example:_

```sh
git checkout -b feature/my-feature master

... Make commits to feature/my-feature to finish the feature ...

git rebase -i master
git checkout master
git merge --no-ff feature/my-feature
git push origin master
git branch -d feature/my-feature
```

### Making releases

4. You create a new branch for a new release. It branches off from `master` at the
point that you decided `master` has all the necessary features. This is not
necessarily the tip of the `master` branch.

5. From then on new work, aimed for the _next_ release, is pushed to `master` as
always, and any necessary changes for the _current_ release are pushed to the
release branch. Once the release is ready, you tag the top of the release branch.

6. Once the release is ready, tag the top of the release branch with a version
number. Then do a typical merge of the release branch into `master`.
Any changes that were made during the release will now be part of `master`.
Delete the release branch.

_Release Example:_

```sh
git checkout -b release/2.3.0 9efc5d

... Make commits to release/2.3.0 to finish the release ...

git tag 2.3.0
git checkout master
git merge release/2.3.0
git push --tags origin master
git branch -d release/2.3.0
git push origin :release/2.3.0
```

7. Do your pushes, and go to GitHub to make your release available.

### Hot-fixes

8. When a hot-fix is needed, create a hot-fix branch, that branches from the
release tag that you want to apply the fix to.

9. Push the needed fixes to the hot-fix branch.

10. When the fix is ready, tag the top of the fix branch with a new release,
merge it into master, finally delete the hot-fix branch.

_Hot-fix example:_

```sh
git checkout -b hotfix/2.3.1 2.3.0

... Add commits which fix the problem ...

git tag 2.3.1
git checkout master
git merge hotfix/2.3.1
git push --tags origin master
git branch -d hotfix/2.3.1
```

**IMPORTANT:**
There is one special case when finishing a hot-fix branch.
If a release branch has already been cut in preparation for the next release
before the hot-fix was finished, you need to merge the hot-fix branch not to
master, but to that release branch.
