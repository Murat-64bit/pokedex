import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constants/sabitler.dart';
import 'package:pokedex/constants/ui_helper.dart';

class UpTitle extends StatefulWidget {
  UpTitle({Key? key}) : super(key: key);

  @override
  State<UpTitle> createState() => _UpTitleState();
}

class _UpTitleState extends State<UpTitle> {
  String assetPath = 'images/pokeball.png';
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        height: UIHelper.getAppWidgetHeight(),
        child: Stack(
          children: [
            Padding(
              padding: UIHelper.getDefaultPadding(),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    Constants.title,
                    style: Constants.getTitleFontStyle(),
                  )),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Image.asset(assetPath,
                  width: ScreenUtil().orientation==Orientation.portrait
                  ? 0.2.sh
                  : 0.2.sw, 
                  fit: BoxFit.fitWidth),
            ),
          ],
        ),
      ),
    );
  }
}
