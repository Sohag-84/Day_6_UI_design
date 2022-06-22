import 'package:flutter/material.dart';

class MyAddPage extends StatelessWidget {
  const MyAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text(
            "My Adds",
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Color(0xFF3A3030)),
          ),
          centerTitle: true,
          elevation: 0,
          bottom: const TabBar(
            indicatorColor: Color(0xFFC4C4C4),
              labelColor: Colors.black,
              labelStyle: TextStyle(fontSize: 13,fontWeight: FontWeight.w400),
              tabs: [
                Tab(
                  text: "My Adds",
                  icon: Icon(Icons.shopping_bag),
                ),
                Tab(text: "My Favourites", icon: Icon(Icons.favorite_border)),
              ]),
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                itemCount: 2,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    mainAxisExtent: 230

                  ),
                itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 28.0),
                      child: Card(
                        elevation: 15,
                        color: Colors.white,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                                color: Colors.transparent)),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                              child: Image.asset(
                                "images/img_1.png",
                                height: 120,
                              ),
                              top: -30,
                              left: 20,
                            ),
                            Center(
                              child: Padding(
                                padding:
                                const EdgeInsets.only(bottom: 22.0),
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.end,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Apple Watch",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Series 6. Red",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF868686)),
                                    ),
                                    Text(
                                      "\$ 359",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF5956E9)),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right: 15,top: 5),
              child: Column(
                children: [
                  const SizedBox(height: 10,),
                  Card(
                    elevation: 15,
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(color: Colors.transparent)
                    ),
                    child: ListTile(
                      leading: Image.asset("images/img_1.png"),
                      title: const Text("Apple Watch",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
                      subtitle: const Text("Series 6. Red",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: const Color(0xff868686)),),
                      trailing: const Text("\$ 359",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700,color: Color(0xff5956E9)),),
                    ),
                  ),
                  Card(
                    elevation: 15,
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Colors.transparent)
                    ),
                    child: ListTile(
                      leading: Image.asset("images/img_1.png"),
                      title: const Text("Apple Watch",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
                      subtitle: const Text("Series 6. Red",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: Color(0xff868686)),),
                      trailing: const Text("\$ 359",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700,color: Color(0xff5956E9)),),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
