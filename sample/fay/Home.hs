module Home where

import Prelude
import FFI
import Language.Fay.JQuery
import Language.Fay.Yesod
import SharedTypes

main :: Fay ()
main = void $ select "#roll" >>= onClick (const $ call RollDie (alert . show) >> return False)
