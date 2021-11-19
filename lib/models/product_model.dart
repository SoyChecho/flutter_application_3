import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  const Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isRecommended,
    required this.isPopular,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        name,
        category,
        imageUrl,
        price,
        isRecommended,
        isPopular,
      ];

  static List<Product> products = [
    Product(
      name: 'Dieta Cola',
      category: 'Gaseosas',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5XhYVtl_kU6nsq84r9S2oMEttpLrP0eyHwmd7a3c0s2YSGdtyjfaZ52Vokqkce1HRtGQ&usqp=CAU',
      price: 1200,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Pepsi',
      category: 'Gaseosas',
      imageUrl:
          'https://www.supermercadoluxor.com/wp-content/uploads/2020/03/Refresco-Pepsi-2L.jpg',
      price: 1600,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'Colombiana',
      category: 'Gaseosas',
      imageUrl:
          'https://cdn2.totalcode.net/homesentry/product-zoom/es/lata-gaseosa-colombiana-269ml-1.jpg',
      price: 1700,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'Fresa',
      category: 'Smoothies',
      imageUrl:
          'https://www.missmoothies.com/wp-content/plugins/phastpress/phast.php/c2VydmljZT1pbWFnZXMmc3JjPWh0dHBzJTNBJTJGJTJGd3d3Lm1pc3Ntb290aGllcy5jb20lMkZ3cC1jb250ZW50JTJGdXBsb2FkcyUyRjIwMTYlMkYwNSUyRnNtb290aGllLWRlLWZyZXNhLmpwZyZjYWNoZU1hcmtlcj0xNjMxNzg5OTExLTI2NzYxJnRva2VuPWY5MjI0N2FlMzU4M2QxMmE.q.jpg',
      price: 1500,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'OMI',
      category: 'Agua',
      imageUrl:
          'https://compraslike.com/wp-content/uploads/2021/04/Agua-sin-gas-omi-5000-ml.jpg',
      price: 3000,
      isRecommended: true,
      isPopular: false,
    ),
  ];
}
