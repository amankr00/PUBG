import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  late List<bool>
      _isHovered; // Declare _isHovered as late and initialize in initState

  @override
  void initState() {
    super.initState();
    _isHovered = List<bool>.filled(8, false,
        growable: false); // Initialize with 8 elements
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75, // Set a fixed height for the navbar
      color: Color.fromARGB(255, 2, 1, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // BGMI LOGO
          // Menu items with hover functionality
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.15,
                height: 90, // Adjust the height based on your needs
                child: ClipRRect(
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              _buildHoverText('HOME', 0),
              _buildHoverText('NEWS', 1),
              _buildHoverText('REDEEM', 2),
              _buildHoverText('ESPORTS', 3),
              _buildHoverText('SUPPORT', 4),
              _buildHoverText('GAME RESPONSIBLY', 5),
            ],
          ),

          // Language selector and Login button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 30, 0),

                // child: MouseRegion(
                //   onEnter: (_) =>
                //       _onHover(true, 7), // 7 is the index for 'AOS DOWNLOAD'
                //   onExit: (_) => _onHover(false, 7),

                child: Container(
                  width: 25,
                  height: 25,
                  // color: _isHovered[7]
                  //     ? Color.fromARGB(243, 236, 169, 0)
                  //     : Color.fromARGB(255, 246, 193, 0),
                  child: ClipRRect(
                    child: Image.asset(
                      'assets/images/face.png',
                      width: 70,
                      height: 100,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 30, 0),

                // child: MouseRegion(
                //   onEnter: (_) =>
                //       _onHover(true, 7), // 7 is the index for 'AOS DOWNLOAD'
                //   onExit: (_) => _onHover(false, 7),

                child: Container(
                  width: 25,
                  height: 25,
                  // color: _isHovered[7]
                  //     ? Color.fromARGB(243, 236, 169, 0)
                  //     : Color.fromARGB(255, 246, 193, 0),
                  child: ClipRRect(
                    child: Image.asset(
                      'assets/images/insta.png',
                      width: 70,
                      height: 100,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 30, 0),

                // child: MouseRegion(
                //   onEnter: (_) =>
                //       _onHover(true, 7), // 7 is the index for 'AOS DOWNLOAD'
                //   onExit: (_) => _onHover(false, 7),

                child: Container(
                  width: 25,
                  height: 25,
                  // color: _isHovered[7]
                  //     ? Color.fromARGB(243, 236, 169, 0)
                  //     : Color.fromARGB(255, 246, 193, 0),
                  child: ClipRRect(
                    child: Image.asset(
                      'assets/images/yt.png',
                      width: 70,
                      height: 100,
                    ),
                  ),
                ),
              ),

              // PLAY NOW container with hover functionality
              MouseRegion(
                onEnter: (_) =>
                    _onHover(true, 6), // 6 is the index for 'IOS DOWNLOAD'
                onExit: (_) => _onHover(false, 6),
                child: Container(
                  width: 175,
                  color: _isHovered[6]
                      ? Color.fromARGB(243, 236, 169, 0)
                      : Color.fromARGB(255, 246, 193, 0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'IOS DOWNLOAD',
                      style: TextStyle(
                        color: _isHovered[6]
                            ? const Color.fromARGB(255, 255, 255, 255)
                            : const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 17,
                        fontWeight: FontWeight.w900,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(
                    2, 0, 0, 0), // Adjusted padding for separation

                child: MouseRegion(
                  onEnter: (_) =>
                      _onHover(true, 7), // 7 is the index for 'AOS DOWNLOAD'
                  onExit: (_) => _onHover(false, 7),
                  child: Container(
                    width: 175,
                    color: _isHovered[7]
                        ? Color.fromARGB(243, 236, 169, 0)
                        : Color.fromARGB(255, 246, 193, 0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'AOS DOWNLOAD',
                        style: TextStyle(
                          color: _isHovered[7]
                              ? const Color.fromARGB(255, 255, 255, 255)
                              : const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 17,
                          fontWeight: FontWeight.w900,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Container(
               width: 70,
                height: 40,
                  child: ClipRRect(
                      child: Image.asset(
                'assets/images/cart.png',
                width: 30,
                height: 30,
              ))),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildHoverText(String text, int index) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
      child: MouseRegion(
        onEnter: (_) => _onHover(true, index),
        onExit: (_) => _onHover(false, index),
        child: Text(
          text,
          style: TextStyle(
            color: _isHovered[index]
                ? Colors.white
                : const Color.fromARGB(255, 96, 93, 93),
            fontSize: 17,
            decoration: TextDecoration.none,
          ),
        ),
      ),
    );
  }

  void _onHover(bool isHovered, int index) {
    setState(() {
      _isHovered[index] = isHovered;
    });
  }
}
