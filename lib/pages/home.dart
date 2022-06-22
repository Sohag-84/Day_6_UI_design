import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<String> _categories = [
    "Food",
    "Electronics",
    "Groceries",
    "Toys",
    "Sports",
    "Fashion"
  ];

  //for reuse code
  Container container({required Color color}){
    return Container(
      height: 150,
      width: 300,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 13.0, top: 10),
            child: Text(
              "40% Off During\nCovid 19",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Image.asset(
                "images/img_2.png",
                width: 170,
                height: 80,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Hello Afran.",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 36),
                ),
                const Text(
                  "Let’s gets something?",
                  style: TextStyle(
                      color: Color(0xFF4F4C4C),
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Container(
                  padding: EdgeInsets.zero,
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      container(color: const Color(0xffF46D38)),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      container(color: const Color(0xFF3861F4)),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      container(color: const Color(0xFF386148)),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      container(color: const Color(0xFFF40150)),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      container(color: Colors.orange)
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Top Categories",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Text(
                        "View All",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xFFFF4800)),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                SizedBox(
                  height: 40,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _categories.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            height: 32,
                            decoration: BoxDecoration(
                              color: const Color(0xFFC4C4C4),
                              borderRadius: BorderRadius.circular(17),
                            ),
                            child: Center(
                                child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 18.0, right: 18),
                              child: Text(_categories[index]),
                            )),
                          ),
                        );
                      }),
                ),
                SizedBox(height: height * 0.03),
                SizedBox(
                  height: 1300,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 10,
                        gridDelegate:
                             const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 35,
                                crossAxisSpacing: 6,
                                childAspectRatio: 0.65,
                             ),
                        itemBuilder: (_, index) {
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
                                    top: -31,
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
                        }),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
