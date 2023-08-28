import 'package:flutter/material.dart';
import 'package:food_recipes/widgets/build_card_food.dart';

class DetailsPage extends StatelessWidget {
  final String title, backgroundImage;
  const DetailsPage({
    super.key,
    required this.title,
    required this.backgroundImage,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(backgroundImage),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 35.0),
            Container(
              padding: const EdgeInsets.fromLTRB(30.0, 0.0, 20.0, 0.0),
              child: Material(
                borderRadius: BorderRadius.circular(20.0),
                elevation: 10,
                color: Colors.grey.withOpacity(0.4),
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Colors.white),
                    hintText: 'Search for recipes and channels',
                    hintStyle: TextStyle(color: Colors.white),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 150),
            Container(
              width: 200,
              margin: const EdgeInsets.only(left: 30.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              margin: const EdgeInsets.only(left: 30.0),
              width: 300,
              child: Text(
                'Kook-2 Directory give real links for your site.Kook-2 Directory give real links for your site.Kook-2 Directory give real links for your site.Kook-2 Directory give real links for your site.',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const SizedBox(height: 30.0),
            SizedBox(
              height: 125.0,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: <Widget>[
                  const SizedBox(width: 30.0),
                  BuildCardFood(
                    dividerColor: Colors.grey.withOpacity(0.9),
                    foodImage: 'assets/images/5.jpg',
                    userImage: 'assets/images/5.jpg',
                    user: 'Fansoni Muzanzo',
                    dividerWidth: 1.0,
                    food: 'Grilled Chicken with \nFruit Salad',
                    backgroundColor: Colors.grey.withOpacity(0.5),
                    textColor: Colors.white,
                  ),
                  const SizedBox(width: 15.0),
                  BuildCardFood(
                    dividerColor: Colors.grey.withOpacity(0.9),
                    foodImage: 'assets/images/5.jpg',
                    userImage: 'assets/images/5.jpg',
                    user: 'Fansoni Muzanzo',
                    dividerWidth: 1.0,
                    food: 'Grilled Chicken with \nFruit Salad',
                    backgroundColor: Colors.grey.withOpacity(0.5),
                    textColor: Colors.white,
                  ),
                  const SizedBox(width: 15.0),
                  BuildCardFood(
                    dividerColor: Colors.grey.withOpacity(0.9),
                    foodImage: 'assets/images/5.jpg',
                    userImage: 'assets/images/5.jpg',
                    user: 'Fansoni Muzanzo',
                    dividerWidth: 1.0,
                    food: 'Grilled Chicken with \nFruit Salad',
                    backgroundColor: Colors.grey.withOpacity(0.5),
                    textColor: Colors.white,
                  ),
                  const SizedBox(width: 15.0),
                  BuildCardFood(
                    dividerColor: Colors.grey.withOpacity(0.9),
                    foodImage: 'assets/images/5.jpg',
                    userImage: 'assets/images/5.jpg',
                    user: 'Fansoni Muzanzo',
                    dividerWidth: 1.0,
                    food: 'Grilled Chicken with \nFruit Salad',
                    backgroundColor: Colors.grey.withOpacity(0.5),
                    textColor: Colors.white,
                  ),
                  const SizedBox(width: 15.0),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
