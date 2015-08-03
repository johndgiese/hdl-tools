import Data.Maybe
import Data.Tree
import System.Directory
import System.Environment
import qualified Data.List as List

import Text.JSON

import qualified Tokens as Tokens
import VhdlEntityTree

type Command = String

main = do
  args <- getArgs
  let cmds =  map parseCmdLineArg args
      vhdlFolderPath = justLookup "path" cmds
      topLevelEntity = Entity{name=justLookup "topLevel" cmds, filepath="blah", numLines=10}
  filePaths <- getDirectoryContents vhdlFolderPath
  let vhdlFilePaths = zipWith (++) (repeat vhdlFolderPath) $ filter (List.isInfixOf ".vhd") filePaths
  vhdlFileContents <- sequence $ map readFile vhdlFilePaths
  let entityLists = map (findEntities . Tokens.alexScanTokens) $ vhdlFileContents
      entityAssoc = map (\(parentEntity:childEntities)->(parentEntity, childEntities))  $ entityLists
      entityTree =  buildTopLevelTree topLevelEntity entityAssoc
  putStrLn $ encode entityTree

findEntities :: [String] -> [Entity]
findEntities e = map fromJust $ filter (/=Nothing) $ justFindEntities e

justFindEntities [] = []
justFindEntities (x:xs) = (if x == "entity" then Just entityVal else Nothing) : (justFindEntities xs)
    where
        entityVal = Entity{name=head xs, filepath="blah", numLines=10}


parseCmdLineArg :: String ->(Command,String)
parseCmdLineArg a
  | List.isPrefixOf "--path=" a = ("path",filter (/='"') arg)
  | List.isPrefixOf "--topLevel=" a = ("topLevel",arg)
  | otherwise = ("Invalid Command","")
  where
    arg = tail . snd $ List.break (=='=') a

justLookup ::(Eq a) => a -> [(a,k)] -> k
justLookup v aList = fromJust $ List.lookup v aList

