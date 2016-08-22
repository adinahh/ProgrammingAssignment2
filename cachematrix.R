## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## creating a matrix, x, and use three ways to set and get x plus its inverse
makeCacheMatrix <- function(x = matrix()) {
	m <- NULL ## for the inverse
	set <- function(input = matrix()) {
		x <<- input ## store input as x
		m <<- NULL ## clear value of inverse if there is one
	}
	get <-  function() x
	setInverse <- function(inverseValue) {
		cachedInverse <<-inverseVal  ## set inverse variable
		return(cachedInverse) ## return the inverse
	}
	getInverse <- function() cachedInverse ## actually get the inverse
	list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
	}


## Write a short comment describing this function
## once you have the matrix, x, this will solve and return its inverse

cacheSolve <- function(x= makeCacheMatrix(1:4, nrow2, ncol=2), ...) {
        ## Return a matrix that is the inverse of 'x'
        calculateInverse<-getInverse() ## check if there is a value
        if(!is.null(calculateInverse) && is.matrix(calculateInverse)) {
        	## check if there is a value and if the value is a matrix
        message("There is cached data")
        return(calculatedInverse)
}
matrixToSolve <- x$get()
calculatedInverse <-attemptCatch({
	solve(matrixToSolve)
}, warning = function(w) {
	message("This might not be right")
	message(w)
}, error = function(e) {
	message("There was a problem solving the matrix")
	message(e)
	message("\n")
})
message("The inverse of the matrix is:")
x$setInverse(calculatedInverse)
}