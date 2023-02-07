@description('this is a param of type string')
@allowed([
  'swetugg'
  'bicep'
])
param stringParam string = 'swetugg'

@maxValue(10)
param intParam int

param boolParam bool = true

param objectParam object = {}

param arrayParam array

@secure()
param secureStringParam string

@secure()
param secureObjectParam object
