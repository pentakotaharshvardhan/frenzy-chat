import 'package:flutter/material.dart';

class chartMessageBox extends StatelessWidget {
  const chartMessageBox({super.key, required this.text});

  final String text;
  final String _name = "Suryavardhan";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundColor: Colors.lightBlue,
              child: Text(_name[0]),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(_name, style: TextStyle(
                fontSize: 23,
                color: Colors.white
              )

              ),
              Container(
                padding: EdgeInsets.all(12),
                margin: EdgeInsets.only(top: 2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white,
                ),
                child: Text(text,style: TextStyle(
                  fontSize: 18,
                  color: Colors.amber
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,),
              )
            ],
          )
        ],
      ),
    );
  }

}


