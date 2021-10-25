
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providertest/custom_provider.dart';
import 'package:providertest/generator_class.dart';

class HeroForUser extends StatefulWidget {
  final String userID;

  const HeroForUser({Key? key, required this.userID}) : super(key: key);

  @override
  _HeroForUserState createState() => _HeroForUserState();
}

class _HeroForUserState extends State<HeroForUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Hero(
          tag: widget.userID,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 100,
                ),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Consumer<ProviderModel>(
                    builder: (context, data, child) {
                      return Image.network(data.getProfileImagesUserValue());
                    },
                  ),
                ),
                Consumer<ProviderModel>(
                  builder: (context, data, child) {
                    return Text(data.getNameValue());
                  },
                ),
                Consumer<ProviderModel>(
                  builder: (context, data, child) {
                    return Text(data.getFatherNameValue());
                  },
                ),
                ElevatedButton(onPressed: () {
          setState(() {


            //-----------------------------------

            int currentCartValue = Provider.of<ProviderCartModel>(context, listen: false).getIdValue();
            // int currentCartValue = context.watch<ProviderCartModel>().getIdValue();
                print(currentCartValue);
          Provider.of<ProviderCartModel>(context, listen: false)
              .changeValue(
          userId: currentCartValue+1,);


          //-----------------------------------

              // final counter = context.read<ProviderModel>();
              //    counter.increment();

            //context.read<Counter>().increment(),

            //------------------------------------



            Navigator.pop(context);

          });

          // print("ii");

          // Navigator.push(
          // context,
          // MaterialPageRoute(
          // builder: (context) => UserProfileVerticalListViews() ),
          // );
          //  Navigator.pop(context);
          },
          child: const Text("Alert")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
