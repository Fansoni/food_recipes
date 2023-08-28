import 'package:flutter/material.dart';

class BuildCardFood extends StatelessWidget {
  final String user, food, foodImage, userImage;
  final Color dividerColor;
  final Color? backgroundColor, textColor;
  final double dividerWidth;
  const BuildCardFood({
    super.key,
    required this.user,
    required this.food,
    required this.foodImage,
    required this.userImage,
    required this.dividerColor,
    required this.dividerWidth,
    this.backgroundColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      color: backgroundColor ?? Colors.grey.withOpacity(0.4),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage(foodImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(food, style: TextStyle(color: textColor, fontSize: 16)),
                const SizedBox(height: 10.0),
                Container(
                  height: dividerWidth,
                  width: 70.0,
                  decoration: BoxDecoration(
                    boxShadow: const <BoxShadow>[
                      BoxShadow(color: Colors.black, blurRadius: 1),
                    ],
                    color: dividerColor,
                  ),
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.5),
                        image: DecorationImage(
                          image: AssetImage(userImage),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Text(user, style: TextStyle(color: textColor, fontSize: 16))
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
