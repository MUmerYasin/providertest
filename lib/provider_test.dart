
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providertest/custom_provider.dart';
import 'package:providertest/generator_class.dart';
import 'package:flutter/foundation.dart';


class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  var providerValue;
   String aa ='';

  @override
  void initState() {

    var providerValue = Provider.of<Favorites>(context, listen: false);
    aa = providerValue.getFruitName();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('Fruit name' + Provider.of<Favorites>(context).getFruitName()),
        title: Consumer<Favorites>(
          builder: (context, data, child){
            return Text( data.getFruitName() );
          },
        ),
      ),
      body: Center(
        child: Column(
          children:  [
            SizedBox(
              height: 30,
            ),

            FruitButton(fruit: "Apples"),
            FruitButton(fruit: "Oranges"),
            FruitButton(fruit: "Bananas"),

            SizedBox(height: 20,),

            SizedBox(child:
            Consumer<Favorites>(
              builder: (context, data, child){
                
                return Text( data.getFruitName() );
              },
            ),),

          ],
        ),
      ),
    );
  }
}
