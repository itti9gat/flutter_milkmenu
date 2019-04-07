import 'package:flutter/material.dart';

import '../models/milkmenu.dart';

class Itemcard extends StatelessWidget {
  const Itemcard(
      {this.milkmenu, this.increment, this.decrement});


  final Milkmenu milkmenu;
  final VoidCallback increment;
  final VoidCallback decrement;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(top: 20.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 25.0,
          child: Container(
            height: MediaQuery.of(context).size.height - 250,
            width: MediaQuery.of(context).size.width - 150,
            child: Container(
              margin: EdgeInsets.only(bottom: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width - 150,
                    height: 220.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: DecorationImage(
                        image: AssetImage(milkmenu.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 15.0,),
                        Text(milkmenu.name,
                            style: TextStyle(
                                fontSize: 40.0,
                                fontFamily: "Kanit")),
                        Padding(
                          padding: EdgeInsets.only(top: 15.0),
                          child: Text(
                            "• " + milkmenu.subtitle + " •",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 27.0,
                                fontFamily: "Kanit"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
