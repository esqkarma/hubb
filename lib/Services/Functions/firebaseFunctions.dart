import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseFunctions
{
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> registerUser(String email, String password) async {
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      print("User registered: ${credential.user?.email}");
    } catch (e) {
      print("Error: $e");
    }
  }
  Future<String> loginUser(String email, String password) async {
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // If login is successful, you can print the user UID
      print("User logged in: ${userCredential.user?.uid}");

      // If login is successful, navigate to the Home screen or another page
      // This is an example using a callback function to handle navigation
      // You can pass the context from the UI widget to handle navigation after login
      // You can navigate here using your navigation logic or return a success result.
      return '';
    } catch (e) {
      print("Login failed: $e");

      // Handle different error scenarios
      if (e is FirebaseAuthException) {
        String errorMessage = 'Login failed. Please try again.';

        switch (e.code) {
          case 'user-not-found':
            errorMessage = 'No user found for that email.';
            break;
          case 'wrong-password':
            errorMessage = 'Wrong password provided for that user.';
            break;
          case 'invalid-email':
            errorMessage = 'The email address is badly formatted.';
            break;
          default:
            errorMessage = e.message ?? 'An error occurred.';
        }

        // Show a SnackBar or alert dialog with the error message
        return errorMessage;
      } else {
        return 'An unexpected error occurred.';
      }
    }
  }

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Method to get the current user's name
  Future<String> getUserName() async {
    User? user = auth.currentUser; // Get the currently logged-in user

    if (user != null) {
      // Fetch user data from Firestore using user ID
      DocumentSnapshot snapshot = await _firestore.collection('users').doc(user.uid).get();

      if (snapshot.exists) {
        return snapshot['name'] ?? 'No name available'; // Return the user's name
      } else {
        return 'No user data found';
      }
    } else {
      return 'User not logged in';
    }
  }

}