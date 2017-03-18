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

## Style requirements for code

* Source code files should have the following style of header:
  ```
  # Title
  # =====
  #
  # Short description.
  #
  # [Long description (optional)]
  #
  # This file is a part of BioJulia. License is MIT: <link to the license file>
  ```

* Indent with 4 spaces.

* When returning values from a function, use an explicit `return` statement. Be aware that functions in julia return the
  the result of the last statement in the function. 

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
  E.g.


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

* When extending method definitions, define the methods with a module name prefix. E.g.

```julia
function Base.start(iter::YourType)
  ...
end

Base.done(iter::YourType, state) = ...
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
  For example, for the variable `names`:

```julia
name(node) # get node name
name!(node, "somename") # set node name
```

* When using conditional branching, if code is statement-like, an
  if-else block should be used. However if the code is expression-like
  then julia's ternary operator should be used. E.g.
 
```julia
matches == sketchlen ? (return 1.0) : return matches / (2 * sketchlen - matches)

#The above code is more statement-like, with two return statements
#and so is more readable as a if-else block:

if matches == sketchlin
    return 1.0
else
    return matches / (2 * sketchlen - matches)
end

#However,

x == y ? '|' : ' '

#Returns one of two expression values; it is more expression-like
#and so using a ternary operator is perfectly readable, and is
#aceptable in BioJulia code.
```
