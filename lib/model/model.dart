class Meal {
  final String mealTime;
  final String name;
  final String imagePath;
  final String kiloCaloriesBurnt;
  final String timeTaken;
  final String preparation;
  final List ingredients;

  Meal({
    required this.mealTime,
    required this.name,
    required this.imagePath,
    required this.kiloCaloriesBurnt,
    required this.timeTaken,
    required this.preparation,
    required this.ingredients,
  });
}

final meals = [
  Meal(
    mealTime: 'BREAKFAST',
    name: 'Fried Rice',
    imagePath: 'assets/images/Fried_Rice.PNG',
    kiloCaloriesBurnt: '271',
    timeTaken: '10',
    ingredients: [
      '2 Cups of Rice',
      'Greeen Beans and Carrots',
      'Liver and chopped meat',
      'Groundnut Oil & Stephen Curry',
      'Fried Turkey',
    ],
    preparation:
        'Cook the Rice for some minutes,then fry the Turkey.After that, mix all the peri peri together',
  ),
  Meal(
      mealTime: 'LAUNCH',
      name: 'YAM & EGG',
      imagePath: 'assets/images/Yam.PNG',
      kiloCaloriesBurnt: '612',
      timeTaken: '16',
      ingredients: [
        '3 Tuber of Yam',
        '10 creates of eggs',
        'Pepper and Tomatoes',
      ],
      preparation: 'Cook the yam and Fry all the Eggs, Food is Ready'),
  Meal(
      mealTime: 'DINNER',
      name: 'PORRIDGE',
      imagePath: 'assets/images/Porridge.PNG',
      kiloCaloriesBurnt: '612',
      timeTaken: '16',
      ingredients: [
        '2 Tuber of Yam'
            'Palm Oil and Vegetables'
            'Titus Fish and Cray Fish'
      ],
      preparation:
          "Cook the Yam, add Palm Oil, add cray fish, then add the rest segemede together and stir. Food is Ready!!! "),
  Meal(
      mealTime: 'SNACK',
      name: 'Keto Snack',
      imagePath: 'assets/images/Keto_Snack.PNG',
      kiloCaloriesBurnt: '414',
      timeTaken: '16',
      ingredients: ['2 Cups of Flour', '1 Cup of Sugar and 2 pack of butter'],
      preparation: 'Mix them all together and Bake')
];
