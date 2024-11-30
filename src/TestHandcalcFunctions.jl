module TestHandcalcFunctions


export calc_Ix, calc_Is, calc_Iy, area_rectangle, sym_function

function calc_Ix(b, h)
    Ix = b*h^3/12
    return Ix
end

function calc_Ix(;b, h)
    Ix = b*h^3/12
    return Ix
end

"""
    calc_Iy(h, b=15; expo=3, denominator=12)

Calculate Iy (second moment of inertia abour the y-axis) of a rectangle.

# Arguments
- `h`: the height of the rectangle
- `b`: the width of the rectangle
- `expo`: the exponent (for testing purposes)
- `denominator`: the denominator (for testing purposes)



"""
function calc_Iy(h, b=15; expo=3, denominator=12)
    Iy = h*b^expo/denominator
    return Iy
end

function calc_I()
    I = 5*15^3/12
    # return I
end

function area_sqare(side)
    area = side^2
end

function area_rectangle(l, w)
    area = l * w
end

function calculate_Ix(b, h)
    Ix = b*h^3/12; "moment of inertia";
    return Ix
end

function calc_Is(b, h)
    Ix = calc_Ix(b, h)
    Iy = calc_Iy(h, b)#, expo=3, denominator=12)
    return Ix, Iy
end

function sym_function(x)
    y = x
end

    module SubA
        module SubB
            sub_module_func(a, b) = c = a + b
        end
    end

function where_func(a::T, b::S) where {T <:Number,S <: Number}
    c = a + b
end

function calc_if_Is(b, h, type)
    I = if type == :Ix
        calc_Ix(b, h)
    else
        calc_Iy(h, b)
    end

    return I
end


end
