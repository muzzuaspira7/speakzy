import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:speakzy/common/models/user_model.dart';
import 'package:speakzy/common/widgets/appbar.dart';
import 'package:speakzy/core/theme/app_text_styles.dart';
import 'package:speakzy/features/home/presentation/widgets/friends_online_card.dart';

import '../widgets/user_list_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Lobby", centerTitle: true),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Online Friends",
              style: AppTextStyles.heading(fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                FriendsOnlineCard(),
                SizedBox(width: 10.w),
                FriendsOnlineCard(),
                SizedBox(width: 10.w),
                // FriendsOnlineCard(),
              ],
            ),
            SizedBox(height: 20.h),
            Text(
              "Invite Users",
              style: AppTextStyles.heading(fontWeight: FontWeight.w600),
            ),
        Container(
          height: 340.h,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: userList.length,
            itemBuilder: (context, index) {
              final UserModel user = userList[index];
            return UserListCard(
                imageUrl: user.image,
                gender: user.gender,
                isOnline: user.isOnline,
                name: user.name,
                rating: user.rating
              );
          },),
        )

            

            
           
          ],
        ),
      ),
    );
  }
}
