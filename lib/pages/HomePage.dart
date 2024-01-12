import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff565656),
        flexibleSpace: Center(
          child: Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: Image.asset(
                  'lib/assets/images/logo.png',
                  height: 40,
                ),
              )
            ],
          )),
        ),
        actions: [
          IconButton(
            onPressed: () => {},
            icon: Container(
              child: const Icon(
                Icons.help_outline_rounded,
                color: Color(0xfff7f7f7),
              ),
            ),
          ),
          IconButton(
            onPressed: () => {},
            icon: Container(
              child: const Icon(
                Icons.notifications_outlined,
                color: Color(0xfff7f7f7),
              ),
            ),
          ),
          const Text(' '),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xff292929),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.fromLTRB(10, 40, 10, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.only(bottom: 8),
                            decoration: BoxDecoration(
                                color: const Color(0xff565656),
                                borderRadius: BorderRadius.circular(100)),
                            child: const Icon(
                              Icons.monetization_on_outlined,
                              color: Color(0xfff7f7f7),
                              size: 35,
                            ),
                          ),
                          const Text(
                            'Send Money',
                            style: TextStyle(
                              color: Color(0xfff7f7f7),
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.only(bottom: 8),
                            decoration: BoxDecoration(
                                color: const Color(0xff565656),
                                borderRadius: BorderRadius.circular(100)),
                            child: const Icon(
                              Icons.search_outlined,
                              color: Color(0xfff7f7f7),
                              size: 35,
                            ),
                          ),
                          const Text(
                            'Transaction history',
                            style: TextStyle(
                              color: Color(0xfff7f7f7),
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.only(bottom: 8),
                            decoration: BoxDecoration(
                                color: const Color(0xff565656),
                                borderRadius: BorderRadius.circular(100)),
                            child: const Icon(
                              Icons.pie_chart_outline,
                              color: Color(0xfff7f7f7),
                              size: 35,
                            ),
                          ),
                          const Text(
                            'Financial planner',
                            style: TextStyle(
                              color: Color(0xfff7f7f7),
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.only(bottom: 8),
                            decoration: BoxDecoration(
                                color: const Color(0xff565656),
                                borderRadius: BorderRadius.circular(100)),
                            child: const Icon(
                              Icons.settings_outlined,
                              color: Color(0xfff7f7f7),
                              size: 35,
                            ),
                          ),
                          const Text(
                            'Edit',
                            style: TextStyle(
                              color: Color(0xfff7f7f7),
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              AccountsAndCards(),
              RecentTransactions(),
              Container(
                width: screenWidth - 30,
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                  color: Color(0xff444444),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'How Can I Help You?',
                          style: TextStyle(
                            color: Color(0xfff7f7f7),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Kerstin Holzer\nSparkasse Mainfranken Wurzburg\nBeratungscenter Hofstrabe',
                          style: TextStyle(
                            color: Color(0xffababab),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset(
                          'lib/assets/icons/chat-dots.png',
                          width: 25,
                          height: 25,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Text('\n\n\n\n\n\n'),
              // -- -- -- -- -- --
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.zero,
        color: Color(0xff444444),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 0),
          decoration: BoxDecoration(color: Color(0xff444444)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'lib/assets/icons/house.png',
                        width: 28,
                        height: 28,
                      ),
                      Text(
                        'Start',
                        style: TextStyle(
                          color: Color(0xfff7f7f7),
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'lib/assets/icons/collection.png',
                        width: 28,
                        height: 28,
                      ),
                      Text(
                        'Products',
                        style: TextStyle(
                          color: Color(0xfff7f7f7),
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'lib/assets/icons/stars.png',
                        width: 28,
                        height: 28,
                      ),
                      Text(
                        'Services',
                        style: TextStyle(
                          color: Color(0xfff7f7f7),
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'lib/assets/icons/person.png',
                        width: 28,
                        height: 28,
                      ),
                      Text(
                        'Profile',
                        style: TextStyle(
                          color: Color(0xfff7f7f7),
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
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

class AccountsAndCards extends StatefulWidget {
  @override
  _AccountsAndCardsState createState() => _AccountsAndCardsState();
}

class _AccountsAndCardsState extends State<AccountsAndCards> {
  bool isDropdownOpen = true;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isDropdownOpen = !isDropdownOpen;
            });
          },
          child: Container(
            margin: const EdgeInsets.fromLTRB(15, 30, 15, 0),
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
            decoration: BoxDecoration(
              color: const Color(0xff565656),
              //border: Border.all(color: Colors.grey),
              borderRadius: isDropdownOpen
                  ? const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))
                  : BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      isDropdownOpen
                          ? Icons.arrow_drop_up
                          : Icons.arrow_drop_down,
                      color: const Color(0xfff7f7f7),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: const Text(
                        "Accounts and Cards",
                        style: TextStyle(
                            color: Color(0xfff7f7f7),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '2,018.58 \$',
                      style: TextStyle(
                        color: Color(0xfff7f7f7),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        if (isDropdownOpen)
          Container(
            width: screenWidth - 30,
            margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xff444444),
              borderRadius: isDropdownOpen
                  ? const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))
                  : BorderRadius.circular(10),
            ),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Image.asset(
                      'lib/assets/images/logo.png',
                      width: 30,
                      height: 30,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Giro Guthaben 2023',
                          style: TextStyle(
                            color: Color(0xfff7f7f7),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'DE73 7905 0000 0049 3883 17\nChairat inphitak',
                          style: TextStyle(
                            color: Color(0xffcdcdcd),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: screenWidth - 30,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '1,965.92 \$',
                      style: TextStyle(
                        color: Color(0xff92B66E),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.history_outlined,
                              color: Color(0xfff7f7f7),
                              size: 20,
                            ),
                          ),
                          Text(
                            '- 124.20 \$',
                            style: TextStyle(
                              color: Color(0xfff7f7f7),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ]),
          ),
      ],
    );
  }
}

class RecentTransactions extends StatefulWidget {
  @override
  _RecentTransactionsState createState() => _RecentTransactionsState();
}

class _RecentTransactionsState extends State<RecentTransactions> {
  bool isDropdownOpen = true;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isDropdownOpen = !isDropdownOpen;
            });
          },
          child: Container(
            margin: const EdgeInsets.fromLTRB(15, 30, 15, 0),
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
            decoration: BoxDecoration(
              color: const Color(0xff565656),
              //border: Border.all(color: Colors.grey),
              borderRadius: isDropdownOpen
                  ? const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))
                  : BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      isDropdownOpen
                          ? Icons.arrow_drop_up
                          : Icons.arrow_drop_down,
                      color: const Color(0xfff7f7f7),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: const Text(
                        "Recent Transactions",
                        style: TextStyle(
                            color: Color(0xfff7f7f7),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        if (isDropdownOpen)
          Container(
            width: screenWidth - 30,
            margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: const Color(0xff444444),
              borderRadius: isDropdownOpen
                  ? const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))
                  : BorderRadius.circular(10),
            ),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(30),
                          border:
                              Border.all(color: Color(0xffeaeaea), width: 0.1),
                        ),
                        child: Container(
                          width: 30,
                          height: 30,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Giro Guthaben 2023',
                              style: TextStyle(
                                color: Color(0xfff7f7f7),
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'DE73 7905 0000 0049 3883 17\nChairat inphitak',
                              style: TextStyle(
                                color: Color(0xffcdcdcd),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(
                        '1.00 \$',
                        style: TextStyle(
                          color: Color(0xfff7f7f7),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ]),
                ],
              )),
              // ***
              // ***
              Container(
                height: .1,
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: Color(0xfff7f7f7),
                ),
              ),
              // ***
              // ***
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(30),
                          border:
                              Border.all(color: Color(0xffeaeaea), width: 0.1),
                        ),
                        child: Container(
                          width: 30,
                          height: 30,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Giro Guthaben 2023',
                              style: TextStyle(
                                color: Color(0xfff7f7f7),
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'DE73 7905 0000 0049 3883 17\nChairat inphitak',
                              style: TextStyle(
                                color: Color(0xffcdcdcd),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      decoration: BoxDecoration(
                          color: Color(0xff92B66E),
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(
                        '1.00 \$',
                        style: TextStyle(
                          color: Color(0xff444444),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ]),
                ],
              )),
              // ***
              // ***
              Container(
                height: .1,
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: Color(0xfff7f7f7),
                ),
              ),
              // ***
              // ***
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(30),
                          border:
                              Border.all(color: Color(0xffeaeaea), width: 0.1),
                        ),
                        child: Container(
                          width: 30,
                          height: 30,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Giro Guthaben 2023',
                              style: TextStyle(
                                color: Color(0xfff7f7f7),
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'DE73 7905 0000 0049 3883 17\nChairat inphitak',
                              style: TextStyle(
                                color: Color(0xffcdcdcd),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(
                        '-4.50 \$',
                        style: TextStyle(
                          color: Color(0xfff7f7f7),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ]),
                ],
              )),
              // ***
              // ***
              Container(
                height: .1,
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: Color(0xfff7f7f7),
                ),
              ),
              // ***
              // ***
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(30),
                          border:
                              Border.all(color: Color(0xffeaeaea), width: 0.1),
                        ),
                        child: Container(
                          width: 30,
                          height: 30,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Giro Guthaben 2023',
                              style: TextStyle(
                                color: Color(0xfff7f7f7),
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'DE73 7905 0000 0049 3883 17\nChairat inphitak',
                              style: TextStyle(
                                color: Color(0xffcdcdcd),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(
                        '-5.00 \$',
                        style: TextStyle(
                          color: Color(0xfff7f7f7),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ]),
                ],
              )),
              // ***
              // ***
              Container(
                height: .1,
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: Color(0xfff7f7f7),
                ),
              ),
              // ***
              // ***
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(30),
                          border:
                              Border.all(color: Color(0xffeaeaea), width: 0.1),
                        ),
                        child: Container(
                          width: 30,
                          height: 30,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Giro Guthaben 2023',
                              style: TextStyle(
                                color: Color(0xfff7f7f7),
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'DE73 7905 0000 0049 3883 17\nChairat inphitak',
                              style: TextStyle(
                                color: Color(0xffcdcdcd),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(
                        '-15.03 \$',
                        style: TextStyle(
                          color: Color(0xfff7f7f7),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ]),
                ],
              )),
              // ***
              // ***
              // ***
              // ***
            ]),
          ),
      ],
    );
  }
}
