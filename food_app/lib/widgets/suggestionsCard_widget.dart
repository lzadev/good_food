import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

import '../icons/icon_class_icons.dart';

class SuggestionsCardWidget extends StatelessWidget {
  SuggestionsCardWidget(
      {Key? key,
      required this.imageUrl,
      required this.titlePlate,
      required this.persons,
      required this.time,
      required this.firstColor,
      required this.secondColor})
      : super(key: key);

  final Color firstColor;
  final Color secondColor;
  final String imageUrl;
  final String titlePlate;
  final String persons;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        borderRadius: const BorderRadius.all(Radius.circular(18.0)),
        splashColor: Colors.grey,
        highlightColor: Colors.transparent,
        child: Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    firstColor,
                    secondColor
                  ],
                  stops: const [
                    0.1,
                    0.9,
                  ],
                  tileMode: TileMode.clamp,
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter),
              borderRadius: const BorderRadius.all(Radius.circular(18.0))),
          height: 300,
          width: 230,
          child: Stack(
            children: [
              Positioned(
                left: 70,
                top: -30,
                child: ClipOval(
                  child: Image.asset(
                    imageUrl,
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                height: 90.0,
                bottom: 30.0,
                left: 15,
                child: Column(
                  children: [
                    SizedBox(
                      width: 160,
                      child: Text(titlePlate,
                          maxLines: 2,
                          style: GoogleFonts.robotoSlab(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                              color: mainColor)),
                    ),
                  ],
                ),
              ),
              Positioned(
                height: 90.0,
                bottom: -10.0,
                left: 15,
                child: Row(
                  children: [
                    const Icon(
                      IconClass.plate,
                      size: 22.0,
                      color: mainColor,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      persons,
                      style: GoogleFonts.robotoSlab(
                          fontWeight: FontWeight.w300,
                          fontSize: 10.0,
                          color: mainColor),
                    ),
                    const SizedBox(width: 25),
                    const Icon(
                      IconClass.timer,
                      size: 19.0,
                      color: mainColor,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      time,
                      style: GoogleFonts.robotoSlab(
                          fontWeight: FontWeight.w300,
                          fontSize: 10.0,
                          color: mainColor),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
