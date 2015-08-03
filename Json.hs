module Json (
    
) where

import Text.JSON
import Data.Tree
import Data.Maybe

instance JSON a => JSON (Tree a) where
    showJSON (Node p c) = JSObject $ toJSObject [("value", showJSON p), ("children", showJSONs c)] 
    readJSON (JSObject o)
        | isNothing value || isNothing children = Error "Unable to read Tree"
        | otherwise = Node <$> (readJSON $ fromJust value) <*> (readJSONs $ fromJust children)
        where
            value = "value" `lookup` oAssocList
            children = "children" `lookup` oAssocList
            oAssocList = fromJSObject o

    readJSON _ = Error "Unable to read Tree"

