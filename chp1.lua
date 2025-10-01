--[[ 
takeaways
1. `lua -i -lchp1` allows you to run functions declared in a file in interactive mode
2. `dofile('chp1.lua')` does a similar thing
3.  1 is not inherintly true, it's only true when using and/or/not, 
    like 1 == true is `false` but 1 and true is `true`
4.  in the case of `4 and 5`, we check 4. four is true, so we check 5. 5 is also true, so we return 5.
    in the case of `nil and 13`, check nil. nil is falsy, so don't have to check 13. we return nil.

5.  in the case of `false or "hi"` we check false, and we have to check "hi", which is true, so we return "hi"
    in the case of `nil or false` we check nil, which is false, so we have to check false. both are false. so we return false.

6.  lua basicaly returns the value it had to check last. if the first value of an and is false, we don't have to check the rest of the statement.
    we can jsut return the first value, denoting that it's false.
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

-- 1.6: check if something is a boolean with using function type
function isBoolean(x)
    if x == true or x == false then
        return true
    end
    return false
end

-- 1.7: it's not necessary but i would still have them since it reads way better
-- (x and y and (not z)) or ((not y) and x)
-- x and y and not z or not y and x

-- 1.8: print the name of the script without hard coding it's value
-- must be ran like: `lua chp1.lua`
function printFunctionName()
    print(arg[0])
end