import 'dart:io';

void main() {
  ageCalculator();
}

void ageCalculator() {
  while (true) {
    try {
      print('Enter Your Birth Year:');
      var birthYear = stdin.readLineSync();
      var age = DateTime.now().year - int.parse(birthYear!);
      print(age);
      if (age < 0) throw FormatException();
      if (age < 6) throw Exception();
      print('Your Age is $age years old');
      break;
    } on FormatException {
      print('Invalid data...try again');
    } catch (e) {
      print('Age under 6 years old');
    }
  }
}
