import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<void> _handleSignIn() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount!.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      await _auth.signInWithCredential(credential);
    } on FirebaseAuthException catch (e) {
      print(e.message);
      throw e;
    }
  }

  Future<void> signOutFromGoogle() async {
    await _googleSignIn.signOut();
    await _auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Login Screen",
                    style: GoogleFonts.poppins(
                        fontSize: 30, fontWeight: FontWeight.bold)),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: GoogleFonts.poppins(),
                    ))),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: GoogleFonts.poppins(),
                    ))),
            Padding(
                padding: const EdgeInsets.only(
                    top: 20, left: 8, right: 8, bottom: 0),
                child: InkWell(
                  onTap: () async {
                    await _handleSignIn();
                    AutoRouter.of(context).pushNamed("/Home");
                  },
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text("Login")),
                  ),
                )),
            Padding(
                padding:
                    const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 0),
                child: InkWell(
                  onTap: () async {
                    await signOutFromGoogle();
                    AutoRouter.of(context).pushNamed("/login");
                  },
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text("Logout")),
                  ),
                )),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: InkWell(
                  onTap: () {
                    AutoRouter.of(context).pushNamed("/sign-up");
                  },
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text("Go to sign up ")),
                  ),
                ))
          ],
        ),
      ),
    ));
  }
}
