import 'package:flutter/material.dart';
import 'package:providertest/custom_provider.dart';
import 'package:providertest/provider_test.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';


void main() {
  runApp(
    // const MyApp(),

      // ChangeNotifierProvider<ProviderModel>(
      //   create: (BuildContext context) => ProviderModel(),
      //   child: const MyApp(),
      // ),

    // /// Providers are above [MyApp] instead of inside it, so that tests
    // /// can use [MyApp] while mocking the providers

    MultiProvider(
      providers: [
        // ChangeNotifierProvider(create: (_) => Favorites()),

        //Provider

        ChangeNotifierProvider<ProviderModel>(create: (_) => ProviderModel()),
        ChangeNotifierProvider<ProviderCartModel>(create: (_) => ProviderCartModel()),

      ],
      child: const MyApp(),
    ),

    //   FutureProvider<int?>(
    //     initialValue: null,
    //     create: (context) => Future.Favorites(),
    //     child: MyApp(),
    //   )

  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  const HomePageScreen(),
    );
  }
}


