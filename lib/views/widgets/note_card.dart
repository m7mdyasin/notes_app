import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFf8fafc), Color(0xFFe0c3fc), Color(0xFF8ec5fc)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF8ec5fc).withOpacity(0.18),
              blurRadius: 18,
              offset: Offset(0, 8),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: Text(
                            'Flutter Tips',
                            style: TextStyle(
                              fontFamily: 'Benzin',
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF3a0ca3),
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                        SizedBox(height: 7),
                        Text(
                          'I will be the greatest computer engineerer',
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            fontSize: 15.5,
                            color: Color(0xFF4361ee),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFf72585).withOpacity(0.12),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.trash,
                        color: Color(0xFFf72585),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.calendar_today,
                    size: 15,
                    color: Color(0xFF3a0ca3),
                  ),
                  SizedBox(width: 5),
                  Text(
                    '9,Jul,2025',
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 13.5,
                      color: Color(0xFF3a0ca3),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
