import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:sosan_signup_login/Constante.dart';

class ProfileListItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool hasNavigation;

  const ProfileListItem({
    required Key? key,
    required this.icon,
    required this.text,
    this.hasNavigation = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Constante.kSpacingUnit.w * 5.5,
      margin: EdgeInsets.symmetric(
        horizontal: Constante.kSpacingUnit.w * 4,
      ).copyWith(
        bottom: Constante.kSpacingUnit.w * 2,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: Constante.kSpacingUnit.w * 2,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Constante.kSpacingUnit.w * 3),
        color: Theme.of(context).colorScheme.background,
      ),
      child: Row(
        children: <Widget>[
          Icon(
            this.icon,
            size: Constante.kSpacingUnit.w * 2.5,
          ),
          SizedBox(width: Constante.kSpacingUnit.w * 1.5),
          Text(
            this.text,
            style: Constante.kTitleTextStyle.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
          Spacer(),
          if (this.hasNavigation)
            Icon(
              LineAwesomeIcons.angle_right,
              size: Constante.kSpacingUnit.w * 2.5,
            ),
        ],
      ),
    );
  }
}
