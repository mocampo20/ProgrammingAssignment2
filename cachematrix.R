## This program will try to cache a Loop which has not been changed recently, this avoiding rerun again the matrix and avoiding spend time running again. 
## If detects this matrix has been running already will bring the information.
## If not, then will run bring the value.


## Create a function called makeCacheMatrix which will recieve x=matrix() and use function(inverse). Here we are setting/getting the matrix 
makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	set <- funtion(y){
		x <<- y
		m <<- NULL
	}
	get function(x)
	setInverse <- function(inverse) m <<- inverse
	getInverse <- function() m
	list (set = set, get = get, 
		  setInverse = setInverse
		  getInverse = getInverse)
}


## Create a function called cacheSolve, which will try to ientify if this matrix has been already run or it is totally different.

cacheSolve <- function(x, ...) {
	m <- x$getInverse()
	if (!is.null(m)) {
		message("getting cached data")
		return(m)
	}
	data <- x$get()
	m <- solve(data, ...)
	x$setInverse(m)
	m
}
