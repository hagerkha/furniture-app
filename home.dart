import 'dart:ui';
import 'login.dart';
import 'detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Widget buildDisCoverCircle({image, title})
  {

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            child: PhysicalShape(
              color: Colors.white,
              shadowColor: Colors.black,
              clipBehavior: Clip.hardEdge,
              elevation: 3,
              clipper: ShapeBorderClipper(
                shape: CircleBorder(),
              ),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                )),
              ),
            ),
          ),
          SizedBox(height: 7.0),
          Text(
            title,
            style: TextStyle(
              color: Color(0xffadafaf),
            ),
          )
        ],
      ),
    );
  }

  List<String> images = [
    "assets/images/2.jpg",
    "assets/images/3.jpg",
    "assets/images/g.jpg",
    "assets/images/11.jpg",
    "assets/images/12.jpg",
    "assets/images/e.jpg",
    "assets/images/2.jpg",
    "assets/images/4.jpg",
    "assets/images/5.jpg",
    "assets/images/6.jpg",
    "assets/images/c.jpg",
    "assets/images/d.jpg",
    "assets/images/a.jpg",
    "assets/images/3.jpg",
    "assets/images/b.jpg",
    "assets/images/13.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6f6f6),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Mariam Ahmed"),
              accountEmail: Text("Ma@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/girl6.png'),
              ),
              decoration: BoxDecoration(color: Colors.purple,
              ),
            ),
            ListTile(
              title: Text('Log in'),
              onTap: ()
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)
                  {
                    return Login();
                  }),
                );
              },
            ),

            ListTile(
              title: Text("My Account"),
              trailing: Icon(Icons.account_circle),
            ),
            ListTile(
              title: Text("My Favourite"),
              trailing: Icon(Icons.favorite),
            ),
            ListTile(
              title: Text("Help"),
              trailing: Icon(Icons.help),
            ),
            ListTile(
              title: Text("Setting"),
              trailing: Icon(Icons.settings),
            ),
            ListTile(
              title: Text("Log Out"),
              trailing: Icon(Icons.logout),
            ),
          ],
        ),
      ),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff8275b3),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Container(
              height: 30,
              width: 30,
              child: PhysicalShape(
                color: Colors.black,
                shadowColor: Colors.black,
                elevation: 3,
                clipper: ShapeBorderClipper(
                  shape: CircleBorder(),
                ),
                child: Icon(
                  Icons.shopping_bag_rounded,
                  color: Color(0xff8275b3),
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Discover Our Store",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),

          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                buildDisCoverCircle(
                  image: "assets/images/f.jpg",
                  title: "Kids",
                ),
                buildDisCoverCircle(
                  image: "assets/images/7.jpg",
                  title: "Men",
                ),
                buildDisCoverCircle(
                  image: "assets/images/8.jpg",
                  title: "Woman",
                ),

                buildDisCoverCircle(
                  image: "assets/images/c.jpg",
                  title: "Shoes",
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Color(0xffb3a5de),
                ),
                hintText: "Search for products",
                hintStyle: TextStyle(
                  color: Color(0xffb3a5de),
                ),
                fillColor: Colors.white,
                filled: true,
                suffixIcon: Container(
                  padding: EdgeInsets.all(7.0),
                  child: PhysicalShape(
                    color: Color(0xff8477bb),
                    shadowColor: Colors.black,
                    elevation: 3,
                    clipper: ShapeBorderClipper(
                      shape: CircleBorder(),
                    ),
                    child: Icon(
                      Icons.sync_alt,
                      color: Colors.white,
                    ),
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: StaggeredGridView.countBuilder(
              crossAxisCount: 4,
              itemCount: images.length,
              primary: false,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) => GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Detail(),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        images[index],
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 2.0),
                          child: Container(
                            height: 80,
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(horizontal: 7.0),
                            decoration: BoxDecoration(
                              color: Colors.white12.withOpacity(0.1),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "T-Shirt",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      "\$120",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Casual ",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star,
                                        color: Colors.purpleAccent),
                                    Text(
                                      "4.5",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "T-Shirt",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      "\$420",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              staggeredTileBuilder: (int index) =>
                  StaggeredTile.count(2, index.isEven ? 3 : 2),
              mainAxisSpacing: 20.0,
              crossAxisSpacing: 20.0,
            ),
          )
        ],
      ),
    );
  }
}
