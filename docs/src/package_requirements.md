# BioJulia package guidelines

All code in all packages in the BioJulia ecosystem should follow
the BioJulia [code style](/code_style) guide. 

We enforce the following requirements in our packages.

1. Types and functions must be documented using Julia's [docstrings](http://docs.julialang.org/en/latest/manual/documentation/).
   Documentation regarding specific implementation details that aren't relevant
   to users should be in the form of comments.

   Documentation may be omitted if the function is not exported
   (i.e. only used internally) and is short and obvious. E.g. `cube(x) = x^3`.

   However, please consider that what may be obvious to you as the write of the
   code, may not be obvious to others. Therefore, we do recommend documenting
   as much as possible, to help out fellow julia coders and biologists
   when they are reading and understanding the code. We are trying to
   make BioJulia packages as easy as possible to use, understand, and code
   on for everyone :)

2. In addition to documenting code in the source files through docstrings,
   we encourage contributers to create documentation which is more akin to
   a manual, complete with comprehensive explanations and examples of how
   to use the package.

   We use Documenter.jl and mkdocs, to generate such documentation
   and host it on the web.
   The source markdown files for such manuals are kept in the `docs/src/man`
   folder of each BioJulia package/repository.

3. All significant code must be tested.
   Tests should be organized into contexts, and into separate files based on
   module.
   Files for tests for a module go into an appropriately named
   folder, within the `test` folder in the Bio.jl git repo. E.g. tests
   for the Seq module of Bio.jl go in the `test/seq` folder of the Bio.jl
   package.

4. All code contributed should be compatible with the latest stable version of
   Julia.

5. If your contribution to a BioJulia package introduces a method which is
   shared among submodules, they should be declared in the top level module,
   and then extended by the submodules. For example, in Bio.jl, the method
   `seqname` was defined in `Bio.Seq` and overloaded by `Bio.Intervals`
   and `Bio.Align`. Therefore the declaration of the method was moved to `Bio`,
   and the three submodules extend the declared method.
