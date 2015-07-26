module VhdlEntityTree(
buildTopLevelTree,
EntityTree
)where

import Data.Tree
import qualified Data.List as List
import Data.Maybe

type Entity = String
type EntityTree = Tree Entity

buildTopLevelTree :: Entity -> [(Entity,[Entity])] -> Tree Entity
buildTopLevelTree topEnt entAList = Node topEnt (map (`buildTopLevelTree` entAList) entForest)
    where
        entForest = if (isNothing entLook) then [] else entJust
        entLook = List.lookup topEnt entAList
        entJust = fromJust entLook
