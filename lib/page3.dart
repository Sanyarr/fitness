import 'package:fitness/page4.dart';
import 'package:flutter/material.dart';


class page3 extends StatefulWidget {
  page3({Key? key}) : super(key: key);

  @override
  _page3State createState() {
    return _page3State();
  }
}

class _page3State extends State<page3> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String name = ModalRoute.of(context)?.settings.arguments as String;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Welcome'),centerTitle: true,backgroundColor: Colors.grey,),
      body: Center(
        child: Container(

          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background2.jpg'),
               fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text('Hello $name',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: 300,
                  height: 300,
                  color: Colors.grey,
                  child: Center(child: Text('welcome to your fitness journey! Whether you\'re here to break a sweat, set new goals, or find inspiration, I\'m here to support you. Let\'s embark on this empowering adventure together. Get ready to unleash your full potential!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  )),
                ),
                ElevatedButton( style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                ),onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (builder){
                    return page4();
                  }));
                }, child: Text('Let\'s start',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),),
              ],
            ),
          ),
        ),
      ),

    );
  }
}

