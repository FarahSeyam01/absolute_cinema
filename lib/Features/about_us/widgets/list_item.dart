import 'package:flutter/material.dart';
class list_item extends StatelessWidget {
  const list_item({super.key,required this.icon,
      required this.content});
  final  IconData icon;
  final String content;
  @override
  Widget build(BuildContext context) {
    return ListTile(
                onTap: () {},
                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Color(0xff003248), shape: BoxShape.circle),
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                title: Text(
                  content,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff003248),
                  ),
                ),
              );
  }
}