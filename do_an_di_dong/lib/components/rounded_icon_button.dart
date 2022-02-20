import 'package:e_commerce_app_flutter/constants.dart';
import 'package:flutter/material.dart';

import '../size_config.dart';

class RoundedIconButton extends StatelessWidget {
  final IconData iconData;
  final GestureTapCallback press;
  const RoundedIconButton({
    Key key,
    @required this.iconData,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder( borderRadius: BorderRadius.circular(50),),),
          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
          ),
         onPressed: press,
        child: Icon(
          iconData,
          color: kTextColor,
        ),
        ),
      );
  }
}
