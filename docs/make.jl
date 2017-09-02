using Documenter

makedocs(
    format = :html,
    sitename = "Contributing to BioJulia",
    pages = [
        "Home" => "index.md",
        "How do I...?" => [
            "Contribute packages" => "help/package_submission.md",
            "Join the BioJulia GitHub organisation" => "help/join_biojulia.md",
            "Choose a branching model" => "help/branching_guide.md"
        ],
        "Policies and Guidelines" => [
            "Community Organisation" => "policy/biojulia_organisation.md",
            "Code of conduct" => "policy/contributor_covenant.md",
            "Incident Response" => "policy/incident_response.md",
            "Code Style" => "policy/code_style.md",
            "Package Requirements" => "policy/package_requirements.md",
            "Pull Requests" => "policy/pull_requests.md",
            "Off-boarding" => "policy/off_boarding.md"
        ]
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
