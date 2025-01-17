import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sosan_signup_login/Constante.dart';

class BeginPayment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight + 50.0),
        child: SafeArea(
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(40.0),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      // Ajouter la logique de retour ici
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Constante.bleu,
                    ),
                  ),
                  Text(
                    "Payment",
                    style: GoogleFonts.montserrat(
                      color: Constante.bleu,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 48.0),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: Text(
                'Details of Payment',
                style: GoogleFonts.montserrat(
                  color: Constante.bleu,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            PrescriptionItem(
              name: 'Amount',
              dosage: '2.000 XAF',
            ),
            Divider(
              color: Constante.bleu,
              height: 1,
            ),
            const SizedBox(
              height: 15,
            ),
            PrescriptionItem(
              name: 'Last Update',
              dosage: 'January 17 ,2025 10:07 ',
            ),
            Divider(
              color: Constante.bleu,
              height: 1,
            ),
            const SizedBox(
              height: 15,
            ),
            Wait(
              name: 'Status',
              dosage: 'Initiated',
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Button(name: 'Share', icon: Icons.share),
                const SizedBox(
                  width: 5,
                ),
                Button(name: 'Pay', icon: Icons.attach_money),
              ],
            ),
            const SizedBox(
              height: 235,
            ),
            Center(
              child: Container(
                width: 300,
                //padding: EdgeInsets.only(top: 10),
                margin: EdgeInsets.only(top: 5),
                height: 50,
                decoration: BoxDecoration(
                  color: Constante.bleu,
                  borderRadius: BorderRadius.circular(20),
                  // border: Border(
                  //   top: BorderSide(color: Colors.grey[600]!, width: 1.0),
                  //   bottom: BorderSide(color: Colors.grey[600]!, width: 1.0),
                  // ),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      Text(
                        "Home Screen",
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PrescriptionItem extends StatelessWidget {
  final String name;
  final String dosage;

  PrescriptionItem({
    required this.name,
    required this.dosage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              name,
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),
          //SizedBox(width: 1.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    // Icon(
                    //   icon,
                    //   color: Constante.bleu,
                    // ),
                    Text(
                      ' $dosage',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                  ],
                ),
                // SizedBox(height: 4.0),
                // Text(
                //   'Fréquence: $frequency',
                //   style: TextStyle(
                //       //fontWeight: FontWeight.bold,
                //       fontSize: 15),
                // ),
                // SizedBox(height: 4.0),
                // Text(
                //   'Durée: $duration',
                //   style: TextStyle(
                //       //fontWeight: FontWeight.bold,
                //       fontSize: 15),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Wait extends StatelessWidget {
  final String name;
  final String dosage;

  Wait({
    required this.name,
    required this.dosage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              name,
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),
          SizedBox(width: 4.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 90,
                      height: 50,
                      decoration: BoxDecoration(color: Constante.vert),
                      child: Center(
                        child: Text(
                          ' $dosage',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                // SizedBox(height: 4.0),
                // Text(
                //   'Fréquence: $frequency',
                //   style: TextStyle(
                //       //fontWeight: FontWeight.bold,
                //       fontSize: 15),
                // ),
                // SizedBox(height: 4.0),
                // Text(
                //   'Durée: $duration',
                //   style: TextStyle(
                //       //fontWeight: FontWeight.bold,
                //       fontSize: 15),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String name;

  final IconData icon;

  Button({
    required this.name,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: 120,
        //padding: EdgeInsets.only(top: 10),
        margin: EdgeInsets.only(top: 5),
        height: 50,
        decoration: BoxDecoration(
          color: Constante.bleu,
          borderRadius: BorderRadius.circular(40),
          // border: Border(
          //   top: BorderSide(color: Colors.grey[600]!, width: 1.0),
          //   bottom: BorderSide(color: Colors.grey[600]!, width: 1.0),
          // ),
        ),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Icon(
                  icon,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Text(
                  name,
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 17),
                ),
              ),
              // SizedBox(width: 4.0),
            ],
          ),
        ),
      ),
    );
  }
}
