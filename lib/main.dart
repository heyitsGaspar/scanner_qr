import 'package:flutter/material.dart';
import 'package:nuevologin/dtos/providers/mesero_provider.dart';
import 'package:nuevologin/home.dart';
import 'package:nuevologin/loginmesero.dart';
import 'package:provider/provider.dart';
import 'dtos/providers/mesa_provider.dart';
import 'loginmesa.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => WaiterProvider()),
        ChangeNotifierProvider(create: (_) => TableProvider()),
      ],
       child: MaterialApp(
        title: 'Mi aplicación',
        initialRoute: '/',
        routes: {
          '/': (context) => const LoginMesero(),
          '/loginmesa': (context) => const LoginMesa(),
          '/home': (context) =>  const HomeScreen(),
        },
      ),
     );

      
  }
}