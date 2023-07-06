import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';
import 'package:tiktok_clone/features/settings/settings_screen.dart';
import 'package:tiktok_clone/features/users/views/widgets/persistent_tab_bar.dart';

class UserProfileOldScreen extends StatefulWidget {
  const UserProfileOldScreen({super.key});

  @override
  State<UserProfileOldScreen> createState() => _UserProfileOldScreenState();
}

class _UserProfileOldScreenState extends State<UserProfileOldScreen> {
  void _onGearPressed() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const SettingsScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                title: const Text('miumiu'),
                actions: [
                  IconButton(
                    onPressed: _onGearPressed,
                    icon: const FaIcon(
                      FontAwesomeIcons.gear,
                      size: Sizes.size20,
                    ),
                  )
                ],
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      foregroundImage: NetworkImage(
                          "https://avatars.githubusercontent.com/u/42507121?v=4"),
                      child: Text("miumiu"),
                    ),
                    Gaps.v20,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "@miumiu",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: Sizes.size18,
                          ),
                        ),
                        Gaps.h5,
                        FaIcon(
                          FontAwesomeIcons.solidCircleCheck,
                          size: Sizes.size16,
                          color: Colors.blue.shade500,
                        )
                      ],
                    ),
                    Gaps.v24,
                    SizedBox(
                      height: Sizes.size48,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              const Text(
                                "97",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Sizes.size18,
                                ),
                              ),
                              Gaps.v1,
                              Text("Following",
                                  style: TextStyle(
                                    color: Colors.grey.shade500,
                                  ))
                            ],
                          ),
                          VerticalDivider(
                            width: Sizes.size32,
                            thickness: Sizes.size1,
                            color: Colors.grey.shade400,
                            indent: Sizes.size14,
                            endIndent: Sizes.size14,
                          ),
                          Column(
                            children: [
                              const Text(
                                "10M",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Sizes.size18,
                                ),
                              ),
                              Gaps.v1,
                              Text(
                                "Followers",
                                style: TextStyle(
                                  color: Colors.grey.shade500,
                                ),
                              )
                            ],
                          ),
                          VerticalDivider(
                            width: Sizes.size32,
                            thickness: Sizes.size1,
                            color: Colors.grey.shade400,
                            indent: Sizes.size14,
                            endIndent: Sizes.size14,
                          ),
                          Column(
                            children: [
                              const Text(
                                "194.3M",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Sizes.size18,
                                ),
                              ),
                              Gaps.v1,
                              Text(
                                "Likes",
                                style: TextStyle(
                                  color: Colors.grey.shade500,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Gaps.v14,
                    FractionallySizedBox(
                      widthFactor: 0.33,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: Sizes.size12,
                        ),
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(Sizes.size4),
                          ),
                        ),
                        child: const Text(
                          'Follow',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Gaps.v14,
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: Sizes.size32,
                      ),
                      child: Text(
                        "All highlights and where to watch live matches on FIFA+ I wonder how it would loook",
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
                          "https://fe-developers.kakaoent.com",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Gaps.v20,
                  ],
                ),
              ),
              SliverPersistentHeader(
                delegate: PersistentTabBar(),
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
            children: [
              GridView.builder(
                itemCount: 20,
                padding: EdgeInsets.zero,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: Sizes.size2,
                  mainAxisSpacing: Sizes.size2,
                  childAspectRatio: 9 / 14,
                ),
                itemBuilder: (context, index) => Stack(
                  children: [
                    const AspectRatio(
                      aspectRatio: 9 / 14,
                      child: FadeInImage(
                        fit: BoxFit.cover,
                        placeholder:
                            AssetImage("assets/images/placeholder.jpg"),
                        image: NetworkImage(
                          "https://images.unsplash.com/photo-1673844969019-c99b0c933e90?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1480&q=80",
                        ),
                      ),
                    ),
                    if (index < 2)
                      Positioned(
                        top: Sizes.size4,
                        left: Sizes.size4,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: Sizes.size4, vertical: Sizes.size2),
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(Sizes.size4),
                          ),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.push_pin,
                                color: Colors.white,
                                size: Sizes.size16,
                              ),
                              SizedBox(width: Sizes.size4),
                              Text(
                                'Pinned',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: Sizes.size12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    Positioned(
                      bottom: Sizes.size4,
                      left: Sizes.size4,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: Sizes.size4, vertical: Sizes.size2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Sizes.size4),
                        ),
                        child: const Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.play,
                              color: Colors.white,
                              size: Sizes.size12,
                            ),
                            Gaps.h5,
                            Text(
                              '4.1M',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: Sizes.size14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Center(
                child: Text('Page two'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
