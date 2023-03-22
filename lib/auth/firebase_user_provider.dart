import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class Num1FirebaseUser {
  Num1FirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

Num1FirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<Num1FirebaseUser> num1FirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<Num1FirebaseUser>(
      (user) {
        currentUser = Num1FirebaseUser(user);
        return currentUser!;
      },
    );
