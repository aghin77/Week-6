void main() {
  // Nullable Map (can be null)
  Map<String, dynamic>? user = {
    'name': 'Aghin',
    'phone': null, // try changing this to a number later
  };

  print(getUserPhone(user));
}

// Function to safely extract phone number
String getUserPhone(Map<String, dynamic>? user) {
  return user?['phone'] ?? 'No Number Provided';
}