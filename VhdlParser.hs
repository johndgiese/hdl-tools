import Data.Maybe
import Data.Tree
import Text.JSON
import VhdlEntityTree
import System.Directory
import System.Environment
import qualified Data.List as List
import qualified Tokens as Tokens

type Command = String

main = do
  args <- getArgs
  let cmds =  map parseCmdLineArg args
      vhdlFolderPath = justLookup "path" cmds
      topLevelEntity = justLookup "topLevel" cmds
  filePaths <- getDirectoryContents vhdlFolderPath
  let vhdlFilePaths = zipWith (++) (repeat vhdlFolderPath) $ filter (List.isInfixOf ".vhd") filePaths
  xs <- sequence $ map readFile vhdlFilePaths
  let entityLists = map (findEntities . Tokens.alexScanTokens) $ xs
      entityAssoc = map (\(y:ys)->(y,ys)) $ filter (not . null) $ entityLists
  putStrLn $ drawTree $ buildTopLevelTree topLevelEntity entityAssoc
  writeFile (topLevelEntity ++ ".json") $ encode . toJSObject $ entityAssoc

findEntities :: [String] -> [String]
findEntities [] = []
findEntities (x:xs) = filter (/=[]) $ (if x == "entity" then head xs else []) : findEntities xs

parseCmdLineArg :: String ->(Command,String)
parseCmdLineArg a
  | List.isPrefixOf "--path=" a = ("path",filter (/='"') arg)
  | List.isPrefixOf "--topLevel=" a = ("topLevel",arg)
  | otherwise = ("Invalid Command","")
  where
    arg = tail . snd $ List.break (=='=') a

justLookup ::(Eq a) => a -> [(a,k)] -> k
justLookup v aList = fromJust $ List.lookup v aList

