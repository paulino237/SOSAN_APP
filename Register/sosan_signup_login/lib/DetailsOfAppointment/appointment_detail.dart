import 'package:flutter/material.dart';
import 'package:sosan_signup_login/Constante.dart';

class AppointmentDetail extends StatelessWidget {
  // List<Map<String, String>> appointments = [
  //   {'scheduled': 'Oui', 'bookingSlot': '10h-11h', 'type': 'Consultation'},
  //   {'scheduled': 'Non', 'bookingSlot': '-', 'type': 'Annulé'},
  // ];

  // AppointmentDetail({super.key, required this.appointments});
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
                    "Appointments Details",
                    style: TextStyle(
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                    20), // Ajustez le rayon selon vos besoins
                color: Colors.white, // Couleur de fond du container
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  // ... contenu du Row

                  children: [
                    Expanded(
                      child: CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage('assets/a.jpg'),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            'Dr Raoul Sosan',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Ophtamologue ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Constante.vert,
                              ),
                              Text(
                                'Ngousso, Yaounde, ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Center(
              child: Text(
                'Details',
                style: TextStyle(
                  color: Constante.bleu,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            PrescriptionItem(
              name: 'Scheduled',
              dosage: 'Wed, Jan 15, 2025',
              icon: Icons.calendar_month_rounded,
            ),
            Divider(
              color: Constante.bleu,
              height: 1,
            ),
            PrescriptionItem(
              name: 'Booking Slot',
              dosage: '18:45 - 19:20',
              icon: Icons.timer_rounded,
            ),
            Divider(
              color: Constante.bleu,
              height: 1,
            ),
            PrescriptionItem(
              name: 'Type',
              dosage: 'Online',
              icon: Icons.grid_on_outlined,
            ),
            Divider(
              color: Constante.bleu,
              height: 1,
            ),
            Wait(
              name: 'Status',
              dosage: 'Waiting',
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                width: 300,
                //padding: EdgeInsets.only(top: 10),
                margin: EdgeInsets.only(top: 5),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                  // border: Border(
                  //   top: BorderSide(color: Colors.grey[600]!, width: 1.0),
                  //   bottom: BorderSide(color: Colors.grey[600]!, width: 1.0),
                  // ),
                ),
                child: Center(
                  child: Text(
                    "Cancel Appointment",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
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
                  child: Text(
                    "Reschedule Appointment",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
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
                  child: Text(
                    "Appintment Receipt",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
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
                  child: Text(
                    "Update Answers",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Center(
              child: Container(
                width: 150,
                //padding: EdgeInsets.only(top: 10),

                height: 50,
                decoration: BoxDecoration(
                  color: Constante.vert,
                  borderRadius: BorderRadius.circular(20),
                  // border: Border(
                  //   top: BorderSide(color: Colors.grey[600]!, width: 1.0),
                  //   bottom: BorderSide(color: Colors.grey[600]!, width: 1.0),
                  // ),
                ),
                child: Center(
                  child: Text(
                    "Join Session",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ),
              ),
            ),
            Center(
                child: Text(
              'Join on doctor notification',
              style: TextStyle(color: Colors.grey, fontSize: 13),
            ))
          ],
        ),
      ),
    );
  }
}

class PrescriptionItem extends StatelessWidget {
  final String name;
  final String dosage;
  final IconData icon;
  PrescriptionItem({
    required this.name,
    required this.dosage,
    required this.icon,
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
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),
          SizedBox(width: 4.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      icon,
                      color: Constante.bleu,
                    ),
                    Text(
                      ' $dosage',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
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
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
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
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(color: Colors.orange),
                      child: Center(
                        child: Text(
                          ' $dosage',
                          style: TextStyle(
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
