import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/models/category_model.dart';
import 'package:flutter_application_3/models/models.dart';
import 'package:flutter_application_3/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Tienda Mi Barrio'),
      bottomNavigationBar: CustomNavBar(),
      body: Column(
        children: [
          
          SectionTitle(title: 'RECOMENDADO'),
          ProductCarousel(
              products: Product.products
                  .where((product) => product.isRecommended)
                  .toList()),
          SectionTitle(title: 'MAS POPULAR'),
          ProductCarousel(
              products: Product.products
                  .where((product) => product.isPopular)
                  .toList()),
        ],
      ),
    );
  }
}
