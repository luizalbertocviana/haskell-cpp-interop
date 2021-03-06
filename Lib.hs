module Lib (withCPoint, getX, getY) where

import Foreign.C.Types
import Foreign.Ptr

data CPoint = CPoint

foreign import ccall "CPoint_new" newPoint :: CDouble -> CDouble -> IO (Ptr CPoint)

foreign import ccall "CPoint_delete" deletePoint :: Ptr CPoint -> IO ()

foreign import ccall "CPoint_x" getX :: Ptr CPoint -> CDouble 

foreign import ccall "CPoint_y" getY :: Ptr CPoint -> CDouble 

withCPoint :: CDouble -> CDouble -> (Ptr CPoint -> IO a) -> IO a
withCPoint x y f = do
  cpoint <- newPoint x y
  result <- f cpoint
  deletePoint cpoint
  pure result
