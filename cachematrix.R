# Coursera R Programming Week 3
# F. DJIAN
# 25 janvier 2015

# What this function does :
#   Working with a matrix and cache its inverse matrix


makeCacheMatrix <- function(MyMatrix = matrix()) {  

  print("Debut function ...makeCacheMatrix")
  inverse <- NULL
    
#  # Verify if this is a matrix :
#  if (is.matrix(MyMatrix)) {
#    print("Arg is a matrix ...: Good")
#  }
#  else {
#    print("It's not a matrix ...")
#    print("exiting ...")
#	return (2);
#  }
    
  # Set the apropriate env 
  set <- function(y) {                
    MyMatrix <<- y
    inverse <<- NULL
  }
  
  get <- function() {
    MyMatrix
  }

setinverse <- function(inv)
{
inverse <<- inv
}
## return the cached value of the inverse of the matrix.
## returns NULL if the inverse has not yet be set, or the underlying
## matrix has changed since the last invocation
getinverse <- function()
{
inverse
}
## return a list of getter and setter methods as a result of object creation
list(set = set, get = get,setinverse = setinverse,getinverse = getinverse)

}      
  
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
	
inv <- m$getinverse()
if(!is.null(inv))
{
## Inverse already calculated, value not stale
message("getting cached data")
return(inv)
}	

} 

