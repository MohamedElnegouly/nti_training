import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Customnavigationbar extends StatelessWidget {
  const Customnavigationbar({super.key});

  final List<Map<String, dynamic>> _items = const [
    {"icon": Icons.home, "label": "الرئيسية", "path": "/home"},
    {"icon": Icons.apps, "label": "الأقسام", "path": "/categories"},
    {"icon": Icons.shopping_cart, "label": "السلة", "path": "/cart"},
    {"icon": Icons.person, "label": "الحساب", "path": "/profile"},
  ];

  int _calculateSelectedIndex(BuildContext context) {
    //هنا يتم العثور على المسار الحالى 
    final location = GoRouterState.of(context).uri.toString();
    if (location.startsWith('/categories')) return 1;
    if (location.startsWith('/cart')) return 2;
    if (location.startsWith('/profile')) return 3;
    return 0; // default → home
  }

  @override
  Widget build(BuildContext context) {
    final selectedIndex = _calculateSelectedIndex(context);

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, -1.5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(_items.length, (index) {
          final item = _items[index];
          final bool isSelected = selectedIndex == index;

          return GestureDetector(
            onTap: () {
              if (!isSelected) {
                // route هنا يتم الانتقال لصفحه المطلوبه عن طريق الذهاب الى  
                context.go(item["path"]); // 👈 الانتقال للـ route
              }
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              padding: EdgeInsets.symmetric(
                  horizontal: isSelected ? 12 : 0, vertical: 6),
              decoration: isSelected
                  ? BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(24),
                    )
                  : null,
              child: Row(
                children: [
                  if (isSelected)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Text(
                        item["label"],
                        style: TextStyle(
                          color: Colors.green.shade900,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  CircleAvatar(
                    radius: 18,
                    backgroundColor:
                        isSelected ? Colors.green : Colors.transparent,
                    child: Icon(
                      item["icon"],
                      color: isSelected ? Colors.white : Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
