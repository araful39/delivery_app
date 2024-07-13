import 'package:flutter/material.dart';

class ProfileListTile extends StatelessWidget {
  final String title;
  final Widget leadingIcon;
  final VoidCallback onPress;
  const ProfileListTile({
    super.key, required this.title, required this.leadingIcon, required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onPress,
          child: ListTile(
            leading:leadingIcon,
            title: Text(title),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
        ),
        const Divider()
      ],
    );
  }
}