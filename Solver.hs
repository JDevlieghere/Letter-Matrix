import System.Environment
import Data.Char
import Data.Set (Set)
import qualified Data.Set as Set
import Data.ByteString (ByteString)
import qualified Data.ByteString.Char8 as B

toSet :: ByteString -> Set ByteString
toSet = Set.fromList . B.words . B.map toLower

toWords :: ByteString -> [ByteString]
toWords s
    | B.null s  = []
    | otherwise = B.inits s ++ toWords (B.tail s)

solve :: Set ByteString -> [ByteString] -> [ByteString]
solve dict strs = filter valid wrds
    where wrds    = foldr ((++) . toWords) [] strs
          valid w = B.length w > 3 && Set.member w dict

main :: IO ()
main = do
    (dfile:ifile:_) <- getArgs
    dictionary <- B.readFile dfile
    input <- B.readFile ifile
    let dict = toSet dictionary
        rows = (B.lines . B.map toLower) input
        cols = B.transpose rows
        solutions = solve dict (rows ++ cols)
    putStrLn $ B.unpack $ B.unlines solutions
