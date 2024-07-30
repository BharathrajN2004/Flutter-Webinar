import 'package:flutter/material.dart';
import 'package:mobile_app/json/setting_json.dart';
import 'package:mobile_app/theme/colors.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  SettingPageState createState() => SettingPageState();
}

class SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60), child: getAppBar()),
      body: getBody(),
    );
  }

  AppBar getAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: bgColor,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(
          Icons.arrow_back,
          color: primary,
          size: 28,
        ),
      ),
      actions: const [
        IconButton(
          onPressed: null,
          icon: Icon(
            Icons.search,
            color: primary,
            size: 28,
          ),
        ),
        IconButton(
            onPressed: null,
            icon: Icon(
              Icons.more_vert,
              color: primary,
              size: 28,
            ))
      ],
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Container(
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
                image: DecorationImage(
                    image: NetworkImage(profile[0]['img']), fit: BoxFit.cover),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            profile[0]['name'],
            style: const TextStyle(
                fontSize: 24, color: white, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            "9791340203",
            style: TextStyle(
                fontSize: 18,
                color: white.withOpacity(0.5),
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 30,
          ),
          getSectionOne(),
          const SizedBox(
            height: 30,
          ),
          getSectionTwo(),
          const SizedBox(
            height: 30,
          ),
          getSectionThree(),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }

  Widget getSectionOne() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: List.generate(setting_section_one.length, (index) {
        if (index == 0) {
          return Container(
            width: double.infinity,
            decoration: const BoxDecoration(color: textfieldColor),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Settings",
                  style: TextStyle(
                      fontSize: 16, color: white, fontWeight: FontWeight.w500)),
            ),
          );
        }
        return Container(
          width: double.infinity,
          decoration: const BoxDecoration(color: textfieldColor),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              color: setting_section_one[index]['color'],
                              borderRadius: BorderRadius.circular(8)),
                          child: Center(
                            child: Icon(
                              setting_section_one[index]['icon'],
                              color: white,
                              size: 20,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          setting_section_one[index]['text'],
                          style: const TextStyle(
                              fontSize: 16,
                              color: white,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    setting_section_one[index]['text']
                                .toString()
                                .toLowerCase() ==
                            "languages"
                        ? const Text(
                            "English",
                            style: TextStyle(
                                fontSize: 16,
                                color: white,
                                fontWeight: FontWeight.w500),
                          )
                        : Icon(
                            Icons.arrow_forward_ios,
                            color: white.withOpacity(0.2),
                            size: 15,
                          )
                  ],
                )
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget getSectionTwo() {
    return Column(
      children: List.generate(setting_section_two.length, (index) {
        return Container(
          width: double.infinity,
          decoration: const BoxDecoration(color: textfieldColor),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              color: setting_section_two[index]['color'],
                              borderRadius: BorderRadius.circular(8)),
                          child: Center(
                            child: Icon(
                              setting_section_two[index]['icon'],
                              color: white,
                              size: 20,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          setting_section_two[index]['text'],
                          style: const TextStyle(
                              fontSize: 16,
                              color: white,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: white.withOpacity(0.2),
                          size: 15,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget getSectionThree() {
    return Column(
      children: List.generate(setting_section_three.length, (index) {
        if (index == 0) {
          return Container(
            width: double.infinity,
            decoration: const BoxDecoration(color: textfieldColor),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Help",
                  style: TextStyle(
                      fontSize: 16, color: white, fontWeight: FontWeight.w500)),
            ),
          );
        }
        return Container(
          width: double.infinity,
          decoration: const BoxDecoration(color: textfieldColor),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              color: setting_section_three[index]['color'],
                              borderRadius: BorderRadius.circular(8)),
                          child: Center(
                            child: Icon(
                              setting_section_three[index]['icon'],
                              color: white,
                              size: 20,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          setting_section_three[index]['text'],
                          style: const TextStyle(
                              fontSize: 16,
                              color: white,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: white.withOpacity(0.2),
                      size: 15,
                    )
                  ],
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
