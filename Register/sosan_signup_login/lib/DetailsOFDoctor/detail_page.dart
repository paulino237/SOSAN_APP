import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sosan_signup_login/DetailsOFDoctor/cells/detail_cell.dart';
import 'package:sosan_signup_login/DetailsOFDoctor/utils/custom_icons_icons.dart';
import 'package:sosan_signup_login/DetailsOFDoctor/utils/he_color.dart';

class DetailPage extends StatefulWidget {
  //final Doctor doctor;

  //const DetailPage({Key? key, required this.doctor}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  /// **********************************************
  /// LIFE CYCLE METHODS
  /// **********************************************

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(bottom: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _titleSection(),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dr. ' + 'Raoul Sosan' + ' ' + 'SosaN',
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_month,
                        size: 14,
                        color: HexColor.vert,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Monday, Thursday, Wednesday',
                        style: GoogleFonts.montserrat(
                          color: HexColor.vert,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Icon(
                        CustomIcons.pin_location,
                        size: 14,
                        color: HexColor.vert,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Yaounde, Cameroun',
                        style: GoogleFonts.montserrat(
                          color: HexColor.vert,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: HexColor.vert, width: 1),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      ' Cardiologue',
                      style: GoogleFonts.montserrat(
                        color: HexColor.bleu,
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    'Dr. Albert Alexanderis a Renal Physician who has comprehensive expertise in the fields of Renal Medicine and Internal Medicine. While Dr Ho specializes in dialysis and critical care nephrology, years of extensive training have also equipped him with skills to effectively handle a wide range of other kidney diseases, including kidney impairment, inflammation, infection and transplantation.',
                    style: GoogleFonts.montserrat(
                      color: HexColor('#9E9E9E'),
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  SizedBox(
                    height: 91,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DetailCell(
                          title: '162',
                          subTitle: 'Patients',
                        ),
                        DetailCell(title: '4+', subTitle: 'Exp. Years'),
                        DetailCell(title: '4273', subTitle: 'Rating'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Container(
                      width: 300,
                      //padding: EdgeInsets.only(top: 10),
                      margin: EdgeInsets.only(top: 5),
                      height: 50,
                      decoration: BoxDecoration(
                        color: HexColor.bleu,
                        borderRadius: BorderRadius.circular(20),
                        // border: Border(
                        //   top: BorderSide(color: Colors.grey[600]!, width: 1.0),
                        //   bottom: BorderSide(color: Colors.grey[600]!, width: 1.0),
                        // ),
                      ),
                      child: Center(
                        child: Text(
                          "Take Appointment",
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// **********************************************
  /// WIDGETS
  /// **********************************************

  /// App Bar
  AppBar _buildAppBar() {
    return AppBar(
      title: Center(
          child: Text(
        'Cardiologist',
        style: GoogleFonts.montserrat(
            fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
      )),
      backgroundColor: HexColor.vert,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
      leading: IconButton(
        icon: Icon(CustomIcons.arrow_left, size: 20),
        onPressed: () => Navigator.pop(context),
      ),
      systemOverlayStyle: SystemUiOverlayStyle.light,
    );
  }

  /// Title Section
  Container _titleSection() {
    return Container(
      height: 250,
      color: HexColor.vert,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 207,
              height: 178,
              child: Image(
                filterQuality: FilterQuality.high,
                fit: BoxFit.fitHeight,
                image: AssetImage('assets/images/bg_shape.png'),
              ),
            ),
          ),
          Positioned(
            right: 64,
            bottom: 15,
            child: SizedBox(
              height: 250,
              child: AspectRatio(
                aspectRatio: 196 / 285,
                child: Hero(
                  tag: 'Raoul Sosan' + 'Sosan',
                  child: Image(
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.fitHeight,
                    image: AssetImage('assets/images/albert.png'),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 15,
              color: Colors.white,
            ),
          ),
          Positioned(
            right: 32,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: HexColor.bleu,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Text(
                    '4.5'.toString(),
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Icon(
                    CustomIcons.star,
                    color: Colors.white,
                    size: 14,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
