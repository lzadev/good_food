import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesCardWidget extends StatelessWidget {
  const CategoriesCardWidget(
      {Key? key,
      required this.urlImage,
      required this.title,
      required this.imageWidth,
      required this.imageHeigth,
      required this.titleSize})
      : super(key: key);

  final String? urlImage;
  final String title;
  final double imageWidth;
  final double imageHeigth;
  final double titleSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(25),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        color: Color.fromARGB(255, 247, 247, 247),
      ),
      //
      height: 250,
      width: 250,
      child: Stack(children: [
        Center(
          child: Column(
            children: [
              urlImage == null
                  ? Image.asset("assets/images/image-not-found.png",
                      width: imageWidth, height: imageHeigth)
                  : FadeInImage(
                      placeholder:
                          const AssetImage("assets/images/image-not-found.png"),
                      image: NetworkImage(urlImage.toString()),
                      width: imageWidth,
                      height: imageHeigth),
              const SizedBox(height: 10.0),
              Text(
                title,
                style: GoogleFonts.robotoSlab(
                    fontWeight: FontWeight.bold, fontSize: titleSize),
              )
            ],
          ),
        )
      ]),
    );
  }
}
