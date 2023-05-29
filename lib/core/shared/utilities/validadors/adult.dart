bool isUserAdult(DateTime dateOfBirth) {
  final currentDate = DateTime.now();
  int age = currentDate.year - dateOfBirth.year;

  if (currentDate.month < dateOfBirth.month ||
      (currentDate.month == dateOfBirth.month && currentDate.day < dateOfBirth.day)) {
    age--;
  }

  return age >= 18;
}
