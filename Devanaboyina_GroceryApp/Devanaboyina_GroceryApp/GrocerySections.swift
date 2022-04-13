//
//  GrocerySections.swift
//  Devanaboyina_GroceryApp
//
//  Created by Devanaboyina,Maneesh on 4/12/22.
//

import Foundation

struct Grocery {
var section = ""
var items_Array:[GroceryItem] = []
}

struct GroceryItem{
    var itemName = ""
    var itemImage = ""
    var itemInfo = ""
}

let groceryitem1 = Grocery(section:"Vegetables",items_Array:[GroceryItem(itemName:"Spinach",itemImage:"spinach",itemInfo:"Spinach is a leafy green flowering plant native to central and western Asia"), GroceryItem(itemName: "Kale", itemImage: "kale", itemInfo: "Kale, or leaf cabbage, belongs to a group of cabbage cultivars grown for their edible leaves, although some are used as ornamentals."), GroceryItem(itemName: "Broccoli", itemImage: "broccoli", itemInfo: "Broccoli is an edible green plant in the cabbage family whose large flowering head, stalk and small associated leaves are eaten as a vegetable."), GroceryItem(itemName: "Peas", itemImage: "peas", itemInfo: "The pea is most commonly the small spherical seed or the seed-pod of the pod fruit Pisum sativum."), GroceryItem(itemName: "Beetroot", itemImage: "beetroot", itemInfo: "The beetroot is the taproot portion of a beet plant, usually known in North America as beets while the vegetable is referred to as beetroot in British English, and also known as the table beet, garden beet, red beet, dinner beet or golden beet.")] )

let groceryitem2 = Grocery( section: "Fruits", items_Array: [GroceryItem(itemName: "Blueberry", itemImage: "blueberry", itemInfo: "Blueberries are a widely distributed and widespread group of perennial flowering plants with blue or purple berries."), GroceryItem(itemName: "Pomegranate", itemImage: "pomegranate", itemInfo: "The pomegranate is a fruit-bearing deciduous shrub in the family Lythraceae, subfamily Punicoideae, that grows between 5 and 10 m tall."), GroceryItem(itemName: "Raspberry", itemImage: "raspberry", itemInfo: "The raspberry is the edible fruit of a multitude of plant species in the genus Rubus of the rose family, most of which are in the subgenus Idaeobatus."), GroceryItem(itemName: "Orange", itemImage: "orange", itemInfo: "An orange is a fruit of various citrus species in the family Rutaceae."), GroceryItem(itemName: "Apple", itemImage: "apple", itemInfo: "An apple is an edible fruit produced by an apple tree.")] )

let groceryitem3 = Grocery( section: "Lentils", items_Array: [GroceryItem(itemName: "GreenLentils", itemImage: "greenlentils", itemInfo: "Green lentils are rich in antioxidants, iron, and magnesium."), GroceryItem(itemName: "BlackLentils", itemImage: "blacklentils", itemInfo: "Black lentils are small and dark-colored. They look and cook similar to French lentils."), GroceryItem(itemName: "RedLentils", itemImage: "redlentils", itemInfo: "Red lentils are yellow lentils that have been hulled and split."), GroceryItem(itemName: "HorseGram", itemImage: "horsegram", itemInfo: "Horse gram is a great source of many key nutrients."), GroceryItem(itemName: "UradDal", itemImage: "uraddal", itemInfo: "Urad Dal is a little black seed with a white interior.")] )

let groceryitem4 = Grocery( section: "Frozen Foods", items_Array: [GroceryItem(itemName: "Ice Cream", itemImage: "icecream", itemInfo: "Ice cream is a sweetened frozen food typically eaten as a snack or dessert."), GroceryItem(itemName: "Fish Fillets", itemImage: "fishfillets", itemInfo: "A fillet is the meat cut from the sides of the fish."), GroceryItem(itemName: "Pizza", itemImage: "pizza", itemInfo: "pizza served in a restaurant is presented unsliced, and is eaten with the use of a knife and fork."), GroceryItem(itemName: "Sausages", itemImage: "sausages", itemInfo: "sausages usually contain lamb, beef or chicken."), GroceryItem(itemName: "Bread", itemImage: "bread", itemInfo: "Bread is a staple food prepared from a dough of flour and water, usually by baking.")] )

let groceryitem5 = Grocery( section: "Beverages", items_Array: [GroceryItem(itemName: "Tea", itemImage: "tea", itemInfo: "Tea is commonly used in India"), GroceryItem(itemName: "Coffee", itemImage: "coffee", itemInfo: "StarBucks is the main producer of Coffee in US"), GroceryItem(itemName: "Juice", itemImage: "juice", itemInfo: "Juice is made up of Fruits."), GroceryItem(itemName: "Mock Tails", itemImage: "mocktail", itemInfo: "Mocktail is a non-alalcoholic beverage."), GroceryItem(itemName: "Milk", itemImage: "milk", itemInfo: "Milk is a nutrient-rich liquid food produced by the mammary glands of mammals.")] )

let grocery_Items = [groceryitem1, groceryitem2, groceryitem3, groceryitem4, groceryitem5]
