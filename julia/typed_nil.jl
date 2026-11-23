struct ValidationError <: Exception
    field::String
end

function validate(name)::Union{Exception,Nothing}
    problem = isempty(name) ? ValidationError("name") : nothing
    return problem
end

println(validate("ada") === nothing ? "valid" : "invalid")
