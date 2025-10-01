--[[ 
takeaways
1. `lua -i -lchp1` allows you to run functions declared in a file in interactive mode
2. `dofile('chp1.lua')` does a similar thing
]]

-- 1.1: allow function to take negative values
function factorial(n)
    if n < 0 then
        return -1
    end
    if n == 0 then
        return 1
    else 
        return n * factorial(n-1)
    end
end

-- 1.2: -l vs dofile
-- i think i profile the -l version
function twice(x)
    return 2.0 * x
end

-- 1.3: i believe SQL also uses thhis comment syntax

-- 1.4: valid identifiers
__ = 10
_end = 11
End = 12
-- end = 13 (not allowed)
-- until? = 14 (not allowed)
-- nil = 15 (not allowed)
NULL = 16
-- one-step = 17 (not allowed)

-- 1.5: type(nil) == nil?
-- returns FALSE because type() always returns a string
-- type(nil) == nil      --> false
-- type(nil) == 'nil'    --> true
