-- Problem 1
-- Multiples of 3 and 5

-- If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

-- Find the sum of all the multiples of 3 or 5 below 1000.

module Euler.Multiples(solution) where

below :: (Num a, Enum a) => a -> [a]
below x = [1 .. (x - 1)]

isMultiple :: Integral a => a -> Bool
isMultiple x = x `rem` 3 == 0 || x `rem` 5 == 0

solution :: Integral a => a
solution = sum . filter isMultiple $ below 1000
