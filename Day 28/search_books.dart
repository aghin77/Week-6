void main() {
  List<String> books = [
    "Flutter Basics",
    "Dart Advanced",
    "Python for Beginners",
    "Flutter UI Design",
    "Java Programming"
  ];

  // Without category
  print("All Books:");
  print(searchBooks(books));

  // With category
  print("\nFiltered Books (Flutter):");
  print(searchBooks(books, category: "Flutter"));
}

// Function with optional named parameter
List<String> searchBooks(List<String> titles, {String? category}) {
  // If category is null, return all books
  if (category == null) {
    return titles;
  }

  // Using .where() to filter
  return titles
      .where((title) => title.toLowerCase().contains(category.toLowerCase()))
      .toList();
}