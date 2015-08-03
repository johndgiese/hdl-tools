module VhdlEntityTree (
    buildTopLevelTree,
    EntityTree,
    Entity(..),
) where

import Data.Tree
import Text.JSON
import qualified Data.List as List
import Data.Maybe
import Json

data Entity = Entity { name :: String
                     , filepath :: String
                     , numLines :: Int
                     } deriving (Eq, Show)
        
type EntityTree = Tree Entity

buildTopLevelTree :: Entity -> [(Entity, [Entity])] -> Tree Entity
buildTopLevelTree topEnt entityChildren = Node topEnt (map (`buildTopLevelTree` entityChildren) entForest)
    where
        entForest = if (isNothing entLook) then [] else entJust
        entLook = List.lookup topEnt entityChildren
        entJust = fromJust entLook

instance JSON Entity where
    showJSON e = JSObject $ toJSObject [("filepath", showJSON $ filepath e), ("numLines", showJSON $ numLines e), ("name", showJSON $ name e)]
    readJSON (JSObject o)
        | isNothing name || isNothing filepath || isNothing numLines = Error "Unable to read Entity"
        | otherwise = Entity <$> (readJSON $ fromJust name) <*> (readJSON $ fromJust filepath) <*> (readJSON $ fromJust numLines)
        where
            name = "name" `lookup` oAssocList
            filepath = "filepath" `lookup` oAssocList
            numLines = "numLines" `lookup` oAssocList
            oAssocList = fromJSObject o

    readJSON _ = Error "Unable to read Entity"
