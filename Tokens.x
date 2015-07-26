{
module Tokens (main,alexScanTokens) where
}

%wrapper "basic"

$letter = [a-zA-Z\_\-0-9]
$nonletter = [~$letter\n]

tokens :-

  $nonletter+       ;
  $letter+          {id}

{
main::IO ()
main = do
  s <- getContents
  let toks = alexScanTokens s
  print toks
}
