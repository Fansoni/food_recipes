import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  PageController pageController;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);

    pageController = PageController(
      initialPage: 0,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        scrollDirection: Axis.vertical,
        children: <Widget>[
          PageView(
            children: <Widget>[
              DetailsPage(title: 'ROASTED LAMB', backgroundImage: 'assets/images/3.jpg'),
              DetailsPage(title: 'SECOND PAGE', backgroundImage: 'assets/images/4.jpg'),
              DetailsPage(title: 'THIRD PAGE', backgroundImage: 'assets/images/5.jpg'),
            ],
          ),
          PopularPage(),
        ],
      ),
    );
  }
}

class PopularPage extends StatelessWidget {
  const PopularPage({
    Key key,
  }) : super(key: key);

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
            decoration: BoxDecoration(
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
                padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
                child: Material(
                  color: Color.fromRGBO(249, 246, 241, 1.0),
                  borderRadius: BorderRadius.circular(20.0),
                  elevation: 10.0,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search for recipes and channels',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      prefixIcon: Icon(Icons.search, color: Colors.black,),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.0,),
              Container(
                margin: EdgeInsets.only(left: 20.0),
                padding: EdgeInsets.only(left: 10.0),
                decoration: BoxDecoration(
                  border: Border(left: BorderSide(color: Colors.orange, width: 2.0)),
                ),
                child: Text(
                  'POPULAR RECIPES \nTHIS WEEK',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0
                  ),
                ),
              ),
              SizedBox(height: 5.0,),
              Container(
                height: 125,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: <Widget>[
                    SizedBox(width: 20.0,),
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
                    SizedBox(width: 15.0,),
                    BuildCardFood(
                      dividerColor: Colors.orange,
                      foodImage: 'assets/images/5.jpg',
                      userImage: 'assets/images/5.jpg',
                      user: 'Fansoni Muzanzo',
                      dividerWidth: 1.0,
                      food: 'Grilled Chicken with \nFruit Salad',
                    ),
                    SizedBox(width: 15.0,),
                    BuildCardFood(
                      dividerColor: Colors.orange,
                      foodImage: 'assets/images/5.jpg',
                      userImage: 'assets/images/5.jpg',
                      user: 'Fansoni Muzanzo',
                      dividerWidth: 1.0,
                      food: 'Grilled Chicken with \nFruit Salad',
                    ),
                    SizedBox(width: 15.0,),
                    BuildCardFood(
                      dividerColor: Colors.orange,
                      foodImage: 'assets/images/5.jpg',
                      userImage: 'assets/images/5.jpg',
                      user: 'Fansoni Muzanzo',
                      dividerWidth: 1.0,
                      food: 'Grilled Chicken with \nFruit Salad',
                    ),
                    SizedBox(width: 15.0,),
                  ],
                ),
              ),
              SizedBox(height: 5.0,),
              Container(
                padding: EdgeInsets.only(left: 25.0),
                child: Text(
                  'September 7',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14.0
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 25.0),
                child: Text(
                  'TODAY',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 295,
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 6,
                      offset: Offset(0.0, 1.0),
                    )
                  ],
                  image: DecorationImage(
                    image: AssetImage('assets/images/4.jpg'),
                    fit: BoxFit.cover
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.only(left: 30.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 150,),
                      Text(
                        'BEST OF \nTHE DAY',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Container(
                        height: 1.0,
                        color: Colors.white.withOpacity(0.5),
                        width: 70,
                      )
                    ],
                  ),
                )
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DetailsPage extends StatelessWidget {
  final title, backgroundImage;
  const DetailsPage({
    Key key, this.title, this.backgroundImage,
  }) : super(key: key);

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
              fit: BoxFit.cover
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 35.0,),
            Container(
              padding: EdgeInsets.fromLTRB(30.0, 0.0, 20.0, 0.0),
              child: Material(
                borderRadius: BorderRadius.circular(20.0),
                elevation: 10,
                color: Colors.grey.withOpacity(0.4),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Colors.white,),
                    hintText: 'Search for recipes and channels',
                    hintStyle: TextStyle(color: Colors.white),
                    border: InputBorder.none
                  ),
                ),
              ),
            ),
            SizedBox(height: 150,),
            Container(
              width: 200,
              margin: EdgeInsets.only(left: 30.0),
              child: Text(
                this.title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(height: 20.0,),
            Container(
              margin: EdgeInsets.only(left: 30.0),
              width: 300,
              child: Text(
                'Kook-2 Directory give real links for your site.Kook-2 Directory give real links for your site.Kook-2 Directory give real links for your site.Kook-2 Directory give real links for your site.',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 16,
                  fontStyle: FontStyle.italic
                ),
              ),
            ),
            SizedBox(height: 30.0,),
            Container(
              height: 125.0,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: <Widget>[
                  SizedBox(width: 30.0,),
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
                  SizedBox(width: 15.0,),
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
                  SizedBox(width: 15.0,),
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
                  SizedBox(width: 15.0,),
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
                  SizedBox(width: 15.0,),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class BuildCardFood extends StatelessWidget {
  final user, food, foodImage, userImage, dividerColor, dividerWidth, backgroundColor, textColor;
  const BuildCardFood({
    Key key, this.user, this.food, this.foodImage, this.userImage, this.dividerColor, this.dividerWidth, this.backgroundColor, this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        color: this.backgroundColor,//Colors.grey.withOpacity(0.4),
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
                    image: AssetImage(this.foodImage),
                    fit: BoxFit.cover
                  ),
                ),
              ),
              SizedBox(width: 10.0,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    this.food,
                    style: TextStyle(
                      color: this.textColor,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Container(
                    height: this.dividerWidth,
                    width: 70.0,
                    decoration: BoxDecoration(
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 1
                        ),
                      ],
                      color: this.dividerColor//Colors.grey.withOpacity(0.9),
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.5),
                          image: DecorationImage(
                            image: AssetImage(this.userImage),
                            fit: BoxFit.cover
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0,),
                      Text(
                        this.user,
                        style: TextStyle(
                          color: this.textColor,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}