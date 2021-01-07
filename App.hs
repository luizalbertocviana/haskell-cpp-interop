module Main where

import Lib

test :: IO ()
test = withCPoint 2.0 3.0 $ \cpoint ->
  putStrLn $ "point coordinates are " ++ show (getX cpoint) ++ " " ++ show (getY cpoint)

main :: IO ()
main = test
