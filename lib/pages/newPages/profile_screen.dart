import 'package:explorando_clima_app/model/profile.dart';
import 'package:explorando_clima_app/pages/newPages/profile_list_tile.dart';
import 'package:explorando_clima_app/pages/new_home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({required this.profile, Key? key}) : super(key: key);
  final Profile profile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            toolbarHeight: 125,
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 32,
                  backgroundImage: NetworkImage(
                    profile.profileImageUrl,
                  ),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      profile.name,
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Show Profile',
                      style: TextStyle(
                        color: Colors.teal,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 2),
                  ],
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kHorizontalPadding,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildSectionTitle('Account settings'),
                      const ProfileListTile(
                        label: 'Personal Information',
                        iconData: Icons.person_outline,
                      ),
                      const ProfileListTile(
                        label: 'Payments and payouts',
                        iconData: Icons.payments_outlined,
                      ),
                      const ProfileListTile(
                        label: 'Notifications',
                        iconData: Icons.notifications_outlined,
                      ),
                      _buildSectionTitle('Hosting'),
                      const ProfileListTile(
                        label: 'Learn about hosting',
                        iconData: Icons.home_outlined,
                      ),
                      const ProfileListTile(
                          label: 'List your space',
                          iconData: Icons.add_business_outlined),
                      const ProfileListTile(
                        label: 'Host an experience',
                        iconData: Icons.beach_access_outlined,
                      ),
                      _buildSectionTitle('Referrals & Credits'),
                      const ProfileListTile(
                        label: 'Gift cards',
                        subtitle: 'Send or redeem a gift card',
                        iconData: Icons.card_giftcard_outlined,
                      ),
                      const ProfileListTile(
                        label: 'Refer a Host',
                        subtitle: 'Earn \$15 for every new host you refer',
                        iconData: Icons.attach_money_outlined,
                      ),
                      _buildSectionTitle('Tools'),
                      const ProfileListTile(
                        label: 'Siri settings',
                        iconData: Icons.keyboard_voice_outlined,
                      ),
                      _buildSectionTitle('Support'),
                      const ProfileListTile(
                        label: 'How FlutterUI works',
                        iconData: Icons.card_travel_outlined,
                      ),
                      const ProfileListTile(
                        label: 'Safety Center',
                        subtitle:
                        'Get the support, tools, and information you need to be safe',
                        iconData: Icons.shield,
                      ),
                      const ProfileListTile(
                        label: 'Contact Neighborhood Support',
                        subtitle:
                        'Let our team know about concerns related to home sharing activity in your area.',
                        iconData: Icons.question_answer_outlined,
                      ),
                      const ProfileListTile(
                        label: 'Get help',
                        iconData: Icons.help_outline,
                      ),
                      const ProfileListTile(
                        label: 'Give us feedback',
                        iconData: Icons.feedback_outlined,
                      ),
                      _buildSectionTitle('Legal'),
                      const ProfileListTile(
                        label: 'Terms of Service',
                      ),
                      const SizedBox(height: 24),
                      const ProfileListTile(
                        label: 'Log out',
                        labelColor: Colors.teal,
                      ),
                      const SizedBox(height: 24),
                      Center(
                        child: Text(
                          'VERSION 1.0.0',
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String label) {
    return Column(
      children: [
        const SizedBox(height: 24),
        Text(
          label,
          style: const TextStyle(fontSize: 12),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}