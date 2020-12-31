-- Problem 2
-- Even Fibonacci numbers

-- Each new term in the Fibonacci sequence is generated by adding the
-- previous two terms. By starting with 1 and 2, the first 10 terms
-- will be:
-- 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

-- By considering the terms in the Fibonacci sequence whose values do
-- not exceed four million, find the sum of the even-valued terms.

-- Sources used:
-- HaskellWiki: The Fibonacci sequence
-- medium.com/better-programming/algorithms-solving-the-fibonacci-
-- sequence-9aee63a7a946
-- https://stackoverflow.com/questions/13541034/how-to-filter-an-
-- infinite-list-in-haskell

module Euler.Fibonacci where

import Control.Monad.State

fib n = evalState (do
    forM [0..(n-1)] $ \_ -> do
        (a,b) <- get
        put (b,a+b)
    (a,b) <- get
    return a) $ (1,2)

isEven x = x `rem` 2 == 0

solution = sum . filter isEven . takeWhile (<= 4000000) $ map fib [0..]