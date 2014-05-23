
start
  = (expression _ ";"?)*

 expression
  = CompoundExpression "+" expression
  / CompoundExpression "-" expression
  / CompoundExpression "*" expression
  / CompoundExpression "/" expression
  / CompoundExpression

CompoundExpression
  = FunctionCall
  / Assignment
  / Literal
  / "(" expression")"
  / Column
  / ID

Assignment 
  = ID ":=" expression

Comparison
  = ID "<" expression

Column
  = ID "." ID

Literal
  = "1"
 
FunctionCall
  = ID "(" [expression ( "," expression)*] ")"

ID
  = [A-z]+

_
  = [\s]*

WS 
  = [\s]+