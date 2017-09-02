# [How do I contribute by making a pull request?](@id pull_requests)

So you've found a package in BioJulia that you have used and like, and have
decided you want to correct or add something? Great! You've come to the right
place! :)

You can contribute to the code and documentation of an existing BioJulia
software project by forking the code repository on github, and making a pull
request.

## Get an account on Github

The first thing you should do is make yourself an account on
[Github](https://github.com). The chances are you already have one if you've
done coding before and wanted to make any scripts or software from a science
project public.

## Make your own fork of the package

The first step to contributing is to find the
[BioJulia repository](https://github.com/BioJulia) for the package.
Hit the 'Fork' button on the repositories page to create a forked copy of the
package for your own Github account. This is your blank slate to work on, and
will ensure your work and experiments won't hinder other users of the released
and stable package.

From there you can download your fork of the package and work on it on your
machine using git.

Here's an example, assuming you forked the BioJulia package "BioSequences.jl",
using the git command in a terminal:

```sh
git clone https://github.com/<YOUR_GITHUB_USERNAME_HERE>/BioSequences.jl.git
```

Git will download or "clone" your fork and put it in a folder called
BioSequences.jl it creates in your current directory.

## Make changes on your fork of the package

Make changes on your package by doing the following with git.

First, you need to check-out a branch.

If you are unfamiliar with branching, branching is the way to work on different
versions of a repository at one time, with git. By default most code repositories
have one branch named "master".
"master" is considered to be the definitive branch.
We use branches to experiment and make edits before committing them to "master".

Let's see an example, if I wanted to create some new awesome feature for
BioSequences.jl, I might call this branch that I will work on "awesome-feature":

```sh
cd BioSequences.jl
git checkout -b awesome-feature
```

Ok, assume now we opened up some files in BioJulia, and I have edited them.
We also added some new files as well! Now what do we do?

Well one of the first things is to add the new files using git, so as git will
track them. For example, let's assume our file is called new-awesome.jl, and is
located in the "src" folder, which is inside the "BioSequences.jl" folder.

```sh
git add src/new-awesome.jl
```

Ok, since the files we edited were already in "BioSequences.jl", let us assume
git is already tracking them.

We now have to *commit* the new file we've added, as well as the changes to the
files we edited.

This is done with git:

```sh
git commit -am"Added a new awesome feature"
```

Here the flags -a and -m mean to commit all changes ('a'), and to add the
message ('m') which explains what the new commit is.

## Push your changes to your fork

Ok, with that done, we want to push our new changes up to our fork on our
Github account:

```sh
git push origin awesome-feature
```

Now if we went to the Github site and looked at the page for our BioSequences.jl
fork, it would also have the awesome-feature branch.

## Make the pull request to BioJulia's copy of BioSequences.jl

Now all that's left is to make a "pull request" to merge the changes that have
been made on the "awesome-feature" branch, into the "master" branch, of BioJulia's
official BioSequences.jl repository.

The best guide on how to make a pull request is probably offered by Github
themselves [here](https://help.github.com/articles/creating-a-pull-request-from-a-fork/).

We can continue to add change commits to "awesome-feature" and push them up to
our BioSequences.jl fork, and they will appear in the pull request to merge
"awesome-feature" into BioJulia's BioSequences.jl "master" branch.  

## The BioJulia Pull Request review

Other members of the BioJulia organisation, will review the code and
documentation in the pull request, and will assess it according to the
[BioJulia code and package guidelines](code_style.md).

Your pull request will be accepted and merged if:

1. The dedicated package maintainers approve the pull request for merging.
2. The automated build system confirms that all unit tests pass without any issues.

There may be package-specific requirements or guidelines for contributors with
some of BioJulia's packages. Most of the time there will not be, but it is a
good idea to check the site of the specific BioJulia package e.g.
(https://biojulia.net/BioSequences.jl) to make sure.
