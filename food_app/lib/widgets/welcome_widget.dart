import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hola, Jannabel",
                style: GoogleFonts.robotoSlab(
                    fontWeight: FontWeight.bold, fontSize: 25.0)),
            Text("¿Qué comida vas a probar hoy?",
                style: GoogleFonts.robotoSlab(
                    fontWeight: FontWeight.w300, fontSize: 15.0)),
          ],
        ),
        Column(
          children: [
            SizedBox(
              height: 60.0,
              width: 60.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: FadeInImage.assetNetwork(
                  fit: BoxFit.cover,
                  image:
                      "https://www.dzoom.org.es/wp-content/uploads/2020/02/portada-foto-perfil-redes-sociales-consejos.jpg",
                  placeholder: "assets/images/foodavatar.png",
                ),
                // child: FadeInImage(
                //     image: Image.network(
                //             "https://www.dzoom.org.es/wp-content/uploads/2020/02/portada-foto-perfil-redes-sociales-consejos.jpg")
                //         .image,
                //     placeholder:
                //         Image.asset("assets/images/foodavatar.png").image),
              ),
            )
          ],
        )
      ],
    );
  }
}
