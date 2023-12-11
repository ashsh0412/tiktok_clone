import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/constants/breakpoints.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';
import 'package:tiktok_clone/features/settings/settings_screen.dart';
import 'package:tiktok_clone/features/users/persistent_tab_bar.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State {
  void _onGearPressed() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const SettingsScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            body: GridView.builder(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              itemCount: 20,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: width > Breakpoints.lg ? 5 : 3,
                crossAxisSpacing: Sizes.size4,
                mainAxisSpacing: Sizes.size4,
                childAspectRatio: 9 / 14,
              ),
              itemBuilder: (context, index) => Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      AspectRatio(
                        aspectRatio: 9 / 14,
                        child: FadeInImage.assetNetwork(
                          fit: BoxFit.cover,
                          placeholder: "assets/images/placeholder.jpg",
                          image:
                              "https://images.unsplash.com/photo-1673844969019-c99b0c933e90?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1480&q=80",
                        ),
                      ),
                      const Positioned(
                        left: 10,
                        bottom: 10,
                        child: Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.play,
                              color: Colors.white,
                              size: Sizes.size16,
                            ),
                            Gaps.h8,
                            Text(
                              "4.1M",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  centerTitle: true,
                  title: const Text("Sunghob"),
                  actions: [
                    IconButton(
                      onPressed: _onGearPressed,
                      icon: const FaIcon(
                        FontAwesomeIcons.gear,
                        size: Sizes.size20,
                      ),
                    ),
                  ],
                ),
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      const CircleAvatar(
                        radius: 50,
                        foregroundColor: Colors.teal,
                        foregroundImage: NetworkImage(
                          "https://avatars.githubusercontent.com/u/3612017",
                        ),
                        child: Text("Sunghob"),
                      ),
                      Gaps.v20,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "@Sunghob",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: Sizes.size20,
                            ),
                          ),
                          Gaps.h5,
                          FaIcon(
                            FontAwesomeIcons.solidCircleCheck,
                            size: Sizes.size16,
                            color: Colors.blue.shade500,
                          ),
                        ],
                      ),
                      Gaps.v24,
                      SizedBox(
                        height: Sizes.size44,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                const Text(
                                  "37M",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: Sizes.size20,
                                  ),
                                ),
                                Gaps.v5,
                                Text(
                                  "Following",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                              ],
                            ),
                            VerticalDivider(
                              indent: 10,
                              endIndent: 10,
                              width: 30,
                              thickness: 1,
                              color: Colors.grey.shade400,
                            ),
                            Column(
                              children: [
                                const Text(
                                  "10.5M",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: Sizes.size20,
                                  ),
                                ),
                                Gaps.v5,
                                Text(
                                  "Followers",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                              ],
                            ),
                            VerticalDivider(
                              indent: 10,
                              endIndent: 10,
                              width: 30,
                              thickness: 1,
                              color: Colors.grey.shade400,
                            ),
                            Column(
                              children: [
                                const Text(
                                  "147.3M",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: Sizes.size20,
                                  ),
                                ),
                                Gaps.v5,
                                Text(
                                  "Likes",
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Gaps.v14,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: FractionallySizedBox(
                              widthFactor: width > Breakpoints.lg ? 0.3 : 0.6,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: Sizes.size14,
                                ),
                                decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(
                                      Sizes.size5,
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  "Follow",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                          Gaps.h6,
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Colors.grey.shade300,
                              ),
                            ),
                            padding: const EdgeInsets.all(
                              Sizes.size10,
                            ),
                            child: const FaIcon(
                              FontAwesomeIcons.youtube,
                            ),
                          ),
                          Gaps.h6,
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Colors.grey.shade300,
                              ),
                            ),
                            padding: const EdgeInsets.symmetric(
                              vertical: Sizes.size10,
                              horizontal: Sizes.size16,
                            ),
                            child: const FaIcon(
                              FontAwesomeIcons.caretDown,
                            ),
                          ),
                        ],
                      ),
                      Gaps.v14,
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: Sizes.size32,
                        ),
                        child: Text(
                          "All highlights and where to watch live matches on FIFA+ I wonder how it would look like",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Gaps.v14,
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.link,
                            size: Sizes.size12,
                          ),
                          Gaps.h4,
                          Text(
                            "http://ashsh0412.co",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Gaps.v16,
                    ],
                  ),
                ),
                SliverPersistentHeader(
                  delegate: PersistentTabBar(),
                  pinned: true,
                ),
              ];
            },
          ),
        ),
      ),
    );
  }
}
