import           Data.List

main :: IO ()
main = do
    s <- getLine
    k <- read <$> getLine
    let subs = sort $ nub $
            concatMap (\size -> map (\from -> take size $ drop from s) [0 .. length s - size])
            [1 .. length s]
    putStrLn $ subs !! (k - 1)
