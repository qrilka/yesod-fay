{-# LANGUAGE DeriveDataTypeable #-}
module SharedTypes where

import Language.Fay.Yesod
import Data.Data
import Language.Fay.FFI

data Command = RollDie (Returns Int)
    deriving (Read, Typeable, Data)
instance Foreign Command
