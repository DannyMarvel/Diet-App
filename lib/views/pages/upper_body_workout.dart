class UpperBodyWorkout {
  UpperBodyWorkout(
      {required this.imagePath, required this.name, required this.instruction});

  final String imagePath;
  final String name;
  final String instruction;
}

final upperBody = [
//List of sections selected
  [
    UpperBodyWorkout(
        imagePath: 'assets/images/Front_Chest.PNG',
        name: 'Bench Press',
        instruction: '3 sets - 6 repitions'),
    UpperBodyWorkout(
        imagePath: 'assets/images/Front_Chest.PNG',
        name: 'Dumbell Press',
        instruction: '4 sets - 6 repitions'),
    UpperBodyWorkout(
        imagePath: 'assets/images/Front_Chest.PNG',
        name: 'Pull ups',
        instruction: '2 sets - 8 repitions'),
  ],

  [
    UpperBodyWorkout(
        imagePath: 'assets/images/back_chest.PNG',
        name: 'Pull ups',
        instruction: '2 sets - 8 repitions'),
    UpperBodyWorkout(
        imagePath: 'assets/images/back_chest.PNG',
        name: 'Deadlift',
        instruction: '2 sets - 4 repitions'),
    UpperBodyWorkout(
        imagePath: 'assets/images/back_chest.PNG',
        name: 'Lat pulldown',
        instruction: '4 sets - 6 repitions'),
  ],

  [
    UpperBodyWorkout(
        imagePath: 'assets/images/MPower.PNG',
        name: 'Dumbell curl',
        instruction: '4 sets - 6 repitions'),
    UpperBodyWorkout(
        imagePath: 'assets/images/MPower.PNG',
        name: 'Barbell curl',
        instruction: '2 sets - 4 repitions'),
    UpperBodyWorkout(
        imagePath: 'assets/images/MPower.PNG',
        name: 'Cable curl',
        instruction: '4 sets - 6 repitions'),
  ],

[
    UpperBodyWorkout(
        imagePath: 'assets/images/MPower.PNG',
        name: 'Dumbell curl',
        instruction: '4 sets - 6 repitions'),
    UpperBodyWorkout(
        imagePath: 'assets/images/MPower.PNG',
        name: 'Barbell curl',
        instruction: '2 sets - 4 repitions'),
    UpperBodyWorkout(
        imagePath: 'assets/images/MPower.PNG',
        name: 'Cable curl',
        instruction: '4 sets - 6 repitions'),
  ],

];
