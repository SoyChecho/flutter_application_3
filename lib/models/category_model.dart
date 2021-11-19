import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({
    required this.name,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [name, imageUrl];

  static List<Category> categories = [
    Category(
      name: 'Gaseosas',
      imageUrl: 'https://cdn.cdnparenting.com/articles/2018/07/361921454-H.jpg'
    ),
    Category(
      name: 'Smoothies',
      imageUrl: 'https://www.hnosperez.com/blog/wp-content/uploads/2017/06/como-hacer-un-smothie-scaled.jpg'
    ),
    Category(
      name: 'Agua',
      imageUrl: 'https://5.imimg.com/data5/ON/NN/MY-29819733/packaged-water-bottle-500x500.jpg'
    ),
  ];
}
