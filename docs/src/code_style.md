# BioJulia package and code guidelines

## Requirements for BioJulia packages

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
   
   We use Lapidary.jl and mkdocs, to generate such documentation
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

## Style requirements for code

* Indent with 4 spaces.

* Type names are camel case, with the first letter capitalized. E.g. `SomeVeryUsefulType`.

* Module names are also camel case.

* Function names, apart from constructors, are all lowercase.
  Include underscores between words only if the name would be hard 
  to read without.
  E.g.  `start`, `stop`, `findletter` `find_last_digit`.

* Generally try to keep lines below 80-columns, unless splitting a long line
  onto multiple lines makes it harder to read.

* Files that declare modules should only declare the module, and import any
  modules that it requires. Any code should be included from separate files.
  E.g.:
 
```julia
module AwesomeFeatures
      
using IntervalsTrees, JSON
      
include("feature1.jl")
include("feature2.jl")
      
end
```

* Files that declare modules should have the same name name of the module.
  E.g the module `SomeModule` is declared under the file `SomeModule.jl`.

* Separate logical blocks of code with one blank line,
  or two blank lines for function/type definitions.

* When extending method definitions, explicitly import the method.

```julia
import Base: start, next, done
```

* Document functions using bare docstrings before a definition:

```julia
"This function foo's something"
foo(x) = 2*x
```

* Functions that get or set variables in a type should not be
  prefixed with 'get' or 'set'.
  The getter should be named for the variable it sets, and the setter
  should have the same name as the getter, with the suffix `!`.
  For exmaple, for the variable `names`:

```julia
name(node) # get node name
name!(node, "somename") # set node name
```
