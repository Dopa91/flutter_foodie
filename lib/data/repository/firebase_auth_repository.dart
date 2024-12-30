
import 'dart:core';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:foodie_screen/data/repository/auth_repository.dart';
import 'package:foodie_screen/shared/widgets/app_user.dart';
import 'package:google_sign_in/google_sign_in.dart';


class FirebaseAuthRepository implements AuthRepository {
  @override
  Future<void> signIn() async {
    // Implement the signIn logic here
  }
final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();
  
  /*
  // Anmelden mit Google Account
  @override
  Future<void> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      await googleSignIn.signInWithCredential(credential);
    } on Exception catch (e) {
      print('exception->$e');
    }
  }
*/
    @override
  Future<AppUser?> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
    if (googleUser == null) return null;

    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final authResult = await firebaseAuth.signInWithCredential(credential);
    final user = authResult.user;
    if (user == null) return null;

    return AppUser(userId: user.uid, email: user.email);
  }

  @override
  Future<void> signOutFromGoogle() async {
    print("Signing out");

    googleSignIn.signOut();
  }

   @override
  Future<AppUser?> signInWithEmailAndPassword(
      String email, String password) async {
    final credential = await firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    final user = credential.user;
    if (user == null) return null;
    return AppUser(userId: user.uid, email: user.email);
  }


  @override
  AppUser? get currentUser {
    final user = firebaseAuth.currentUser;
    if (user == null) return null;
    return AppUser(userId: user.uid, email: user.email);
  }

  @override
  Future<void> signOut() async {
    await firebaseAuth.signOut();
    await googleSignIn.signOut();
  }


    @override
  Stream<AppUser?> get authStateChanges {
    return firebaseAuth.authStateChanges().map((firebaseUser) {
      if (firebaseUser == null) {
        return null;
      } else {
        return AppUser(
          userId: firebaseUser.uid,
          email: firebaseUser.email,
        );
      }
    });
  }
}