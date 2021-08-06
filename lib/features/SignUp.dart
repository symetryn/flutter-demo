import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
                child: Text("SignUp Screen",
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
                  onTap: () {
                    AutoRouter.of(context).pushNamed("/login");
                  },
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text("SignUp")),
                  ),
                )),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                child: InkWell(
                  onTap: () {
                    AutoRouter.of(context).pushNamed("/login");
                  },
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text("Go to login ")),
                  ),
                ))
          ],
        ),
      ),
    ));
  }
}
