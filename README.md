# limp-cbc
Solve your integer linear programming problems with CBC.
This library uses the constructors in [limp](https://github.com/amosr/limp) to define integer linear programming problems, then passes them to the CBC solver to find solutions.

[![Build Status](https://travis-ci.org/amosr/limp-cbc.svg?branch=master)](https://travis-ci.org/amosr/limp-cbc)

## Example usage
You can define an integer linear program using the `Program` type.
This type is parameterised over three type parameters: `Program z r c`, where `z` is the type of integer-valued variables; `r` is the type of real-valued variables, and `c` is a description of how to represent results.
This solver only supports the `IntDouble` representation type – that is, integers are represented as machine Ints and reals as double-precision floating point values.

You can define a program with an integer variable "a" and a real variable "b" as follows:

```
import Numeric.Limp.Rep
import Numeric.Limp.Program

-- Minimise     a + b
-- Subject to   a + 2b >= 3
-- Where        0 <= a <= 10 :: Z
--              0 <= b <= 10 :: R
problem1 :: Direction -> Program String String IntDouble
problem1 dir
 = program dir
           (z1 "a" .+. r1 "b" )
           (z1 "a" .+. r "b" 2 :>= con 3)
           [ lowerUpperZ 0 "a" 10
           , lowerUpperR 0 "b" 10 ]
```

You can then use `Numeric.Limp.Solvers.Cbc.solve` to find a solution using CBC. This gives you an `Assignment z r IntDouble` for the variables, which is a mapping from `z` to `Int` and a mapping from `r` to `Double`:

```
import Numeric.Limp.Solvers.Cbc

solve_problem :: (Show z, Show r, Ord z, Ord r) => (Direction -> Program z r IntDouble) -> IO ()
solve_problem problem
 = do   let a1 = solve $ problem Minimise
        putStrLn "*** Minimise *** "
        show_result a1

        let a2 = solve $ problem Maximise
        putStrLn "*** Maximise *** "
        show_result a2

show_result :: (Show z, Show r, Ord z, Ord r) => Either Error (Assignment z r IntDouble) -> IO ()
show_result as
 = case as of
    Left e
     -> do putStrLn "Error:"
           print e
    Right a
     -> do putStrLn "Success:"
           print a
```

Further examples are available in the [examples directory](https://github.com/amosr/limp-cbc/tree/master/examples).
