import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sosan_signup_login/Constante.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  // Text(
                  //   "",
                  //   style: GoogleFonts.montserrat(
                  //     color: Colors.white,
                  //     fontSize: 20.0,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                  SizedBox(width: 48.0),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  height: 300.0,
                  decoration: BoxDecoration(
                    //borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage('assets/HG.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 16.0,
                  right: 16.0,
                  child: IconButton(
                    onPressed: () {
                      // Ajouter la logique pour marquer l'hôpital comme favori
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: Constante.bleu,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 7.0),
            // Reste du contenu de la page
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Hopital General",
                      style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          // Ajouter la logique de retour ici
                          Navigator.of(context).pop();
                        },
                        icon: Icon(
                          Icons.location_city,
                          color: Constante.vert,
                        ),
                      ),
                      Text(
                        "Location In : Ngousso, Yaoundé",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 5.0),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        Text(
                          'Phone : ',
                          style: GoogleFonts.montserrat(
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '12345',
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        Text(
                          'WebSite : ',
                          style: GoogleFonts.montserrat(
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'www.sosanmed.com',
                          style: GoogleFonts.montserrat(
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold,
                            color: Constante.bleu,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        Text(
                          'About: ',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'C est unounaisaid pcharux cas de maladie',
                          style: GoogleFonts.montserrat(
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Container(
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    margin: EdgeInsets.all(15),
                    height: 100.0,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 226, 225, 225)
                              .withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      // boxShadow: BoxShadow.lerpList(1, 1, ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 80.0,
                          height: 80.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/a.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dr. SOSAN',
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'Directeur de l\'Hôpital Général',
                              style: GoogleFonts.montserrat(
                                color: Colors.grey[600],
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        )),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Spécialités',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Ajouter la logique pour afficher plus de spécialités
                        },
                        child: Text(
                          'Voir plus',
                          style: GoogleFonts.montserrat(color: Constante.vert),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ServiceContainer(
                          letter: 'C',
                          serviceName: 'Cardiologie',
                        ),
                        SizedBox(width: 20.0),
                        ServiceContainer(
                          letter: 'O',
                          serviceName: 'Orthopédie',
                        ),
                        SizedBox(width: 20.0),
                        ServiceContainer(
                          letter: 'G',
                          serviceName: 'Gynécologie',
                        ),
                        SizedBox(width: 20.0),
                        ServiceContainer(
                          letter: 'P',
                          serviceName: 'Pédiatrie',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Services',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      // TextButton(
                      //   onPressed: () {
                      //     // Ajouter la logique pour afficher plus de spécialités
                      //   },
                      //   child: Text(
                      //     'Voir plus',
                      //     style: GoogleFonts.montserrat(color: Constante.vert),
                      //   ),
                      // ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Services(
                          asset: 'assets/a.jpg',
                          serviceName: 'Echographie',
                        ),
                        SizedBox(width: 20.0),
                        Services(
                          asset: 'assets/a.jpg',
                          serviceName: 'Operation',
                        ),
                        SizedBox(width: 20.0),
                        Services(
                          asset: 'assets/a.jpg',
                          serviceName: 'CHirugie',
                        ),
                        SizedBox(width: 20.0),
                        Services(
                          asset: 'assets/a.jpg',
                          serviceName: 'Pédiatrie',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Staffs Members',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      // TextButton(
                      //   onPressed: () {
                      //     // Ajouter la logique pour afficher plus de spécialités
                      //   },
                      //   child: Text(
                      //     'Voir plus',
                      //     style: GoogleFonts.montserrat(color: Constante.vert),
                      //   ),
                      // ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Staff(
                          role: 'Secretaire',
                          asset: 'assets/a.jpg',
                          serviceName: 'SOSAN1',
                        ),
                        SizedBox(width: 20.0),
                        Staff(
                          role: 'Secretaire',
                          asset: 'assets/a.jpg',
                          serviceName: 'SOSAN1',
                        ),
                        SizedBox(width: 20.0),
                        Staff(
                          role: 'Secretaire',
                          asset: 'assets/a.jpg',
                          serviceName: 'SOSAN1',
                        ),
                        SizedBox(width: 20.0),
                        Staff(
                          role: 'Secretaire',
                          asset: 'assets/a.jpg',
                          serviceName: 'SOSAN1',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Gallery',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      // TextButton(
                      //   onPressed: () {
                      //     // Ajouter la logique pour afficher plus de spécialités
                      //   },
                      //   child: Text(
                      //     'Voir plus',
                      //     style: GoogleFonts.montserrat(color: Constante.vert),
                      //   ),
                      // ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(width: 20.0),
                        gallery(),
                        SizedBox(width: 20.0),
                        gallery(),
                        SizedBox(width: 20.0),
                        gallery(),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Center(
                    child: Give(),
                    // child: Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     Icon(Icons.star, color: Constante.vert, size: 24.0),
                    //     SizedBox(width: 4.0),
                    //     Icon(Icons.star, color: Constante.vert, size: 24.0),
                    //     SizedBox(width: 4.0),
                    //     Icon(Icons.star, color: Constante.vert, size: 24.0),
                    //     SizedBox(width: 4.0),
                    //     Icon(Icons.star, color: Constante.vert, size: 24.0),
                    //     SizedBox(width: 4.0),
                    //     Icon(Icons.star, color: Constante.vert, size: 24.0),
                    //   ],
                    // ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Avis()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget ServiceContainer({required String letter, required String serviceName}) {
  return Container(
    width: 120.0,
    height: 120.0,
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 5,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
      borderRadius: BorderRadius.circular(20),
      color: Constante.vert,
    ),
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          width: 64.0,
          height: 64.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: Center(
            child: Text(
              letter,
              style: GoogleFonts.montserrat(
                color: Constante.vert,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          serviceName,
          style: GoogleFonts.montserrat(fontSize: 14.0, color: Colors.white),
        ),
      ],
    ),
  );
}

Widget Services({required String asset, required String serviceName}) {
  return Container(
    width: 120.0,
    height: 120.0,
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 5,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
      borderRadius: BorderRadius.circular(20),
      color: Constante.bleu,
    ),
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          width: 64.0,
          height: 64.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(asset),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          serviceName,
          style: GoogleFonts.montserrat(fontSize: 14.0, color: Colors.white),
        ),
      ],
    ),
  );
}

Widget gallery() {
  return Container(
    width: 200,
    margin: EdgeInsets.all(15),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.asset(
        width: 200,
        height: 150,
        'assets/HG.jpg',
        fit: BoxFit.contain,
      ),
    ),
    height: 150.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Constante.bleu,
    ),
  );
}

Widget Avis() {
  return Container(
    decoration: BoxDecoration(
        // border: Border(
        //   top: BorderSide(color: Colors.grey[600]!, width: 1.0),
        //   bottom: BorderSide(color: Colors.grey[600]!, width: 1.0),
        // ),
        ),
    padding: EdgeInsets.all(16.0),
    child: Row(
      children: [
        // Partie gauche avec le column
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Note
              Text(
                'Donnez Une Note',
                style: GoogleFonts.montserrat(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              // Étoiles
              Row(
                children: [
                  // Photo de profil
                  CircleAvatar(
                    radius: 24.0,
                    backgroundImage: AssetImage('assets/a.jpg'),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  // Étoiles
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.grey),
                      Icon(Icons.star, color: Colors.grey),
                      Icon(Icons.star, color: Colors.grey),
                      Icon(Icons.star, color: Colors.grey),
                      Icon(Icons.star, color: Colors.grey),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),

        // Partie droite avec les lignes colorées à moitié
      ],
    ),
  );
}

Widget Give() {
  return Container(
    decoration: BoxDecoration(
      border: Border(
        top: BorderSide(color: Colors.grey[600]!, width: 1.0),
        bottom: BorderSide(color: Colors.grey[600]!, width: 1.0),
      ),
    ),
    padding: EdgeInsets.all(16.0),
    child: Row(
      children: [
        // Partie gauche avec le column
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Note
              Text(
                '4.5',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              // Étoiles
              Row(
                children: [
                  // Étoiles
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star_half, color: Colors.amber),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              // Texte
              Text(
                '(4 475)',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 16.0),
        // Partie droite avec les lignes colorées à moitié
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Ligne 1 (couleur bleue à moitié)

              SizedBox(height: 8.0),
              // Ligne 2 (couleur verte à moitié)
              Container(
                width: 130,
                height: 5,
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(30),
                  // gradient: LinearGradient(
                  //   begin: Alignment.centerLeft,
                  //   end: Alignment.topRight,
                  //   colors: [
                  //     Colors.amber!,
                  //     Colors.white,
                  //   ],
                  // ),
                ),
                child: Text('Ligne 4'),
              ),
              SizedBox(height: 8.0),
              // Ligne 3 (couleur orange à moitié)
              Container(
                width: 130,
                height: 5,
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(30),
                  // gradient: LinearGradient(
                  //   begin: Alignment.centerLeft,
                  //   end: Alignment.topRight,
                  //   colors: [
                  //     Colors.amber!,
                  //     Colors.white,
                  //   ],
                  // ),
                ),
                child: Text('Ligne 4'),
              ),
              SizedBox(height: 8.0),
              // Ligne 4 (couleur pourpre à moitié)
              Container(
                width: 130,
                height: 5,
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(30),
                  // gradient: LinearGradient(
                  //   begin: Alignment.centerLeft,
                  //   end: Alignment.topRight,
                  //   colors: [
                  //     Colors.amber!,
                  //     Colors.white,
                  //   ],
                  // ),
                ),
                child: Text('Ligne 4'),
              ),
              SizedBox(height: 8.0),
              // Ligne 5 (couleur rouge à moitié)
              Container(
                width: 130,
                height: 5,
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.amber!,
                      Colors.white,
                    ],
                  ),
                ),
                child: Text('Ligne 5'),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget Staff(
    {required String asset,
    required String serviceName,
    required String role}) {
  return Container(
    width: 120.0,
    height: 120.0,
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 5,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
      borderRadius: BorderRadius.circular(20),
      color: Colors.white,
    ),
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          width: 64.0,
          height: 64.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(asset),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          serviceName,
          style: GoogleFonts.montserrat(
              fontSize: 13.0, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 2.0),
        Text(
          role,
          style: GoogleFonts.montserrat(fontSize: 10.0, color: Colors.black),
        ),
      ],
    ),
  );
}
