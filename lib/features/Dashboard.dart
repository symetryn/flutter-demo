import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hello_world/features/ListItem.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/background.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hi Ghulam",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  color: Colors.white),
                            ),
                            Text(
                              "Welcome Back",
                              style: GoogleFonts.poppins(
                                  fontSize: 12, color: Colors.white),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          height: 80,
                          width: 80,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.network(
                                  "https://www.w3schools.com/howto/img_avatar.png")),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(25),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Total Spend",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                                Text(
                                  "Cash Available",
                                  style: GoogleFonts.poppins(
                                      fontSize: 12, color: Colors.white),
                                ),
                              ],
                            ),
                            Container(
                              child: Text(
                                "\$148.00",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Colors.white),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.white),
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Recent Transactions",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
                    ],
                  ),
                  ListItem(
                      title: "Salary",
                      description: "Being Interactive",
                      price: "\$7,100",
                      icon: Icon(Icons.money,
                          size: 45, color: Colors.lightGreen)),
                  ListItem(
                      title: "Paypal",
                      description: "Being Interactive",
                      price: "\$2,100",
                      icon: Icon(Icons.face_outlined,
                          size: 45, color: Colors.blueGrey)),
                  ListItem(
                      title: "Car Repair",
                      description: "Being Interactive",
                      price: "\$21,100",
                      icon:
                          Icon(Icons.car_repair, size: 45, color: Colors.grey)),
                  ListItem(
                      title: "Buy Phone",
                      description: "Being Interactive",
                      price: "\$100",
                      icon: Icon(Icons.phone, size: 45, color: Colors.black12)),
                  ListItem(
                      title: "Buy Phone",
                      description: "Being Interactive",
                      price: "\$100",
                      icon: Icon(Icons.phone_android,
                          size: 45, color: Colors.teal)),
                  ListItem(
                      title: "Buy Phone",
                      description: "Being Interactive",
                      price: "\$100",
                      icon: Icon(Icons.work, size: 45, color: Colors.blue)),
                  ListItem(
                      title: "Buy Phone",
                      description: "Being Interactive",
                      price: "\$100",
                      icon: Icon(Icons.work, size: 45, color: Colors.blue)),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
