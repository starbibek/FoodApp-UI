import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  MyAppBar({super.key, this.title, this.action, Widget? leading, this.bottom})
      : leading = leading ??
            IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(Icons.arrow_back_ios_new));

  final String? title;
  final List<Widget>? action;
  final Widget leading;
  final Widget? bottom;

  @override
  State<MyAppBar> createState() => _MyAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: widget.title == null ? null : Text(widget.title!),
      elevation: 0,
      actions: widget.action,
      leading: widget.leading,
      bottom: widget.bottom == null
          ? null
          : PreferredSize(
              preferredSize: widget.preferredSize,
              child: widget.bottom!,
            ),
    );
  }
}
