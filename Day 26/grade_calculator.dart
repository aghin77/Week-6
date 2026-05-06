void main() {
  // List of scores
  List<int> scores = [85, 90, 78, 88, 92];

  // Check if list is empty
  if (scores.isEmpty) {
    print("No scores available to calculate grade.");
    return;
  }

  int sum = 0;

  // Loop to calculate total
  for (int score in scores) {
    sum += score;
  }

  double average = sum / scores.length;

  print("Average Score: ${average.toStringAsFixed(2)}");

  String grade;

  // Using if-else for grading
  if (average >= 90) {
    grade = "A";
  } else if (average >= 75) {
    grade = "B";
  } else {
    grade = "C";
  }

  print("Grade: $grade");

  // Optional: Switch-case version (based on range)
  int avgInt = average.toInt();

  switch (avgInt ~/ 10) {
    case 10:
    case 9:
      print("Switch Grade: A");
      break;
    case 8:
    case 7:
      print("Switch Grade: B");
      break;
    default:
      print("Switch Grade: C");
  }
}