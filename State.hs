import Control.Monad.State

addUp [] = do
		a <- get
		return a

addUp (x:xs) = do
		modify (+x) 
		addUp xs

main = do
		print $ evalState (addUp [1,2,3]) 0
