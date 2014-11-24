import Control.Monad.State

addUp [] = do
		-- a <- get
		-- return a
		
		-- gets f = { x <- get; return (f x) }
		gets id

addUp (x:xs) = do
		modify (+x) 
		addUp xs

main = do
		-- let x = runState (addUp [1,2,3]) 0
		-- print $ fst x	

		-- print . fst $ runState (addUp [1,2,3]) 0

		-- evalState act = fst . runState act
		print $ evalState (addUp [1,2,3]) 0
