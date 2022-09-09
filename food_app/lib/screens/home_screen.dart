import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/utils/colors.dart';
import 'package:food_app/icons/icon_class_icons.dart';
import 'package:food_app/widgets/categoriesCard.dart';
import 'package:food_app/widgets/suggestionsCard_widget.dart';
import 'package:food_app/widgets/welcome_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: _customAppBar(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const WelcomeWidget(),
              const SizedBox(
                height: 20.0,
              ),
              Text("Sugerencias",
                  style: GoogleFonts.robotoSlab(
                      fontWeight: FontWeight.bold, fontSize: 18.0)),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 320.0,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => SuggestionsCardWidget(
                    imageUrl: "assets/images/hongos.png",
                    titlePlate: "Filete de Res en Salsa de Hongos",
                    persons: "8 personas",
                    time: "45 minutos",
                    firstColor: Color.fromARGB(213, 167, 194, 94),
                    secondColor: Color.fromARGB(255, 116, 144, 55),
                  ),
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Text("Categorias",
                  style: GoogleFonts.robotoSlab(
                      fontWeight: FontWeight.bold, fontSize: 18.0)),
              const SizedBox(
                height: 20.0,
              ),
              GridView.count(
                mainAxisSpacing: 15,
                crossAxisSpacing: 20,
                // padding: const EdgeInsets.all(8),
                shrinkWrap: true,
                crossAxisCount: 2,
                physics: const ScrollPhysics(),
                children: const [
                  CategoriesCardWidget(
                      urlImage: 'assets/images/sushi.svg',
                      title: "Plato Oriental",
                      imageWidth: 70.0,
                      imageHeigth: 70.0,
                      titleSize: 15.0),
                  CategoriesCardWidget(
                      urlImage: 'assets/images/food1.svg',
                      title: "Plato Criollo",
                      imageWidth: 70.0,
                      imageHeigth: 70.0,
                      titleSize: 15.0),
                  CategoriesCardWidget(
                      urlImage: 'assets/images/food1.svg',
                      title: "Plato Criollo",
                      imageWidth: 70.0,
                      imageHeigth: 70.0,
                      titleSize: 15.0),
                  CategoriesCardWidget(
                      urlImage: 'assets/images/sushi.svg',
                      title: "Plato Oriental",
                      imageWidth: 70.0,
                      imageHeigth: 70.0,
                      titleSize: 15.0),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ],
      ),

      // body:  ,
    );
  }

  AppBar _customAppBar() {
    return AppBar(
      backgroundColor: bgColor,
      elevation: 0,
      leading: IconButton(
        padding: const EdgeInsets.symmetric(horizontal: 17.0),
        icon: const Icon(
          Icons.menu,
          color: iconColor,
          size: 32.0,
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: iconColor,
            size: 32.0,
          ),
        )
      ],
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
