

start
  = expression

 expression
  = Assignment

 Assignment 
  = identifier ":=" DatasetExpressionResult


Dataset
  = identifier
  
DatasetExpressionResult
  = "1"

 identifier
  = [A-z]+