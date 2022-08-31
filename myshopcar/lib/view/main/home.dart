import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:myshopcar/constants.dart';
import 'package:myshopcar/view/component/body.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        onPressed: (){},
        icon: SvgPicture.asset("assets/icons/back.svg")
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            // By default our  icon color is white
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            // By default our  icon color is white
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        const SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }
}
