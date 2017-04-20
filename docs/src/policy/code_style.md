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
  then julia's ternary operator should be used.

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
