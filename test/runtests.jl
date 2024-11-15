using TestHandcalcFunctions
using Test

@testset "TestHandcalcFunctions.jl" begin
    @test calc_Ix(5, 15) == 1406.25
    @test TestHandcalcFunctions.calc_I() == 1406.25
    @test TestHandcalcFunctions.calc_Iy(5,) == 1406.25
    @test TestHandcalcFunctions.calc_Iy(15,5,expo=2) == 31.25
    @test TestHandcalcFunctions.calc_Iy(15,5;expo=2, denominator=10) == 37.5
    @test TestHandcalcFunctions.area_sqare(3) == 9
    @test TestHandcalcFunctions.area_rectangle(3, 5) == 15
    @test TestHandcalcFunctions.calculate_Ix(5, 15) == 1406.25
    @test TestHandcalcFunctions.calc_Is(5, 15) == (1406.25, 156.25)
    @test TestHandcalcFunctions.sym_function(:hello) == :hello
end
