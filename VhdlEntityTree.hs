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
buildTopLevelTree topEnt entityChildren = Node topEnt (map (`buildTopLevelTree` entityChildren) entForest)
    where
        entForest = if (isNothing entLook) then [] else entJust
        entLook = List.lookup topEnt entityChildren
        entJust = fromJust entLook
