import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_svg/svg.dart';
import 'package:sosan_signup_login/Constante.dart';
import 'package:sosan_signup_login/DetailsOFDoctor/detail_page.dart';
import 'package:sosan_signup_login/DetailsOfHospital/details.dart';
import 'package:sosan_signup_login/ProfilPage/Profile.dart';
import 'package:sosan_signup_login/Register%20and%20Login/Home.dart';
import 'package:sosan_signup_login/RellVideos/HomeForVideo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  final List<String> images = [
    'assets/cover.jpg',
    'assets/europe.jpg',
    'assets/asia.jpg',
    'assets/australia.jpg',
    'assets/animals.jpg',
    'assets/trekking.jpg',
    // Ajoutez plus d'images selon vos besoins
  ];
  int temp_indexed = 1;
  bool isLoggedIn = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var text = "SOSAN";
    return Padding(
      padding: EdgeInsets.only(top: 25.0),
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: temp_indexed,
              backgroundColor: Colors.white,
              selectedFontSize: 8,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home, color: Constante.bleu),
                    label: '',
                    backgroundColor: Colors.white),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.chat,
                      color: Constante.bleu,
                    ),
                    label: '',
                    backgroundColor: Colors.white),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.note_add,
                      color: Constante.bleu,
                    ),
                    label: '',
                    backgroundColor: Colors.white),
                BottomNavigationBarItem(
                    icon: IconButton(
                      color: Constante.bleu,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileScreen()),
                        );
                      },
                      icon: Icon(
                        Icons.person,
                      ),
                    ),
                    label: '',
                    backgroundColor: Colors.white),
              ],
              onTap: (index) {
                setState(() {
                  temp_indexed = index;
                });
              }),
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.white),
          title: Center(
              child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: text.substring(0, 2), // Les deux premières lettres
                    style: GoogleFonts.montserrat(
                        color: Constante.vert,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: text.substring(
                        2, text.length - 2), // Le texte du milieu
                    style: GoogleFonts.montserrat(
                        color: Constante.bleu,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: text.substring(
                        text.length - 2), // Les deux dernières lettres
                    style: GoogleFonts.montserrat(
                        color: Constante.bleu,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          )),
          leading: Padding(
            padding: const EdgeInsets.only(
                left: 18.0, top: 12.0, bottom: 12.0, right: 12.0),
            child: InkWell(
              onTap: () {
                if (isLoggedIn) {
                  Navigator.push(
                      // S'il nest pas connecter on le redirige vers la page de Faq
                      context,
                      MaterialPageRoute(builder: (context) => Home()));
                } else {
                  Navigator.push(
                      // S'il est connecte on le redirige vers la DashBoard
                      context,
                      MaterialPageRoute(builder: (context) => Home()));
                }
              },
              child: Icon(
                Icons.menu_sharp,
                size: 30.0,
                color: Colors.black,
              ),
            ),
          ),
          actions: <Widget>[
            !isLoggedIn ? profilLogout() : profilLogin(),
            SizedBox(width: 0.0),
            !isLoggedIn ? SizedBox(width: 0.0) : ShowBadge(),
            SizedBox(width: 2.0),
            !isLoggedIn ? SizedBox(width: 0.0) : ShowBadge(),
          ],
        ),
        body: Container(
          width: size.width,
          height: size.height,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 25.0,
                    ),
                    Container(
                      width: double.infinity,
                      height: 50.0,
                      margin: EdgeInsets.only(left: 18.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(right: 7.0),
                              padding: EdgeInsets.symmetric(horizontal: 15.0),
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 241, 239, 239),
                                  borderRadius: BorderRadius.circular(40.0)),
                              child: TextFormField(
                                cursorColor: Constante.vert,
                                decoration: InputDecoration(
                                    icon: Icon(
                                      Icons.location_on_outlined,
                                      size: 25.0,
                                      color: Constante.vert,
                                    ),
                                    border: InputBorder.none,
                                    hintText: "Rechercher...",
                                    hintStyle: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        // ignore: deprecated_member_use
                                        color: Colors.black.withOpacity(0.5))),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              // Si l'utilisateur clic sur le bouton de filtre ca doit le rediriger vers la page de filtre
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Home()));
                            },
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              margin:
                                  const EdgeInsets.only(left: 7.0, right: 12.0),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 241, 239, 239),
                                  borderRadius: BorderRadius.circular(13.0)),
                              child: const Icon(
                                Icons.favorite,
                                color: Constante.bleu,
                                size: 25.0,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: MainContainer(),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(left: 16.0),
                            child: Text("Actualités ",
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 10),
                          child: InkWell(
                            onTap: () {
                              // L'utilisateur doit etre rediriger vers la page des categories
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Home()));
                            },
                            child: Text(
                              "Voir plus",
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.bold,
                                  color: Constante.vert),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      height: 125.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ), // Définissez la hauteur du conteneur
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: images.length,
                        itemBuilder: (context, index) {
                          return Container(
                            // decoration: BoxDecoration(
                            //   borderRadius: BorderRadius.circular(50.0),
                            // ),
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.asset(
                                images[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

//Carousel
  // ignore: non_constant_identifier_names
  Widget Carousel() {
    return Carousel();
  }
  // Image Container

  Widget MainContainer() {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ImageContainer(
              name: 'Hospital',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailsScreen()));
              },
              colorIcon: Constante.bleu,
              color: Constante.bleu,
              colorBorder: Constante.vert,
              icon: Icons.house,
            ),
            const SizedBox(
              width: 16.0,
            ),
            ImageContainer(
                colorIcon: Constante.vert,
                color: Constante.vert,
                colorBorder: Constante.bleu,
                icon: Icons.medication_liquid,
                name: 'Pharmacy',
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                }),
          ],
        ),
        const SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ImageContainer(
                colorIcon: Constante.vert,
                color: Constante.vert,
                colorBorder: Constante.bleu,
                icon: Icons.medical_services,
                name: 'Doctors',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DetailPage()));
                }),
            const SizedBox(
              width: 16.0,
            ),
            ImageContainer(
                colorIcon: Constante.bleu,
                color: Constante.bleu,
                colorBorder: Constante.vert,
                icon: Icons.attach_money,
                name: 'Insurance',
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                }),
          ],
        ),
        const SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ImageContainer(
                colorIcon: Constante.bleu,
                color: Constante.bleu,
                colorBorder: Constante.vert,
                icon: Icons.videocam,
                name: ' Video',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeVideo()));
                }),
            const SizedBox(
              width: 16.0,
            ),
            ImageContainer(
                colorIcon: Constante.vert,
                color: Constante.vert,
                colorBorder: Constante.bleu,
                icon: Icons.group,
                name: 'NGO',
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                }),
          ],
        ),
      ],
    );
  }

  Widget ImageContainer(
      {required String name,
      required Color color,
      required Color colorIcon,
      required Color colorBorder,
      required IconData icon,
      required Function onTap}) {
    return Container(
      width: 150.0,
      height: 80.0,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: colorBorder, width: 1),
      ),
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            color: colorIcon,
            size: 20.0,
          ),
          SizedBox(width: 15.0),
          TextButton(
            onPressed: onTap(),
            child: Text(
              name,
              style: GoogleFonts.montserrat(
                  color: color, fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  Widget profilLogout() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Home()));
      },
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Image.asset(
            'assets/cmr.png',
            width: 30,
            height: 30,
          )),
    );
  }

  Widget ShowBadge() {
    return Container(
        margin: EdgeInsets.only(top: 5),
        child: InkWell(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(
              builder: (context) => Home(),
            ))
                .then((value) {
              // you can do what you need here
              setState(() {});
            });
          },
          child: const Badge(
            // badgeContent: Text(session.nbreNotif.toString(), style: const TextStyle(color: Colors.white),),
            // badgeColor: Constante.vert,
            child: Icon(
              Icons.notifications,
              size: 25,
            ),
          ),
        ));
  }

  Widget profilLogin() {
    return InkWell(
      onTap: () {
        if (!isLoggedIn) {
          Navigator.push(
              // s'il n'est pas connecter ou alors sa session a expiree
              context,
              MaterialPageRoute(builder: (context) => Home()));
        } else {
          Navigator.push(
              // S'il est connecté
              context,
              MaterialPageRoute(builder: (context) => Home()));
        }
      },
      child: Container(
        margin: EdgeInsets.only(top: 10),
        height: 50,
        width: 50,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FadeInUp(
              duration: Duration(milliseconds: 1600),
              child: Container(
                height: 35,
                width: 40,
                child: CircleAvatar(
                  child: showText("Miguel"),
                  radius: 30.0,
                  // backgroundImage:  NetworkImage(Constante.serveurAdressforImage+session.profil),
                  //AssetImage('assets/img/propic.jpg'),
                  backgroundColor: Colors.white,
                  // Avec les API et le serveur
                ),
                decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                  BoxShadow(
                      color: Constante.vert,
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 3))
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }

  showText(String profile) {
    if (profile.isNotEmpty) {
      return Text('');
    } else {
      return Text(profile.substring(0, 2));
    }
  }
}
