import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart'; // Firebase authentication
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'dart:io'; // To check for iOS platform

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Title
              const Text(
                '小鬼當家行動App',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              // Image below title
              Image.asset('assets/images/logo.png'),

              const SizedBox(height: 20),

              // Description
              const Text(
                '建立帳號',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const Text(
                '輸入您的學校郵件帳號以利登入',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14),
              ),
/*
              const SizedBox(height: 24),

              // TextField with email pre-filled

              Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // All your input fields here
                    TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'email@domain.com', 
                        hintText: 'you@example.com',
                      ),
                      validator: (value) => value == null || value.isEmpty ? 'Please enter your email' : null,
                    ),

                    const SizedBox(height: 24),

                    TextFormField(
                      controller: _passwordController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        hintText: 'Password',
                      ),
                      obscureText: true,
                      validator: (value) => value == null || value.isEmpty ? 'Please enter your password' : null,
                    ),

                    // The rest of your fields and buttons
                  ],
                ),
              ),

              const SizedBox(height: 24),

              SizedBox(
                width:double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      try {
                        UserCredential userCredential = await FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                                email: _emailController.text.trim(),
                                password: _passwordController.text.trim());

                        await FirebaseFirestore.instance
                            .collection('users')
                            .doc(userCredential.user!.uid)
                            .set({
                          'name': _nameController.text,
                          'age': _ageController.text,
                          'email': _emailController.text,
                        });

                        Navigator.pushNamed(context, '/second', arguments: {
                          'name': _nameController.text,
                          'age': _ageController.text,
                        });
                      } on FirebaseAuthException catch (e) {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('Registration Error'),
                            content: Text(e.message ?? 'Unknown error'),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('OK'),
                              )
                            ],
                          ),
                        );
                      }
                    }
                  },
                  icon: Icon(Icons.person_add),
                  label: const Text('ˊ帳號註冊'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(160, 255, 255, 255),
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                ),
              ),

              const SizedBox(height: 24),

              Row(
                children: [
                  Expanded(child: Divider()),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('或'),
                  ),
                  Expanded(child: Divider()),
                ],
              ),

              const SizedBox(height: 24),

              // Login with Google
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () async {
                    try {
                      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
                      if (googleUser == null) return; // user canceled

                      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

                      final credential = GoogleAuthProvider.credential(
                        accessToken: googleAuth.accessToken,
                        idToken: googleAuth.idToken,
                      );

                      final UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);

                      // Optionally save user info to Firestore
                      await FirebaseFirestore.instance
                          .collection('users')
                          .doc(userCredential.user!.uid)
                          .set({
                        'name': userCredential.user!.displayName,
                        'email': userCredential.user!.email,
                      }, SetOptions(merge: true));

                      Navigator.pushNamed(context, '/second', arguments: {
                        'name': userCredential.user!.displayName ?? '',
                        'age': '', // You may not get age from Google
                      });
                    } catch (e) {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Google Sign-In Error'),
                          content: Text(e.toString()),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text('OK'),
                            )
                          ],
                        ),
                      );
                    }
                  },
                  icon: Image.asset(
                    'assets/icons/icon_google.png',
                    width: 15,
                    height: 15,
                  ),
                  label: const Text('使用Google 帳號登入'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(160, 255, 255, 255),
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // Login with Apple
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () async {
                    if (!Platform.isIOS) return;

                    try {
                      final credential = await SignInWithApple.getAppleIDCredential(
                        scopes: [
                          AppleIDAuthorizationScopes.email,
                          AppleIDAuthorizationScopes.fullName,
                        ],
                      );

                      final oauthCredential = OAuthProvider("apple.com").credential(
                        idToken: credential.identityToken,
                        accessToken: credential.authorizationCode,
                      );

                      final userCredential = await FirebaseAuth.instance.signInWithCredential(oauthCredential);

                      // Save to Firestore (optional)
                      await FirebaseFirestore.instance
                          .collection('users')
                          .doc(userCredential.user!.uid)
                          .set({
                        'name': userCredential.user!.displayName ?? '',
                        'email': userCredential.user!.email ?? '',
                      }, SetOptions(merge: true));

                      Navigator.pushNamed(context, '/second', arguments: {
                        'name': userCredential.user!.displayName ?? '',
                        'age': '',
                      });
                    } catch (e) {
                      showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                          title: const Text('Apple Sign-In Failed'),
                          content: Text(e.toString()),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: const Text("OK")),
                          ],
                        ),
                      );
                    }
                  },
                  icon: Image.asset(
                    'assets/icons/icon_apple.png',
                    width: 15,
                    height: 15,
                  ),
                  label: const Text('使用Apple帳號登入'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(160, 255, 255, 255),
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                ),
              ),*/

              const SizedBox(height: 24),

              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: const Text(
                  '還沒有帳號嗎，點擊進行註冊',
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              const SizedBox(height: 12),

              const Text(
                '通過點擊繼續，您同意我們的《服務條款》和《隱私政策》',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: const Text(
                  'Home Page Navigator',
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
