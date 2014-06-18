## Two functions that allow for the use of cached data to be used 
## instead of unnecessary recalculation of (the matrix inverse)
## Example of how to call the functions:
## nisse<- matrix(c(1,2,3,4,-5,6,-11,12,13), nrow = 3, ncol = 3)
## kuk<-makeCacheMatrix(nisse)
## cacheSolve(kuk)


## makeCacheMatrix creates a list of functions for
# set the value of the matrix
# get the value of the matrix
# set the value of the inverse
# get the value of the inverse

makeCacheMatrix <- function(A = matrix()) {
  inv <- NULL
  set <- function(Y) {
    A <<- Y
    inv <<- NULL
  }
  get <- function() A
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)  
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
