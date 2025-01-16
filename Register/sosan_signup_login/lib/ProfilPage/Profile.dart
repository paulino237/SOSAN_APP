import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:sosan_signup_login/Constante.dart';
import 'package:sosan_signup_login/ProfilPage/Profil_List.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    var profileInfo = Expanded(
      child: Column(
        children: <Widget>[
          Container(
            height: Constante.kSpacingUnit.w * 10,
            width: Constante.kSpacingUnit.w * 10,
            margin: EdgeInsets.only(top: Constante.kSpacingUnit.w * 3),
            child: Stack(
              children: <Widget>[
                CircleAvatar(
                  radius: Constante.kSpacingUnit.w * 5,
                  backgroundImage: AssetImage('assets/a.jpg'),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: Constante.kSpacingUnit.w * 2.5,
                    width: Constante.kSpacingUnit.w * 2.5,
                    decoration: BoxDecoration(
                      color: Constante.kAccentColor,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      heightFactor: Constante.kSpacingUnit.w * 1.5,
                      widthFactor: Constante.kSpacingUnit.w * 1.5,
                      child: Icon(
                        LineAwesomeIcons.pen,
                        color: Colors.white,
                        size:
                            ScreenUtil().setSp(Constante.kSpacingUnit.w * 1.5),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: Constante.kSpacingUnit.w * 2),
          Text(
            'Sosan User',
            style: Constante.kCaptionTextStyle,
          ),
          SizedBox(height: Constante.kSpacingUnit.w * 0.5),
          Text(
            'Email : Sosan@gmail.com',
            style: GoogleFonts.montserrat(
              fontSize: ScreenUtil().setSp(Constante.kSpacingUnit.w * 0.9),
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: Constante.kSpacingUnit.w * 0.5),
          Text(
            'Phone : +1 (427) 4587-123',
            style: GoogleFonts.montserrat(
              fontSize: ScreenUtil().setSp(Constante.kSpacingUnit.w * 0.9),
              fontWeight: FontWeight.w600,
            ),
          ),
          // SizedBox(height: Constante.kSpacingUnit.w * 0.5),

          SizedBox(height: Constante.kSpacingUnit.w * 0.5),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: Constante.kSpacingUnit.w * 6,
              ).copyWith(
                bottom: Constante.kSpacingUnit.w * 2,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'SOSAN ID : DnGeEEf5EDLaF',
                    style: GoogleFonts.montserrat(
                        fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(width: Constante.kSpacingUnit.w * 1),
                  // Text(
                  //   'DnGeEEf5EDL',
                  //   style: GoogleFonts.montserrat(
                  //       fontSize: 12, fontWeight: FontWeight.w500),
                  // ),
                  IconButton(
                    icon: Icon(
                      Icons.copy,
                      color: Constante.kAccentColor,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          // SizedBox(height: 10),
          Container(
            margin: EdgeInsets.only(right: 20, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // Ajuste l'espacement entre les boutons
              children: [
                Container(
                  height: Constante.kSpacingUnit.w * 4,
                  width: Constante.kSpacingUnit.w * 15,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(Constante.kSpacingUnit.w * 6),
                    color: Constante.vert,
                  ),
                  child: Center(
                    child: Text(
                      'My Details ',
                      style: Constante.kButtonTextStyle,
                    ),
                  ),
                ),
                Container(
                  height: Constante.kSpacingUnit.w * 4,
                  width: Constante.kSpacingUnit.w * 15,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green,
                      width: 2.0,
                    ),
                    borderRadius:
                        BorderRadius.circular(Constante.kSpacingUnit.w * 6),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      'Share ',
                      style: GoogleFonts.montserrat(
                        fontSize:
                            ScreenUtil().setSp(Constante.kSpacingUnit.w * 1.5),
                        fontWeight: FontWeight.w400,
                        color: Constante.vert,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: Constante.kSpacingUnit.w * 0.5),
          Container(
            height: Constante.kSpacingUnit.w * 4,
            width: Constante.kSpacingUnit.w * 25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Constante.kSpacingUnit.w * 3),
              color: Constante.vert,
            ),
            child: Center(
              child: Text(
                'Protector / Protectee',
                style: Constante.kButtonTextStyle,
              ),
            ),
          ),
        ],
      ),
    );

    var themeSwitcher = ThemeSwitcher(
      builder: (context) {
        return AnimatedCrossFade(
          duration: Duration(milliseconds: 200),
          crossFadeState: Theme.of(context).brightness == Brightness.dark
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
          firstChild: GestureDetector(
            onTap: () => ThemeSwitcher.of(context)
                .changeTheme(theme: Constante.kLightTheme),
            child: Icon(
              LineAwesomeIcons.sun,
              size: ScreenUtil().setSp(Constante.kSpacingUnit.w * 3),
            ),
          ),
          secondChild: GestureDetector(
            onTap: () => ThemeSwitcher.of(context)
                .changeTheme(theme: Constante.kDarkTheme),
            child: Icon(
              LineAwesomeIcons.moon,
              size: ScreenUtil().setSp(Constante.kSpacingUnit.w * 3),
            ),
          ),
        );
      },
    );

    var header = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(width: Constante.kSpacingUnit.w * 0.5),
        Icon(
          LineAwesomeIcons.arrow_left,
          size: ScreenUtil().setSp(Constante.kSpacingUnit.w * 3),
        ),
        //profileInfo,
        themeSwitcher,
        SizedBox(width: Constante.kSpacingUnit.w * 3),
      ],
    );

    return ThemeSwitchingArea(
      child: Builder(
        builder: (context) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: Padding(
                  padding: const EdgeInsets.only(
                      left: 18.0, top: 12.0, bottom: 12.0, right: 12.0),
                  child: InkWell(
                      onTap: () {
                        bool isLoggedIn = false;
                        if (isLoggedIn) {
                          null;
                        } else {
                          null;
                        }
                      },
                      child: Icon(
                        LineAwesomeIcons.arrow_left,
                        size: 30.0,
                        color: Colors.black,
                      ))),
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: themeSwitcher,
                )
              ],
              title: Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            " Personnal Details", // Les deux premières lettres
                        style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              )),
            ),
            body: Column(
              children: <Widget>[
                //SizedBox(height: Constante.kSpacingUnit.w * 1),
                //header,
                Expanded(
                  child: ListView(
                    children: <Widget>[
                      profileInfo,
                      SizedBox(height: Constante.kSpacingUnit.w * 2),
                      ProfileListItem(
                        icon: LineAwesomeIcons.bell,
                        text: 'Notification',
                        key: null,
                      ),
                      ProfileListItem(
                        icon: LineAwesomeIcons.calendar,
                        text: 'My Appointments',
                        key: null,
                      ),
                      ProfileListItem(
                        icon: LineAwesomeIcons.key,
                        text: 'Change Password',
                        key: null,
                      ),
                      ProfileListItem(
                        icon: LineAwesomeIcons.user_shield,
                        text: 'Privacy',
                        key: null,
                      ),
                      ProfileListItem(
                        icon: LineAwesomeIcons.wallet,
                        text: 'Payment Profile',
                        key: null,
                      ),
                      ProfileListItem(
                        icon: LineAwesomeIcons.question_circle,
                        text: 'Help & Support',
                        key: null,
                      ),
                      ProfileListItem(
                        icon: LineAwesomeIcons.question_circle,
                        text: 'FAQ',
                        key: null,
                      ),
                      ProfileListItem(
                        icon: LineAwesomeIcons.language,
                        text: 'Language',
                        key: null,
                      ),
                      ProfileListItem(
                        icon: LineAwesomeIcons.alternate_sign_out,
                        text: 'Logout',
                        hasNavigation: false,
                        key: null,
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
