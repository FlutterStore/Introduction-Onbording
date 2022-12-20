import 'package:flutter/material.dart';
import 'package:introduction_slider/introduction_slider.dart';

void main() => runApp(
  const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp()
  )
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionSlider(
      items:  [
        IntroductionSliderItem(
          logo: Image.asset('assets/images/onboard1.png',height: 250,),
          title: const Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text("Choose Your Meal",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue)),
          ),
          subtitle: const Padding(
            padding: EdgeInsets.only(bottom: 40,left: 20,right: 20),
            child: Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt.",textAlign: TextAlign.center,),
          )
        ),
        IntroductionSliderItem(
          logo: Image.asset('assets/images/onboard2.png',height: 250,),
          title: const Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text("Choose Your Payment",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue),),
          ),
          subtitle: const Padding(
            padding: EdgeInsets.only(bottom: 40,left: 20,right: 20),
            child: Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt",textAlign: TextAlign.center),
          )
        ),
        IntroductionSliderItem(
          logo: Image.asset('assets/images/onboard3.png',height: 250,),
          title: const Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text("Fast Delivery",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue),),
          ),
          subtitle: const Padding(
            padding: EdgeInsets.only(bottom: 40,left: 20,right: 20),
            child: Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt.",textAlign: TextAlign.center),
          )
        ),
      ],
      done: const Done(
        child: Icon(Icons.done),
        home: HomePage(),
      ),
      next: const Next(child: Icon(Icons.arrow_forward)),
      back: const Back(child: Icon(Icons.arrow_back)),
      dotIndicator: const DotIndicator(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text('Introduction Slider',style: TextStyle(fontSize: 15),),
      ),
      body: Center(child: Text('Welcome',style: TextStyle(fontSize: 25),)),
    );
  }
}