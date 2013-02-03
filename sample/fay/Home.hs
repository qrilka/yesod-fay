module Home where

import Language.Fay.Types (Fay)
import Language.Fay.JQuery
import Language.Fay.Yesod
import SharedTypes

main :: Fay ()
main = void $ select "#roll" >>= onClick (const $ call RollDie (alert . show) >> return False)
