import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String selectedValue = 'Date';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(left: 15, top: 10, right: 15),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      )),
                ),
                const Expanded(flex: 8, child: SizedBox()),
                Expanded(
                  flex: 1,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications_active,
                        color: Colors.black,
                      )),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  height: 40,
                  width: 235,
                  child: TextFormField(
                    // controller: _passwordController,

                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: const Color(0xFF000000).withOpacity(0.1))),
                      hintText: 'Search for treatments',
                      prefixIcon: const Icon(Icons.search),
                      contentPadding: const EdgeInsets.symmetric(vertical: 10),
                      alignLabelWithHint: false,
                    ),
                    textInputAction: TextInputAction.done,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 80,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(330, 50),
                      primary: const Color(0xFF006837),
                      padding: const EdgeInsets.symmetric(vertical: 9),
                    ),
                    child: const Text(
                      'Search',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Expanded(
                    flex: 5,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Sort by :'),
                    )),
                const Expanded(flex: 2, child: SizedBox()),
                Expanded(
                  flex: 8,
                  child: SizedBox(
                    width: 400,
                    height: 40,
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: const Color(0xFF000000).withOpacity(0.1),
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: const Color(0xFF000000).withOpacity(0.1),
                            width: 1,
                          ),
                        ),
                        contentPadding: const EdgeInsets.all(10),
                      ),
                      // hint: const Text("Choose an item"),
                      value: selectedValue,
                      isExpanded: true,
                      icon: const Icon(Icons.keyboard_arrow_down, color: iconColor,),
                      items: ['Date', 'Month', 'Year']
                          .map<DropdownMenuItem<String>>(
                        (String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        },
                      ).toList(),
                      onChanged: (newValue) {
                        selectedValue = newValue!;
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
