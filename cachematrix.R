## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

## Put comments here that give an overall description of what your
## functions do
## This function inverse Matrix with caching inverse value

## Write a short comment describing this function
## define functions for set(), get(), setinverse(), and getinverse() functions

makeCacheMatrix <- function(x = matrix()) {
  myI <- NULL
  set <- function(y) {
    x <<- y
    myI <<- NULL
  }
  get <- function() x
  setinverse <- function(inv) myI <<- inv
  getinverse <- function() myI
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

## Write a short comment describing this function
## check the inverse value
## if the inverse matrix has been calculated before, return it
## if not calculate, the inverse matrix

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  myInv <- x$getinverse()
  if(!is.null(myInv)) {
    message("getting cached data")
    return(myInv)
  }
  data <- x$get()
  myInv <- solve(data, ...)
  x$setinverse(myInv)
  myInv
}
