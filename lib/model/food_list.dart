class FoodList{
  final int? id;
  final String? name;
  final String? foodCategory;

  FoodList({this.id,this.name,this.foodCategory});

  List<FoodList> foodList()
  {
    return ([
      FoodList(
        id: 1102670,
        name: 'Mango',
        foodCategory: 'Fruit',
      ),
      FoodList(
        id: 1750340,
        name: 'Apple',
        foodCategory: 'Fruit',
      ),
      FoodList(
        id: 746771,
        name: 'Oranges',
        foodCategory: 'Fruit',
      ),
      FoodList(
        id: 1102594,
        name: 'Lemon',
        foodCategory: 'Fruit',
      ),
      FoodList(
        id: 1102677,
        name: 'Peach',
        foodCategory: 'Fruit',
      ),
      FoodList(
        id: 746773,
        name: 'Pears',
        foodCategory: 'Fruit',
      ),
      FoodList(
        id: 1105073,
        name: 'Bananas',
        foodCategory: 'Fruit',
      ),
      FoodList(
        id: 1102710,
        name: 'Strawberries',
        foodCategory: 'Fruit',
      ),
      FoodList(
        id: 1102698,
        name: 'Watermelons',
        foodCategory: 'Fruit',
      ),
      FoodList(
        id: 1103010,
        name: 'Potato',
        foodCategory: 'Fruit',
      ),
      FoodList(
        id: 1102702,
        name: 'BlueBerries',
        foodCategory: 'Fruit',
      ),
      FoodList(
        id: 746766,
        name: 'Milk',
        foodCategory: 'Dairy and Egg Products',
      ),
      FoodList(
        id: 330137,
        name: 'Yogurt',
        foodCategory: 'Dairy and Egg Products',
      ),
      FoodList(
        id: 2259796,
        name: 'Feta Cheese',
        foodCategory: 'Dairy and Egg Products',
      ),
      FoodList(
        id: 328637,
        name: 'Cheddar Cheese',
        foodCategory: 'Dairy and Egg Products',
      ),
      FoodList(
        id: 167944,
        name: 'Bread',
        foodCategory: 'Baked Products',
      ),
      FoodList(
        id: 2262074,
        name: 'Butter',
        foodCategory: 'Nut and Seed Products',
      ),

    ]);
  }

}