import 'package:jobseque/core/utils/global/app_logos.dart';
import 'package:jobseque/features/chatting/domain/entities/message_entity.dart';

List<MessageEntity> messagesList = [
  MessageEntity(
    logo: AppLogos.twitterLogo,
    lastMsg: 'Here is the link: http://zoom.com/abcdeefg',
    sender: 'Twitter',
    time: '12.39',
    isReaded: false,
  ),
  MessageEntity(
    logo: AppLogos.gojekLogo,
    lastMsg: 'Let’s keep in touch.',
    sender: 'Gojek Indonesia',
    time: '12.39',
    isReaded: false,
  ),
  MessageEntity(
    logo: AppLogos.shoopeLogo,
    lastMsg: 'Thank You David!',
    sender: 'Shoope',
    time: '09.45',
    isReaded: true,
  ),
  MessageEntity(
    logo: AppLogos.danaLogo,
    lastMsg: 'Thank you for your attention!',
    sender: 'Dana',
    time: 'Yesterday',
    isReaded: false,
  ),
  MessageEntity(
    logo: AppLogos.slackLogo,
    lastMsg: 'You: I look forward to hearing from you',
    sender: 'Slack',
    time: '12/8',
    isReaded: true,
  ),
  MessageEntity(
    logo: AppLogos.facebookLogo,
    lastMsg: 'You: What about the interview stage?',
    sender: 'Facebook',
    time: '12/8',
    isReaded: true,
  ),
];

var unReadedMsg = messagesList
    .where(
      (message) => message.isReaded == false,
    )
    .toList();
