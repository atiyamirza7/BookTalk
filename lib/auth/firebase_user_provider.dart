import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class BookTalkFirebaseUser {
  BookTalkFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

BookTalkFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<BookTalkFirebaseUser> bookTalkFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<BookTalkFirebaseUser>(
      (user) {
        currentUser = BookTalkFirebaseUser(user);
        return currentUser!;
      },
    );
