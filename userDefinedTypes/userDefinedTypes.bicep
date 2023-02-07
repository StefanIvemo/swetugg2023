//Symbolic references
// ambient type reference (string, int, bool, object, array)
type myString = string

// user-defined type reference
type myOtherString = myString


// Array types
// Array types may be declared by suffixing [] to any valid type expression.
param strings string[] = []
param arrayOfArraysOfInts int[][]

// Object types
// Object types contain zero or more properties between curly brackets:
type myObject = {
  stringProp: string
  intProp: int
  optionalProp?: int
}

// Primitive literals
// Strings, integers, and booleans are all valid types.
type stringLiteral = 'string'
type intLiteral = 10
type boolLiteral = true

// Unary operation on literal-typed type expressions
// Unary operators may be used with integer and boolean literals or references to integer or boolean literal-typed symbols:
type negativeIntLiteral = -10
type negatedIntReference = -negativeIntLiteral

type negatedBoolLiteral = !true
type negatedBoolReference = !negatedBoolLiteral

// Unions
// Unions may include any number of literal-typed expressions. Union types are translated into the allowedValues constraint in ARM, so only literals are permitted as members.
param oneOfSeveralObjects {foo: 'bar'} | {fizz: 'buzz'} | {snap: 'crackle'}
param mixedTypeArray ('fizz' | 42 | {an: 'object'} | null)[]
