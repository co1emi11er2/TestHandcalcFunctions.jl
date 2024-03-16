using TestHandcalcFunctions
using Documenter

DocMeta.setdocmeta!(TestHandcalcFunctions, :DocTestSetup, :(using TestHandcalcFunctions); recursive=true)

makedocs(;
    modules=[TestHandcalcFunctions],
    authors="Cole Miller",
    sitename="TestHandcalcFunctions.jl",
    format=Documenter.HTML(;
        canonical="https://co1emi11er2.github.io/TestHandcalcFunctions.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/co1emi11er2/TestHandcalcFunctions.jl",
    devbranch="main",
)
