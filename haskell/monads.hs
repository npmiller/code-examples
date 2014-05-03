import System.Environment   
import Data.List  

main = main_do

main_do = do
	args <- getArgs
	progName <- getProgName
	putStrLn "The arguments are:"
	mapM putStrLn args
	putStrLn "The program name is:"
	putStrLn progName

main_bind = getArgs >>= (\args ->
	getProgName >>= (\progName ->
		putStrLn "The arguments are:" >>= (\x ->
			mapM putStrLn args >>= (\y ->
				putStrLn "The program name is :" >>= (\z ->
					putStrLn progName
					)
				)
			)
		)
	)

main_bind_alt = getArgs >>= (\args -> 
	getProgName >>= (\progName ->
		putStrLn "The arguments are:" >> mapM putStrLn args >> putStrLn "The program name is :" >> putStrLn progName
				
			)
		)

