import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Wallet extends StatefulWidget {
  Wallet({Key? key}) : super(key: key);

  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            AutoRouter.of(context).pushNamed("/Home");
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 20,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.dashboard_customize_outlined,
              size: 20,
              color: Colors.black,
            ),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 20.0, left: 30, right: 30, bottom: 0),
                child: Text("My Cards",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.black87)),
              ),
              Padding(
                padding: EdgeInsets.all(30),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage("assets/images/background.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.card_membership,
                                color: Colors.white,
                                size: 40,
                              ),
                              Icon(
                                Icons.credit_card_outlined,
                                color: Colors.white,
                                size: 40,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("1233 1233 1233 1233",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 22,
                                  color: Colors.white)),
                          SizedBox(
                            height: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("CARD HOLDER",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: Colors.white)),
                                  Text("GHULAM",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.white)),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Expiry Date",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: Colors.white)),
                                  Text("24/2020",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.white)),
                                ],
                              ),
                            ],
                          ),
                        ]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, left: 25, right: 25, bottom: 10),
                child: Text("Payment Options",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black87)),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, left: 25, right: 25, bottom: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Pending amount",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.black38)),
                    Text("\$55",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.black87)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, left: 25, right: 25, bottom: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mobile Phone Payment",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.black38)),
                    Text("\$190",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.black87)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, left: 25, right: 25, bottom: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Vat",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.black38)),
                    Text("\$4",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.black87)),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20),
                child: Container(
                  height: 1,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, left: 25, right: 25, bottom: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Total Payment",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.black38)),
                    Text("\$149",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.black87)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
