import 'package:flutter/material.dart';
import 'package:food_app/utils/colors.dart';
import 'package:food_app/widgets/custom_behavior.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../models/category.dart';
import '../providers/category_provider.dart';
import '../widgets/categoriesCard.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CategoryProvider categoryProvider =
        Provider.of<CategoryProvider>(context, listen: true);

    return ScrollConfiguration(
      behavior: CustomBehavior(),
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          elevation: 0,
          title: Text(
            "Categorías",
            style: GoogleFonts.robotoSlab(
                fontWeight: FontWeight.w500,
                fontSize: 18.0,
                color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: bgColor,
          leading: IconButton(
            padding: const EdgeInsets.symmetric(horizontal: 17.0),
            icon: const Icon(
              Icons.arrow_back,
              color: iconColor,
              size: 26.0,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.only(top: 15.0, bottom: 15.0),
          child: FutureBuilder<List<Category>>(
              future: categoryProvider.getCategories(),
              builder: (_, AsyncSnapshot<List<Category>> snapshot) {
                if (!snapshot.hasData) {
                  return const Center(
                    child: CircularProgressIndicator(
                        valueColor:
                            AlwaysStoppedAnimation<Color>(primaryColor)),
                  );
                } else {
                  final categories = snapshot.data!;

                  return GridView.builder(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: categories.length,
                      itemBuilder: (BuildContext context, int index) {
                        return CategoriesCardWidget(
                            urlImage: categories[index].fullImagePath,
                            title: categories[index].name,
                            imageWidth: 70.0,
                            imageHeigth: 70.0,
                            titleSize: 15.0);
                      });
                }
              }),
        ),
      ),
    );
  }
}
