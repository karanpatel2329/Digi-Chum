import 'package:flutter/material.dart';
class featuredProduct extends StatelessWidget {
  const featuredProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 80,
              height: 80,
              padding: EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage("assets/images/washing.png"),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(
                      color: Colors.blue,
                      width: 2
                  )
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Center(child: Text("Laundry",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)),
            Center(child: Text("Wash & Iron",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),)
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 80,
              height: 80,
              padding: EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage("assets/images/white.png"),
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.blue,
                      Colors.lightBlueAccent,
                    ],
                    begin: AlignmentDirectional.bottomStart,
                    end: AlignmentDirectional.topEnd
                ),
                borderRadius: BorderRadius.all(Radius.circular(10)),

              ),
            ),
            SizedBox(
              height: 5,
            ),
            Center(child: Text("Dry-",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)),
            Center(child: Text("Cleaning",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),)
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 80,
              height: 80,
              padding: EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage("assets/images/washing.png"),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(
                      color: Colors.blue,
                      width: 2
                  )
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Center(child: Text("Stream",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)),
            Center(child: Text("Press",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),)
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 80,
              height: 80,
              padding: EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage("assets/images/washing.png"),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(
                      color: Colors.blue,
                      width: 2
                  )
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Center(child: Text("Shoe &",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)),
            Center(child: Text("Leather Care",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),)
          ],
        ),

      ],
    );
  }
}

