import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:lottie/lottie.dart';
import 'package:shope_web/core/utils/app_color.dart';
import 'package:shope_web/features/home/presentation/view/home_view.dart';

class MyFunction {
  static Future<void> signUp({
    required GlobalKey<FormState> formKey,
    required BuildContext context,
    required bool isLoading,
    required FirebaseAuth auth,
    required TextEditingController email,
    required TextEditingController password,
    required TextEditingController name,
  }) async {
    final isValid = formKey.currentState!.validate();
    FocusScope.of(context).unfocus();
    if (isValid) {
      formKey.currentState!.save();
    }
    try {
      isLoading = true;

      await auth.createUserWithEmailAndPassword(
        email: email.text.trim(),
        password: password.text.trim(),
      );
      User? user = auth.currentUser;
      final uid = user?.uid;
      await FirebaseFirestore.instance.collection("user").doc(uid).set({
        'userId': uid,
        'userName': name.text,
        'userImage': '',
        'userEmail': email.text.toLowerCase(),
        'createAd': Timestamp.now(),
        'userWishlist': [],
        'userCart': [],
        'userLastName': '',
        'userPhoneNumber': '',
        'country': '',
        'state': '',
        'city': '',
      });
      Fluttertoast.showToast(
        msg: 'An Account has been created',
        toastLength: Toast.LENGTH_SHORT,
        textColor: AppColor.kWhite,
      );
    } on FirebaseAuthException catch (error) {
      if (!context.mounted) return;
      showDialog(
        context: context,
        builder: (context) {
          return alertDialogSignUp(error.message.toString());
        },
      );
    } catch (error) {
      if (!context.mounted) return;
      showDialog(
        context: context,
        builder: (context) {
          return alertDialogSignUp(error.toString());
        },
      );
    } finally {
      isLoading = false;
    }
  }

  static Future<void> signIn({
    required GlobalKey<FormState> formKey,
    required BuildContext context,
    required bool isLoading,
    required FirebaseAuth auth,
    required TextEditingController email,
    required TextEditingController password,
  }) async {
    final isValid = formKey.currentState!.validate();
    FocusScope.of(context).unfocus();
    if (isValid) {
      formKey.currentState!.save();
    }
    try {
      isLoading = true;
      await auth.signInWithEmailAndPassword(
        email: email.text.trim(),
        password: password.text.trim(),
      );
      Fluttertoast.showToast(
        msg: 'Login Successful',
        toastLength: Toast.LENGTH_SHORT,
        textColor: AppColor.kWhite,
      );
      if (!context.mounted) return;
      Navigator.pushReplacementNamed(context, HomeView.idPage);
    } on FirebaseAuthException catch (error) {
      // ignore: use_build_context_synchronously
      showDialog(
        context: context,
        builder: (context) {
          return alertDialogSignUp(error.message.toString());
        },
      );
    } catch (error) {
      if (!context.mounted) return;
      showDialog(
        context: context,
        builder: (context) {
          return alertDialogSignUp(error.toString());
        },
      );
    } finally {
      isLoading = false;
    }
  }

  // Future<User?> signInWithGoogle() async {
  //   await Firebase.initializeApp();
  // }

  static Future<void> googleButton({
    required BuildContext context,
  }) async {
    // final GoogleSignIn googleSignIn = GoogleSignIn();
    // String? userEmail;
    // String? imageUrl;

    final GoogleSignIn googleSignIn = GoogleSignIn();
    final googleAccount = await googleSignIn.signIn();

    if (googleAccount != null) {
      final googleAuth = await googleAccount.authentication;
      if (googleAuth.accessToken != null && googleAuth.idToken != null) {
        try {
          final authResult = await FirebaseAuth.instance
              .signInWithCredential(GoogleAuthProvider.credential(
            accessToken: googleAuth.accessToken,
            idToken: googleAuth.idToken,
          ));
          if (authResult.additionalUserInfo!.isNewUser) {
            await FirebaseFirestore.instance
                .collection("user")
                .doc(authResult.user!.uid)
                .set({
              'userId': authResult.user!.uid,
              'userName': authResult.user!.displayName,
              'userImage': authResult.user!.photoURL,
              'userEmail': authResult.user!.email,
              'createAd': Timestamp.now(),
              'userWishlist': [],
              'userCart': [],
              'userLastName': '',
              'userPhoneNumber': '',
              'country': '',
              'state': '',
              'city': '',
            });
          }
          if (!context.mounted) return;
          Navigator.pushReplacementNamed(context, HomeView.idPage);
        } on FirebaseException catch (error) {
          alertDialogSignUp(error.message.toString());
        } catch (error) {
          alertDialogSignUp(error.toString());
        }
      }
    }
  }

  static AlertDialog alertDialogSignUp(String error) {
    return AlertDialog(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(.9),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Lottie.asset('assets/images/lottile/error.json',
                height: 150, fit: BoxFit.fill),
            Text(
              error.toString(),
              style: const TextStyle(
                  color: AppColor.kGray900, fontFamily: 'PublicSans'),
            ),
          ],
        ));
  }
}
