import 'package:flutter/material.dart';
import 'package:providertest/custom_provider.dart';
import 'package:providertest/provider_test.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';


void main() {
  runApp(
    // const MyApp(),

      ChangeNotifierProvider<Favorites>(
        create: (BuildContext context) => Favorites(),
        child: const MyApp(),
      ),

    // /// Providers are above [MyApp] instead of inside it, so that tests
    // /// can use [MyApp] while mocking the providers
    // MultiProvider(
    //   providers: [
    //     ChangeNotifierProvider(create: (_) => Favorites()),
    //   ],
    //   child: const MyApp(),
    // ),

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

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//
//         title: Text(widget.title),
//       ),
//       body: Center(
//
//         child: Column(
//
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
