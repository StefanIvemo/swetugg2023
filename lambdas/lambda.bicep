var pizzas = [
  {
    name: 'Margherita'
    priceSEK: 110
    ingredients: ['tomato sauce', 'mozzarella', 'basil']
  }
  {
    name: 'Hawaiian'
    priceSEK: 140
    ingredients: ['tomato sauce', 'mozzarella', 'ham', 'pineapple']
  }
  {
    name: 'Pepperoni'
    priceSEK: 125
    ingredients: ['tomato sauce', 'mozzarella', 'pepperoni sausage']
  }
  {
    name: 'Marinara'
    priceSEK: 110
    ingredients: ['tomato sauce', 'garlic', 'oregano']
  }
]

// Use filter() function
output cheapPizzas array = filter(pizzas, pizza => pizza.priceSEK <=115)

// Use map() function
/*
output pizzaNames array = map(pizzas, pizza => pizza.name)
output orderPizza array = map(pizzas, pizza => 'I would like to order a ${pizza.name} please!')
output mapObject array = map(range(0, length(pizzas)), i => {
  i: i
  pizza: pizzas[i].name
  orderphrase: 'Give me a, ${pizzas[i].name}!'
})
*/

// Use reduce() function
/*
var prices = map(pizzas, pizza => pizza.priceSEK)
output totalPrice int = reduce(prices, 0, (cur, next) => cur + next)
output totalpriceAdd10 int = reduce(prices, 10, (cur, next) => cur + next)
*/

// Use sort() function
/*
output pizzasByPrice array = sort(pizzas, (a, b) => a.priceSEK < b.priceSEK)
*/
