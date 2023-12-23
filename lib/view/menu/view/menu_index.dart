import 'package:corpsec_app/view/menu/view/select_shop_view.dart';
import 'package:flutter/material.dart';

class Menuview extends StatefulWidget {
  const Menuview({super.key});

  @override
  State<Menuview> createState() => _MenuviewState();
}

class _MenuviewState extends State<Menuview> {
  bool isDelivery = true;
  String selectedCategory = 'top_picks';

  List categories = [
    {'label': 'Top Picks', 'value': 'top_picks'},
    {'label': 'Coffee', 'value': 'coffee'},
    {'label': 'Coffee Mocktail', 'value': 'coffee_mocktail'},
    {'label': 'Chocolate', 'value': 'chocolate'},
    {'label': 'Tea', 'value': 'tea'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12.0, 24.0, 12.0, 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () => setState(() {
                        isDelivery = true;
                      }),
                      child: Text('Delivery'),
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          isDelivery ? Color(0xFF303030) : Color(0xFFE6E6E6),
                        ),
                        fixedSize: MaterialStateProperty.all<Size>(
                          Size(100.0, 40.0),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8.0),
                    ElevatedButton(
                      onPressed: () => setState(() {
                        isDelivery = false;
                      }),
                      child: Text('Dine-in'),
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(
                            isDelivery ? Color(0xFF979797) : Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          !isDelivery ? Color(0xFF303030) : Color(0xFFE6E6E6),
                        ),
                        fixedSize: MaterialStateProperty.all<Size>(
                          Size(100, 40.0),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SelectShopView(),
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Me' Time Coffee Shop",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        size: 24.0,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 2.0),
                Text(
                  '10KM from you',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  'Current store 20 orders / 62 cups',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 4.0),
                Divider(),
                SizedBox(height: 8.0),
                SizedBox(
                  height: 50.0,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        final item = categories[index];

                        return Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: ElevatedButton(
                            onPressed: () => setState(() {
                              selectedCategory = item['value'];
                            }),
                            child: Text(
                              item['label'],
                            ),
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  selectedCategory != item['value']
                                      ? Color(0xFF979797)
                                      : Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                selectedCategory == item['value']
                                    ? Color(0xFF303030)
                                    : Color(0xFFE6E6E6),
                              ),
                              // fixedSize: MaterialStateProperty.all<Size>(
                              //   Size(150, 30.0),
                              // ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(2.0),
                                ),
                              ),
                              padding:
                                  MaterialStateProperty.all<EdgeInsetsGeometry>(
                                EdgeInsets.symmetric(horizontal: 12.0),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 24.0,
                ),
                SizedBox(
                  height: 800.0,
                  child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(2),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(8),
                        // color: Colors.teal[100],
                        height: 20.0,
                        child: Column(
                          children: [
                            Image(
                              image:
                                  AssetImage('assets/images/menu_coffee.png'),
                              height: 100.0,
                              width: 50.0,
                            ),
                            Text(
                              'Americano',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '10.00 MYR',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            // ElevatedButton(
                            //   onPressed: () {},
                            //   child: Text('-'),
                            //   style: ElevatedButton.styleFrom(
                            //     shape: CircleBorder(),
                            //     padding: EdgeInsets.all(4),
                            //   ),
                            // )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        // color: Colors.teal[100],
                        height: 20.0,
                        child: Column(
                          children: [
                            Image(
                              image:
                                  AssetImage('assets/images/menu_coffee.png'),
                              height: 100.0,
                              width: 50.0,
                            ),
                            Text(
                              'Americano',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '10.00 MYR',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            // ElevatedButton(
                            //   onPressed: () {},
                            //   child: Text('-'),
                            //   style: ElevatedButton.styleFrom(
                            //     shape: CircleBorder(),
                            //     padding: EdgeInsets.all(4),
                            //   ),
                            // )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        // color: Colors.teal[100],
                        height: 20.0,
                        child: Column(
                          children: [
                            Image(
                              image:
                                  AssetImage('assets/images/menu_coffee.png'),
                              height: 100.0,
                              width: 50.0,
                            ),
                            Text(
                              'Americano',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '10.00 MYR',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            // ElevatedButton(
                            //   onPressed: () {},
                            //   child: Text('-'),
                            //   style: ElevatedButton.styleFrom(
                            //     shape: CircleBorder(),
                            //     padding: EdgeInsets.all(4),
                            //   ),
                            // )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        // color: Colors.teal[100],
                        height: 20.0,
                        child: Column(
                          children: [
                            Image(
                              image:
                                  AssetImage('assets/images/menu_coffee.png'),
                              height: 100.0,
                              width: 50.0,
                            ),
                            Text(
                              'Americano',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '10.00 MYR',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            // ElevatedButton(
                            //   onPressed: () {},
                            //   child: Text('-'),
                            //   style: ElevatedButton.styleFrom(
                            //     shape: CircleBorder(),
                            //     padding: EdgeInsets.all(4),
                            //   ),
                            // )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        // color: Colors.teal[100],
                        height: 20.0,
                        child: Column(
                          children: [
                            Image(
                              image:
                                  AssetImage('assets/images/menu_coffee.png'),
                              height: 100.0,
                              width: 50.0,
                            ),
                            Text(
                              'Americano',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '10.00 MYR',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            // ElevatedButton(
                            //   onPressed: () {},
                            //   child: Text('-'),
                            //   style: ElevatedButton.styleFrom(
                            //     shape: CircleBorder(),
                            //     padding: EdgeInsets.all(4),
                            //   ),
                            // )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        // color: Colors.teal[100],
                        height: 20.0,
                        child: Column(
                          children: [
                            Image(
                              image:
                                  AssetImage('assets/images/menu_coffee.png'),
                              height: 100.0,
                              width: 50.0,
                            ),
                            Text(
                              'Americano',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '10.00 MYR',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            // ElevatedButton(
                            //   onPressed: () {},
                            //   child: Text('-'),
                            //   style: ElevatedButton.styleFrom(
                            //     shape: CircleBorder(),
                            //     padding: EdgeInsets.all(4),
                            //   ),
                            // )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
