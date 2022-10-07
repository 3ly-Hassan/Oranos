import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oranos_experts/constants.dart';
import 'package:oranos_experts/screens/getStart-1/widgets/caht_item.dart';
import 'package:oranos_experts/screens/getStart-1/widgets/categories_check.dart';
import 'package:oranos_experts/screens/home/home.dart';

class GetStart1 extends StatelessWidget {
  const GetStart1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 10,
        backgroundColor: Colors.white,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView.separated(
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 25),
                itemCount: 8,
                itemBuilder: (context, index) {
                  return index != 7
                      ? ChatItem(
                          text: chatText[index],
                          left: index % 2 == 0 ? true : false,
                        )
                      : const Padding(
                          padding: EdgeInsets.only(left: 50),
                          child: CategoriesCheck(),
                        );
                },
              ),
            ),
          ),
          const Divider(),
          Container(
            padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10)),
                        suffixIcon: const Icon(Icons.mic_outlined),
                        prefixIcon: const Icon(Icons.language),
                        filled: true,
                        fillColor: Colors.grey[200],
                        hintText: 'Type something...'),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Home()));
                    },
                    icon: const Icon(
                      Icons.send_sharp,
                      color: Colors.teal,
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
