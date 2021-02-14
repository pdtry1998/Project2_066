import 'package:flutter/material.dart';
import 'package:project/screens/home_screen/first/first_model.dart';



class Slider_First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 75.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: destinations3.length,
            itemBuilder: (BuildContext contest, int index){
              Destination3 destination3 = destinations3[index];
              return GestureDetector(
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  width: 62.0,
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
                              blurRadius:2.0,
                            ),
                          ],
                        ),

                        child: Stack(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image(
                                height:80.0,
                                width: 65.0,
                                image: AssetImage(destination3.imageUrl),
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
