import 'package:flutter/material.dart';
import 'package:food_recipes/widgets/build_card_food.dart';

class PopularPage extends StatelessWidget {
  const PopularPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          Container(
            height: 215,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(245, 238, 230, 1.0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 10,
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
                child: Material(
                  color: const Color.fromRGBO(249, 246, 241, 1.0),
                  borderRadius: BorderRadius.circular(20.0),
                  elevation: 10.0,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search for recipes and channels',
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(Icons.search, color: Colors.black),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25.0),
              Container(
                margin: const EdgeInsets.only(left: 20.0),
                padding: const EdgeInsets.only(left: 10.0),
                decoration: const BoxDecoration(
                  border: Border(
                    left: BorderSide(color: Colors.orange, width: 2.0),
                  ),
                ),
                child: const Text(
                  'POPULAR RECIPES \nTHIS WEEK',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ),
              const SizedBox(height: 5.0),
              SizedBox(
                height: 125,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: const <Widget>[
                    SizedBox(width: 20.0),
                    BuildCardFood(
                      dividerColor: Colors.orange,
                      foodImage: 'assets/images/5.jpg',
                      userImage: 'assets/images/5.jpg',
                      user: 'Fansoni Muzanzo',
                      dividerWidth: 1.0,
                      food: 'Grilled Chicken with \nFruit Salad',
                      backgroundColor: Colors.white,
                      textColor: Colors.black,
                    ),
                    SizedBox(width: 15.0),
                    BuildCardFood(
                      dividerColor: Colors.orange,
                      foodImage: 'assets/images/5.jpg',
                      userImage: 'assets/images/5.jpg',
                      user: 'Fansoni Muzanzo',
                      dividerWidth: 1.0,
                      food: 'Grilled Chicken with \nFruit Salad',
                    ),
                    SizedBox(width: 15.0),
                    BuildCardFood(
                      dividerColor: Colors.orange,
                      foodImage: 'assets/images/5.jpg',
                      userImage: 'assets/images/5.jpg',
                      user: 'Fansoni Muzanzo',
                      dividerWidth: 1.0,
                      food: 'Grilled Chicken with \nFruit Salad',
                    ),
                    SizedBox(width: 15.0),
                    BuildCardFood(
                      dividerColor: Colors.orange,
                      foodImage: 'assets/images/5.jpg',
                      userImage: 'assets/images/5.jpg',
                      user: 'Fansoni Muzanzo',
                      dividerWidth: 1.0,
                      food: 'Grilled Chicken with \nFruit Salad',
                    ),
                    SizedBox(width: 15.0),
                  ],
                ),
              ),
              const SizedBox(height: 5.0),
              Container(
                padding: const EdgeInsets.only(left: 25.0),
                child: const Text(
                  'September 7',
                  style: TextStyle(color: Colors.grey, fontSize: 14.0),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 25.0),
                child: const Text(
                  'TODAY',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 295,
                margin: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: const <BoxShadow>[
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 6,
                      offset: Offset(0.0, 1.0),
                    )
                  ],
                  image: const DecorationImage(
                    image: AssetImage('assets/images/4.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.only(left: 30.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(height: 150),
                      const Text(
                        'BEST OF \nTHE DAY',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Container(
                        height: 1.0,
                        color: Colors.white.withOpacity(0.5),
                        width: 70,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
