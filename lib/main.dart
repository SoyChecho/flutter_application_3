import 'package:flutter/material.dart';
import 'package:flutter_application_3/blocs/wishlist/wishlist_bloc.dart';
import 'package:flutter_application_3/config/app_router.dart';
import 'package:flutter_application_3/screens/home/home_screen.dart';
import 'package:flutter_application_3/screens/screens.dart';
import 'package:flutter_application_3/config/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => WishlistBloc()..add(StartWishList()))
      ], 
      child: MaterialApp(
        title: 'Tienda Mi Barrio',
        debugShowCheckedModeBanner: false,
        theme: theme(),
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: HomeScreen.routeName,
      ),
    );
  }
}



