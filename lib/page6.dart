import 'package:fitness/training_info.dart';
import 'package:flutter/material.dart';

class Page6 extends StatefulWidget {
  Page6({Key? key}) : super(key: key);

  @override
  _Page6State createState() {
    return _Page6State();
  }
}

class _Page6State extends State<Page6> {
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
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Welcome to chest day'),centerTitle: true,backgroundColor: Colors.grey),
      body:ListView.builder(itemBuilder: (itemBuilder,position){
        return Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black, // Border color
                width: 2.0, // Border width
              )),
          margin: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(width: 250,height: 120,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('${chests[position].image}'), // Replace 'your_image.jpg' with your image asset path
                          fit: BoxFit.cover, // Adjust the BoxFit as needed
                        ),
                      ),
                    ),//i want to switch it with image

                    Container(
                      width: 100,height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('${chests[position].name}'),
                          SizedBox(height: 8,),
                          Text('${chests[position].duration}'),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              IconButton(onPressed: (){}, icon:Icon(Icons.sports_gymnastics_outlined,))
            ],
          ),
        ) ;
      },itemCount: chests.length,),
    );
  }
}