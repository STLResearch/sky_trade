import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sky_ways/core/assets/generated/fonts.gen.dart';

import 'package:sky_ways/core/resources/colors.dart';

class DroneDetailsBottomSheet extends StatelessWidget {
  const DroneDetailsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      minChildSize: 0.2, // Minimum height of the bottom sheet (when minimized)
      maxChildSize: 0.9, // Maximum height the bottom sheet can expand to
      initialChildSize: 0.9, //Initial size
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(30),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 16,
              left: 29,
              bottom: 20,
              right: 29,
            ),
            // Top padding added here
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context); // Close the bottom sheet
                        },
                        child: Padding(
                          padding: EdgeInsets.zero,
                          child: SvgPicture.asset(
                            'assets/images/clear.svg',
                            width: 24,
                            height: 24,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          Container(
                            width: 70,
                            height: 9,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: hexD9D9D9,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 5,
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 7.32,
                              ),
                              // Padding around the icon and text
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/images/icon_drone_black.svg',
                                  ),
                                  const SizedBox(width: 8),
                                  const Text(
                                    'Drone ABC',
                                    style: TextStyle(
                                      fontFamily: FontFamily.poppins,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF222222),
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                        ],
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    controller: scrollController,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'CONNECTION',
                          style: TextStyle(
                            fontFamily: FontFamily.arial,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF4285F4),
                            decoration: TextDecoration.none,
                          ),
                        ),
                        const Divider(color: Color(0x17000033)),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            // First Table
                            Expanded(
                              child: Table(
                                columnWidths: const {
                                  0: FixedColumnWidth(120),
                                  1: FixedColumnWidth(120),
                                },
                                children: const [
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'RSSI',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Started',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Msg',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 16), // Space between tables
                            // Second Table
                            Expanded(
                              child: Table(
                                columnWidths: const {
                                  0: FixedColumnWidth(120),
                                  1: FixedColumnWidth(120),
                                },
                                children: const [
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'MAC',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Last seen',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Distance',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16), // Space between sections
                        // BASIC ID 1 Header Section
                        const Text(
                          'BASIC ID 1',
                          style: TextStyle(
                            fontFamily: FontFamily.arial,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF4285F4),
                            decoration: TextDecoration.none,
                          ),
                        ),
                        const Divider(color: Color(0x17000033)),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            // First Table for BASIC ID 1
                            Expanded(
                              child: Table(
                                columnWidths: const {
                                  0: FixedColumnWidth(120),
                                  1: FixedColumnWidth(120),
                                },
                                children: const [
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Type',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'UAS ID',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 16), // Space between tables
                            // Second Table for BASIC ID 1
                            Expanded(
                              child: Table(
                                columnWidths: const {
                                  0: FixedColumnWidth(120),
                                  1: FixedColumnWidth(120),
                                },
                                children: const [
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 18),
                                          child: Text(
                                            'ID Type',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16), // Space between sections
                        // BASIC ID 2 Header Section
                        const Text(
                          'BASIC ID 2',
                          style: TextStyle(
                            fontFamily: FontFamily.arial,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF4285F4),
                            decoration: TextDecoration.none,
                          ),
                        ),
                        const Divider(color: Color(0x17000033)),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            // First Table for BASIC ID 2
                            Expanded(
                              child: Table(
                                columnWidths: const {
                                  0: FixedColumnWidth(120),
                                  1: FixedColumnWidth(120),
                                },
                                children: const [
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Type',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'UAS ID',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 16), // Space between tables
                            // Second Table for BASIC ID 2
                            Expanded(
                              child: Table(
                                columnWidths: const {
                                  0: FixedColumnWidth(120),
                                  1: FixedColumnWidth(120),
                                },
                                children: const [
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 18),
                                          child: Text(
                                            'ID Type',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16), // Space between sections
                        // LOCATION Header Section
                        const Text(
                          'LOCATION',
                          style: TextStyle(
                            fontFamily: FontFamily.arial,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF4285F4),
                            decoration: TextDecoration.none,
                          ),
                        ),
                        const Divider(color: Color(0x17000033)),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            // First Table for LOCATION
                            Expanded(
                              child: Table(
                                columnWidths: const {
                                  0: FixedColumnWidth(120),
                                  1: FixedColumnWidth(120),
                                },
                                children: const [
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Latitude',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Altitude Press.',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Direction',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Horizontal Speed',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Height',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Horizontal Accuracy',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Baro Acc.',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Time Acc.',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 16), // Space between tables
                            // Second Table for LOCATION
                            Expanded(
                              child: Table(
                                columnWidths: const {
                                  0: FixedColumnWidth(120),
                                  1: FixedColumnWidth(120),
                                },
                                children: const [
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Longitude',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Altitude Geod',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Status',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Vertical Speed',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Height Over',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Vertical Accuracy',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Speed Acc.',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Timestamp',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16), // Space between sections
                        // SELF ID Header Section
                        const Text(
                          'SELF ID',
                          style: TextStyle(
                            fontFamily: FontFamily.arial,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF4285F4),
                            decoration: TextDecoration.none,
                          ),
                        ),
                        const Divider(color: Color(0x17000033)),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            // First Table for BASIC ID 2
                            Expanded(
                              child: Table(
                                columnWidths: const {
                                  0: FixedColumnWidth(120),
                                  1: FixedColumnWidth(120),
                                },
                                children: const [
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Operation',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 16), // Space between tables
                            // Second Table for SELF ID
                            Expanded(
                              child: Table(
                                columnWidths: const {
                                  0: FixedColumnWidth(120),
                                  1: FixedColumnWidth(120),
                                },
                                children: const [
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Type',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16), // Space between sections
                        // SYSTEM OPERATOR Header Section
                        const Text(
                          'SYSTEM OPERATOR',
                          style: TextStyle(
                            fontFamily: FontFamily.arial,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF4285F4),
                            decoration: TextDecoration.none,
                          ),
                        ),
                        const Divider(color: Color(0x17000033)),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            // First Table for SYSTEM OPERATOR
                            Expanded(
                              child: Table(
                                columnWidths: const {
                                  0: FixedColumnWidth(120),
                                  1: FixedColumnWidth(120),
                                },
                                children: const [
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Location Type',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Latitude',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Area Count',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Area Ceiling',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Classification',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Category',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 16), // Space between tables
                            // Second Table for SYSTEM OPERATOR
                            Expanded(
                              child: Table(
                                columnWidths: const {
                                  0: FixedColumnWidth(120),
                                  1: FixedColumnWidth(120),
                                },
                                children: const [
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Altitude',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Longitude',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Area radius',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Area floor',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Class',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 16),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16), // Space between sections
                        // OPERATOR ID Header Section
                        const Text(
                          'OPERATOR ID',
                          style: TextStyle(
                            fontFamily: FontFamily.arial,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF4285F4),
                            decoration: TextDecoration.none,
                          ),
                        ),
                        const Divider(color: Color(0x17000033)),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            // First Table for BASIC ID 2
                            Expanded(
                              child: Table(
                                columnWidths: const {
                                  0: FixedColumnWidth(120),
                                  1: FixedColumnWidth(120),
                                },
                                children: const [
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Operator ID',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 16), // Space between tables
                            // Second Table for OPERATOR ID
                            Expanded(
                              child: Table(
                                columnWidths: const {
                                  0: FixedColumnWidth(120),
                                  1: FixedColumnWidth(120),
                                },
                                children: const [
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Type',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16), // Space between sections
                        // BASIC ID 2 Header Section
                        const Text(
                          'BASIC ID 2',
                          style: TextStyle(
                            fontFamily: FontFamily.arial,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF4285F4),
                            decoration: TextDecoration.none,
                          ),
                        ),
                        const Divider(color: Color(0x17000033)),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            // First Table for AUTHENTICATION
                            Expanded(
                              child: Table(
                                columnWidths: const {
                                  0: FixedColumnWidth(120),
                                  1: FixedColumnWidth(120),
                                },
                                children: const [
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Type',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Timestamp',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Authentication',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 16), // Space between tables
                            // Second Table for AUTHENTICATION
                            Expanded(
                              child: Table(
                                columnWidths: const {
                                  0: FixedColumnWidth(120),
                                  1: FixedColumnWidth(120),
                                },
                                children: const [
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 35),
                                          child: Text(
                                            'Length',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF838187),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TableCell(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'Unknown',
                                            style: TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF222222),
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
