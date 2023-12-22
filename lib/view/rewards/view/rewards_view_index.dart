import 'package:flutter/material.dart';

class RewardsView extends StatelessWidget {
  const RewardsView({super.key});

  final int totalCups = 8;
  final int totalCheckIn = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mission & Rewards'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Container(
                // height: 200.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFF2DCC2),
                  borderRadius: BorderRadius.circular(2.0),
                ),
                padding: EdgeInsets.only(left: 12.0, right: 12.0, bottom: 12.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Daily Check-in',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.info_outline_rounded,
                            size: 20.0,
                            color: Colors.grey,
                          ),
                        ),
                        Spacer(),
                        Text('4/16'),
                      ],
                    ),
                    SizedBox(height: 8.0),
                    Container(
                      color: Colors.white,
                      height: 60.0,
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                          totalCups,
                          (index) => index < totalCheckIn
                              ? Image(
                                  image: AssetImage(
                                      'assets/images/coffee_cup_active.png'),
                                )
                              : Image(
                                  image: AssetImage(
                                      'assets/images/coffee_cup_inactive.png'),
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.0),
              Container(
                // height: 200.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFF2DCC2).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(2.0),
                ),
                padding: EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'M Points',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        Text(
                          '1,000',
                          style: TextStyle(fontSize: 32.0),
                        ),
                      ],
                    ),
                    Center(
                      child: Container(
                        height: 30.0,
                        width: 120.0,
                        color: Colors.black,
                        // decoration: BoxDecoration(
                        //   border: Border.all(
                        //     color: const Color(0xFF12B76A),
                        //   ),
                        // ),
                        child: Center(
                          child: Text(
                            'Redeem Drinks',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
