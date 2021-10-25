import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providertest/custom_provider.dart';
import 'package:providertest/generator_class.dart';
import 'package:badges/badges.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  // var providerValue;
  // late String addToCartIcon;
  // String aa = '';

  @override
  void initState() {
    // providerValue = Provider.of<ProviderModel>(context, listen: false);
    // aa = providerValue.getNameValue();


    // addToCartIcon = context.watch<ProviderCartModel>().getIdValue().toString();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        // title: Row( // Replace with a Row for horizontal icon + text
        //   children: <Widget>[
        //     const Icon(Icons.notifications_active),
        //     Text(context.watch<ProviderCartModel>().getIdValue().toString()),
        //   ],
        // ),

        actions: [
          Badge(
            position: BadgePosition.topEnd(top: 3, end: 18),
            animationDuration: const Duration(milliseconds: 300),
            animationType: BadgeAnimationType.slide,
            badgeContent: Text(
                // addToCartIcon,
              context.watch<ProviderCartModel>().getIdValue().toString(),
              style: const TextStyle(color: Colors.white),
            ),
            child: IconButton(
                icon: const Icon(Icons.shopping_cart),
                padding: const EdgeInsets.only(right: 30.0),
                onPressed: () {}),
          ),
        ],

        // title: Text(' Value : ' + Provider.of<ProviderModel>(context, listen: false).getIdValue().toString()),

        // title: Consumer<ProviderCartModel>(
        //   builder: (context, data, child) {
        //     return Text(data.getIdValue().toString());
        //   },
        // ),

        // title: Text(context.read<ProviderCartModel>().getIdValue().toString()),
        // title: Text(context.watch<ProviderCartModel>().getIdValue().toString()),

        // title: Text(context.select<ProviderCartModel>().getIdValue().toString()),

    //       title: return Provider<Example>(
    //       create: (_) => Example(),
    // // we use `builder` to obtain a new `BuildContext` that has access to the provider
    // builder: (context) {
    // return Text(context.watch<Example>()),
    // }
    // ),


      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),

              SizedBox(
                height: 400,
                child: UserProfileVerticalListViews(
                  fatherName: <String>[
                    "Art",
                    "Lenna",
                    "Donette",
                    "Simona",
                    "Mitsue",
                    "Leota",
                    "Sage",
                    "Kris",
                    "James",
                    "Josephine",
                    "Art",
                    "Lenna",
                    "Donette",
                    "Simona",
                    "Mitsue",
                    "Leota",
                    "Sage",
                    "Kris",
                    "James",
                    "Josephine",
                    "Art",
                    "Lenna",
                    "Donette",
                    "Simona",
                    "Mitsue",
                    "Leota",
                    "Sage",
                    "Kris",
                    "James",
                    "Josephine",
                  ],
                  // images: <String>['A', 'B', 'C'],
                  firstName: <String>[
                    "James",
                    "Josephine",
                    "Art",
                    "Lenna",
                    "Donette",
                    "Simona",
                    "Mitsue",
                    "Leota",
                    "Sage",
                    "Kris",
                    "James",
                    "Josephine",
                    "Art",
                    "Lenna",
                    "Donette",
                    "Simona",
                    "Mitsue",
                    "Leota",
                    "Sage",
                    "Kris",
                    "James",
                    "Josephine",
                    "Art",
                    "Lenna",
                    "Donette",
                    "Simona",
                    "Mitsue",
                    "Leota",
                    "Sage",
                    "Kris",

                  ],
                ),
              ),

              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  ElevatedButton(onPressed: (){
                    Provider.of<ProviderCartModel>(context, listen: false)
                        .incrementValue();
                  }, child: Text("+"),),


                  ElevatedButton(onPressed: (){
                    Provider.of<ProviderCartModel>(context, listen: false)
                        .changeValue(userId: 0);
                  }, child: Text("0"),),


                  ElevatedButton(onPressed: (){
                    Provider.of<ProviderCartModel>(context, listen: false)
                        .decrementValue();
                  }, child: Text("-"),),
                ],
              ),
              SizedBox(height: 20,),

              // SizedBox(child:

                /// Cell value or read value from Provider
                // Consumer<Favorites>(
                //     builder: (context, data, child) {
                //       return Text(data.getFruitName());
                //     },
                //   ),

              // ),
            ],
          ),
        ),
      ),
    );
  }
}
