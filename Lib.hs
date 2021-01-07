module Lib where

import Foreign.C.Types
import Foreign.Ptr

data CPoint = CPoint

type CPointHandle = Ptr CPoint

foreign import ccall "CPoint_new" newPoint :: CDouble -> CDouble -> Ptr CPoint

foreign import ccall "CPoint_delete" deletePoint :: Ptr CPoint -> ()

foreign import ccall "CPoint_x" getX :: Ptr CPoint -> CDouble 

foreign import ccall "CPoint_y" getY :: Ptr CPoint -> CDouble 
