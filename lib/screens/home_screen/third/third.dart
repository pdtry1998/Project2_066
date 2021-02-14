import 'package:flutter/material.dart';
import 'package:project/screens/home_screen/widget/destination_model.dart';
import 'package:project/screens/home_screen/widget/destination_widget/patong_screen.dart';



class Third extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'ศาลหลักเมืองภูเก็ต',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
            ],
          ),
        ),

        Container(
          height: 200.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: destinations.length,
            itemBuilder: (BuildContext contest, int index){
              Destination destination = destinations[index];
              return GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PatongScreen(
                      destination: destination,
                    ),
                  ),
                ),


                child: Container(
                  margin: EdgeInsets.all(10.0),
                  width: 392.0,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0.0,5.0),
                              blurRadius:6.0,
                            ),
                          ],
                        ),

                        child: Stack(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image(
                                height:160.0,
                                width: 380.0,
                                image: AssetImage(destination.imageUrl),
                                fit: BoxFit.cover,
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

