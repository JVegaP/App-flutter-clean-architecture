import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:rick_morty/presentation/provider/character_detail/character_detail_provider.dart';
import 'package:rick_morty/presentation/provider/home/home_provider.dart';
import 'package:rick_morty/presentation/ui/splash/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({Key? key}) : super(key: key);
  @override
  StateMyApp createState() => StateMyApp();
}

class StateMyApp extends State<MyApp>{

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.black87,
        statusBarIconBrightness: Brightness.light
    ));
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]
    );
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeProvider(),),
        ChangeNotifierProvider(create: (_) => CharacterDetailProvider(),),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
      ),
    );
  }

}