using Documenter

makedocs(
    format = :html,
    sitename = "Contributing to BioJulia",
    pages = [
        "Home" => "README.md",
        "Contributing" => "CONTRIBUTING.md",
        "Etiquette and conduct" => "CODE_OF_CONDUCT.md"
    ],
    authors = "Ben J. Ward, The BioJulia organisation, and contributors."
)

deploydocs(
    repo = "github.com/BioJulia/Contributing.git",
    julia = "0.6",
    osname = "linux",
    target = "build",
    deps = nothing,
    make = nothing
)
