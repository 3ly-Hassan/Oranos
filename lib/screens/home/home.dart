import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oranos_experts/constants.dart';
import 'package:oranos_experts/screens/home/widgets/category_widget.dart';
import 'package:oranos_experts/screens/home/widgets/expert_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final heihgt = MediaQuery.of(context).size.height;
    final margin = heihgt * .03 - 10;
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        toolbarHeight: kToolbarHeight + 20,
        centerTitle: true,
        title: Row(
          textBaseline: TextBaseline.alphabetic,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Oranos',
              style: TextStyle(
                  fontFamily: 'Facebook',
                  fontWeight: FontWeight.w400,
                  letterSpacing: -3,
                  fontSize: 40,
                  color: Colors.black),
            ),
            Text(
              '.',
              style: TextStyle(
                  color: Colors.teal,
                  fontSize: 40,
                  fontWeight: FontWeight.w900),
            ),
          ],
        ),
        leadingWidth: 50,
        leading: Row(
          children: const [
            SizedBox(width: 20),
            CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage('assets/expert0.jpg'),
            ),
          ],
        ),
        elevation: 1,
        backgroundColor: Colors.grey[50],
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Recommended Experts',
                    style: TextStyle(
                        fontFamily: 'SF',
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 246,
                    child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return ExpertItem(expert: experts[index]);
                        },
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: 20),
                        itemCount: experts.length),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Online Experts',
                    style: TextStyle(
                        fontFamily: 'SF',
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.grey[200],
                                    radius: 36,
                                  ),
                                  const Positioned(
                                    top: 5,
                                    right: 5,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.green,
                                      radius: 5,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              Text(
                                online[index],
                                style: const TextStyle(
                                    color: Colors.grey, fontFamily: 'SF'),
                              )
                            ],
                          );
                        },
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: 20),
                        itemCount: online.length),
                  ),
                ],
              ),
            ),
          ),
          DraggableScrollableSheet(
            snapSizes: const [.03, .8],
            snap: true,
            initialChildSize: .03,
            maxChildSize: .8,
            minChildSize: .03,
            builder: (context, scrollController) {
              return Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    controller: scrollController,
                    itemCount: categories.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 20),
                    itemBuilder: (context, index) {
                      return CategoryItem(
                        category: categories[index],
                        margin: margin,
                      );
                    }),
              );
            },
          )
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(blurRadius: 10, offset: Offset(0, 10))]),
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(CupertinoIcons.home),
            Icon(CupertinoIcons.star),
            Icon(Icons.account_balance_wallet_outlined),
            Icon(Icons.person_outline_rounded),
          ],
        ),
      ),
    );
  }
}
