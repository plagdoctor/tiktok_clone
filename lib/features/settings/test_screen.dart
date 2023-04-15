import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const TestScreen({required this.height, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black87,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                'https://example.com/profile-image.png', // 프로필 이미지 URL
              ),
            ),
            IconButton(
              onPressed: () {
                // 플러스 아이콘 클릭 이벤트
              },
              icon: const Icon(Icons.add),
              color: Colors.white,
              iconSize: 30,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
