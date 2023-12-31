// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:jobseque/core/utils/global/app_logos.dart';

class NotificationModel {
  String image;
  String overView;
  String name;
  String receivedTime;
  bool isReaded;
  NotificationModel({
    required this.image,
    required this.overView,
    required this.name,
    required this.receivedTime,
    required this.isReaded,
  });
}

List<NotificationModel> notificationDummyList = [
  NotificationModel(
    image: AppLogos.danaLogoPng,
    name: 'Dana',
    overView: 'Posted new design jobs',
    receivedTime: '10.00AM',
    isReaded: false,
  ),
  NotificationModel(
    image: AppLogos.shoopeLogoPng,
    name: 'Shoope',
    overView: 'Posted new design jobs',
    receivedTime: '10.00AM',
    isReaded: false,
  ),
  NotificationModel(
    image: AppLogos.slackLogoPng,
    name: 'Slack',
    overView: 'Posted new design jobs',
    receivedTime: '10.00AM',
    isReaded: false,
  ),
  NotificationModel(
    image: AppLogos.facebooknotifiacationLogo,
    name: 'Facebook',
    overView: 'Posted new design jobs',
    receivedTime: '10.00AM',
    isReaded: false,
  ),
];

List<NotificationModel> notificationAppDummyList = [
  NotificationModel(
    image: AppLogos.emailNotification,
    name: 'Email setup successful',
    overView:
        'Your email setup was successful with the following details: Your new email is rafifdianganz@gmail.com.',
    receivedTime: '10.00AM',
    isReaded: false,
  ),
  NotificationModel(
    image: AppLogos.jobSqueNotification,
    name: 'Welcome to Jobsque',
    overView:
        'Hello Rafif Dian Axelingga, thank you for registering Jobsque. Enjoy the various features that....',
    receivedTime: '08.00AM',
    isReaded: true,
  ),
];
