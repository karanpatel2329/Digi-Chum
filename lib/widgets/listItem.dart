import 'package:flutter/material.dart';
class ListItem extends StatefulWidget {
  ListItem({required this.item,required this.selected});
  String item;
  bool selected;
  @override
  _ListItemState createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    return widget.selected ?GestureDetector(
      onTap: (){
        setState(() {
          widget.selected=!widget.selected;
        });
      },
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.blue,
                  Colors.lightBlueAccent,
                ],
                begin: AlignmentDirectional.bottomStart,
                end: AlignmentDirectional.topEnd
            ),
            borderRadius: BorderRadius.all(Radius.circular(15))
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 12),
          child: Text(widget.item, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        ),
      ),
    ):GestureDetector(
      onTap: (){
        setState(() {
          widget.selected=!widget.selected;
        });
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
                color: Colors.blue,
                width: 3
            ),
            borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 12),
          child: Text(widget.item, style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}
