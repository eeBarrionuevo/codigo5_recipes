import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  String title = "";
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController imageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Mis Recetas",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                //Estados TextField: Enabled, Focus, Error, Disable
                TextField(
                  controller: titleController,
                  decoration: InputDecoration(
                    hintText: "Ingresa un título",
                    filled: true,
                    fillColor: Color(0xffF0F0F0),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 12.0,
                      horizontal: 16.0,
                    ),
                    prefixIcon: SvgPicture.asset(
                      "assets/icons/target.svg",
                      fit: BoxFit.scaleDown,
                      colorFilter: const ColorFilter.mode(
                        Color(0xff69686E),
                        BlendMode.srcIn,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      // borderSide: BorderSide(
                      //   color: Colors.black12,
                      //   width: 1.0,
                      // ),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                TextField(
                  controller: descriptionController,
                  decoration: InputDecoration(
                    hintText: "Ingresa una descripción",
                    filled: true,
                    fillColor: Color(0xffF0F0F0),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 12.0,
                      horizontal: 16.0,
                    ),
                    prefixIcon: SvgPicture.asset(
                      "assets/icons/text.svg",
                      fit: BoxFit.scaleDown,
                      colorFilter: const ColorFilter.mode(
                        Color(0xff69686E),
                        BlendMode.srcIn,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      // borderSide: BorderSide(
                      //   color: Colors.black12,
                      //   width: 1.0,
                      // ),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                TextField(
                  controller: imageController,
                  decoration: InputDecoration(
                    hintText: "Ingresa el URL",
                    filled: true,
                    fillColor: Color(0xffF0F0F0),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 12.0,
                      horizontal: 16.0,
                    ),
                    prefixIcon: SvgPicture.asset(
                      "assets/icons/image.svg",
                      fit: BoxFit.scaleDown,
                      colorFilter: const ColorFilter.mode(
                        Color(0xff69686E),
                        BlendMode.srcIn,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      // borderSide: BorderSide(
                      //   color: Colors.black12,
                      //   width: 1.0,
                      // ),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 48.0,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffC0E863),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: const Text(
                      "Agregar",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff2F2F2F),
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 16.0,
                ),

                const Text(
                  "Listado general",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color(0xff2F2F2F),
                    fontWeight: FontWeight.w600,
                  ),
                ),

                //Elementos - Recetas registradas

                RecipeItem(
                  title: "Rocoto Relleno",
                  description:
                      "El rocoto relleno es el emblema gastronómico arequipeño por excelencia y también un símbolo del mestizaje cultural del Perú, pues combina insumos originarios de los Andes, así como aquellos traídos por los europeos hace 500 años.",
                  image:
                      "https://comeperuano.b-cdn.net/wp-content/uploads/2020/04/receta-rocoto-relleno..jpg",
                ),
                RecipeItem(
                  title: "Ceviche",
                  description:
                      "El Ceviche de pescado peruano es el plato tradicional por excelencia en el Perú. Los peruanos lo consideramos nuestro plato bandera y nos sentimos especialmente orgullosos de él.",
                  image:
                      "https://cdn0.recetasgratis.net/es/posts/7/4/1/ceviche_peruano_18147_600_square.jpg",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RecipeItem extends StatelessWidget {
  String title;
  String description;
  String image;

  RecipeItem({
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      padding: const EdgeInsets.all(14.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            offset: const Offset(5, 5),
            blurRadius: 10,
          ),
        ],
      ),
      // height: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14.0),
            child: Image.network(
              image,
              height: 230.0,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
              color: Color(0xff2f2f2f),
            ),
          ),
          const SizedBox(
            height: 4.0,
          ),
          Text(
            description,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
              color: Color(0xff2f2f2f).withOpacity(0.8),
            ),
          ),
        ],
      ),
    );
  }
}
