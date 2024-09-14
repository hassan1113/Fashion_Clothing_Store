import 'package:clothingstore/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HelpCenterScreen extends StatefulWidget {
  @override
  _HelpCenterScreenState createState() => _HelpCenterScreenState();
}

class _HelpCenterScreenState extends State<HelpCenterScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whitecolor,
      appBar: AppBar(
        title: Text('Help Center', style: TextStyle(color: AppColors.whitecolor)),
        centerTitle: true,
        backgroundColor: AppColors.orangecolor,
        elevation: 0,
        leading: IconButton(
          icon: CircleAvatar(
            backgroundColor: AppColors.whitecolor,
            child: Icon(Icons.arrow_back, color: AppColors.orangecolor),
          ),
          onPressed: () {
            Navigator.pop(context); // Navigate back
          },
        ),
      ),
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            indicatorColor: AppColors.orangecolor,
            labelColor: AppColors.orangecolor,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: 'FAQ'),
              Tab(text: 'Contact Us'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _buildFaqSection(), // FAQ tab
                _buildContactUsSection(), // Contact Us tab
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Build the FAQ Section
  Widget _buildFaqSection() {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: [
        ExpansionTile(
          title: Text('Can I track my order\'s delivery status?'),
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit...'),
            ),
          ],
        ),
        ExpansionTile(
          title: Text('Is there a return policy?'),
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit...'),
            ),
          ],
        ),
        ExpansionTile(
          title: Text('Can I save my favorite items for later?'),
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit...'),
            ),
          ],
        ),
      ],
    );
  }

  // Build the Contact Us Section
  Widget _buildContactUsSection() {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: [
        ListTile(
          leading: Icon(Icons.phone, color: AppColors.orangecolor),
          title: Text('Customer Service'),
          trailing: Icon(Icons.arrow_forward_ios, color: AppColors.orangecolor),
          onTap: () {
            // Handle Customer Service click
          },
        ),
        ListTile(
          leading: Icon(Icons.message, color: AppColors.orangecolor),
          title: Text('WhatsApp'),
          trailing: Text('(480) 555-0103', style: TextStyle(color: AppColors.orangecolor)),
        ),
        ListTile(
          leading: Icon(Icons.web, color: AppColors.orangecolor),
          title: Text('Website'),
          trailing: Icon(Icons.arrow_forward_ios, color: AppColors.orangecolor),
          onTap: () {
            // Handle Website click
          },
        ),
        ListTile(
          leading: Icon(Icons.facebook, color: AppColors.orangecolor),
          title: Text('Facebook'),
          trailing: Icon(Icons.arrow_forward_ios, color: AppColors.orangecolor),
        ),
        ListTile(
          leading: FaIcon(FontAwesomeIcons.twitter, color: AppColors.orangecolor), 
          title: Text('Twitter'),
          trailing: Icon(Icons.arrow_forward_ios, color: AppColors.orangecolor),
        ),
        ListTile(
          leading: FaIcon(FontAwesomeIcons.instagram, color: AppColors.orangecolor), 
          title: Text('Instagram'),
          trailing: Icon(Icons.arrow_forward_ios, color: AppColors.orangecolor),
        ),
      ],
    );
  }
}
