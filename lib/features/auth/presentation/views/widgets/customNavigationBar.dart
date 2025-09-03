import 'package:flutter/material.dart';

class Customnavigationbar extends StatefulWidget {
  const Customnavigationbar({super.key});

  @override
  State<Customnavigationbar> createState() => _CustomnavigationbarState();
}

class _CustomnavigationbarState extends State<Customnavigationbar> {
  int _selectedIndex = 0;

  final List<Map<String, dynamic>> _items = [
    {"icon": Icons.home, "label": "الرئيسية"},
    {"icon": Icons.apps, "label": "الأقسام"},
    {"icon": Icons.shopping_cart, "label": "السلة"},
    {"icon": Icons.person, "label": "الحساب"},
  ];

  @override
  Widget build(BuildContext context) {
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
          bool isSelected = _selectedIndex == index;
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
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
                  if (isSelected) // النص يظهر فقط للعنصر المختار
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Text(
                        _items[index]["label"],
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
                      _items[index]["icon"],
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
