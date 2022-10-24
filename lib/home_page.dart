import 'package:flutter/material.dart';
import 'package:responsive_app/responsive_helper.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive Design"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: ResponsiveWidget(
            mobile: Column(
              children: [
                BuildBanner(),
                BuildIntroText()
              ],
              
            ),
            tab: Row(
              children: [
                BuildBanner(),
                const SizedBox(width: 20,),
                Expanded(child: BuildIntroText())
              ],
            ),
          ),
        )
      ),
    );
  }

  Text BuildIntroText() {
    return const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas risus nisi, lacinia ut euismod non, volutpat vel quam. Morbi purus diam, iaculis vitae dui in, varius pellentesque mi. Sed dapibus cursus lectus, sed ultricies ex facilisis et. Sed mollis, tellus eget convallis faucibus, justo erat laoreet tortor, tristique feugiat risus lectus quis nunc. Proin elementum lacinia justo, sed vestibulum sapien suscipit ut. Praesent accumsan elementum ex, rhoncus eleifend orci venenatis nec. Vivamus ut bibendum metus, eu ornare ipsum. Suspendisse ut tortor turpis.'
              ,style: TextStyle(fontSize: 22) ,
              );
  }

  Container BuildBanner() {
    return Container(
                width: 320,
                height: 180,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [Colors.red,Colors.pink]),
                  borderRadius: BorderRadius.circular(12)
                ),
              );
  }
}
