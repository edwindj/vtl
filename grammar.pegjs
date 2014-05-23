
start
  = (_ expression _ ";"?)*

 expression
  = Comparison
  / CalculusExpression

CalculusExpression
  = CompoundExpression _ [+-] _ expression
  / CompoundExpression _ [*/] _ expression
  / CompoundExpression

CompoundExpression
  = FunctionCall
  / Assignment
  / Literal
  / "("_ expression _")"
  / Column
  / ID

Assignment 
  = ID ":=" expression

Comparison
  = CalculusExpression _ "<=" _ CalculusExpression
  / CalculusExpression _ "<"  _ CalculusExpression
  / CalculusExpression _ ">=" _ CalculusExpression
  / CalculusExpression _ ">"  _ CalculusExpression
  / CalculusExpression _ "==" _ CalculusExpression

Column
  = ID "." ID

Literal
  = $[0-9]+
 
FunctionCall
  = ID "(" [expression ( "," expression)*] ")"

ID
  = $[A-z]+

_
  = $[ ]*

WS 
  = $[ ]+