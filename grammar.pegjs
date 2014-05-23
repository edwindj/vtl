
start
  = (expression _ ";"?)*

 expression
  = Comparison
  / CalculusExpression

CalculusExpression
  = CompoundExpression _ "+" _ expression
  / CompoundExpression _ "-" _ expression
  / CompoundExpression _ "*" _ expression
  / CompoundExpression _ "/" _ expression
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
  = CalculusExpression "<=" CalculusExpression
  / CalculusExpression "<" CalculusExpression
  / CalculusExpression ">=" CalculusExpression
  / CalculusExpression ">" CalculusExpression
  / CalculusExpression "==" CalculusExpression

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