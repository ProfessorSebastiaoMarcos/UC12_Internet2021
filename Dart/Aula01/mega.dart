import 'dart:math';

main() {
  List<int> numberList = [];
  //Random random = new Random();
  for (var i = 0; i <= 5; i++) {
    int random_number = Random().nextInt(60) + 1;
    if ((!numberList.contains(random_number) || numberList.length < 6)) {
      numberList.add(random_number);
    }
  }
  print(numberList);
  print(numberList.length);
}
