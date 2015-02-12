import System.Environment
import Data.List
import Data.Char
import Control.Parallel.Strategies
import Data.Set (Set)
import qualified Data.Set as Set
import Data.ByteString (ByteString)
import qualified Data.ByteString.Char8 as B

toSet :: ByteString -> Set ByteString
toSet = Set.fromList . B.words . (B.map toLower)

toWords :: ByteString -> [ByteString]
toWords s
    | B.null s  = []
    | otherwise = (B.inits s) ++ toWords (B.tail s)

validWord :: Set ByteString -> ByteString -> Bool
validWord dict w = B.length w > 3 && Set.member w dict

main :: IO ()
main = do
    (dfile:ifile:_) <- getArgs
    dictionary <- B.readFile dfile
    input <- B.readFile ifile
    let dict = toSet dictionary
        rows = (B.lines . B.map toLower) input
        cols = B.transpose rows
        wrds = foldr ((++) . toWords) [] (rows ++ cols)
        solutions = filter (validWord dict) wrds `using` parList rseq
    putStrLn $ B.unpack $ B.unlines $ solutions
