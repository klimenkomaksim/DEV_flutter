import 'package:dev_flutter/models/video_preview_model.dart';

final videoData = [
  VideoPreviewModel.fromJson({
    'id': 1,
    'cloudinary_video_url':
        'https://res.cloudinary.com/practicaldev/image/fetch/s--viOuHAIW--/c_limit,f_auto,fl_progressive,q_80,w_880/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/67z667cxa5g1i47qkyj1.png',
    'title':
        'Quick Update on Flutter Webview - (PART 5) & Migration to Null Safety.',
    'user': {'name': 'Samuel Adekunle'},
    'video_duration_in_minutes': '17:50',
  }),
  VideoPreviewModel.fromJson({
    'id': 2,
    'cloudinary_video_url':
        'https://res.cloudinary.com/practicaldev/image/fetch/s--isywf4pe--/c_limit,f_auto,fl_progressive,q_80,w_880/https://dw71fyauz7yz9.cloudfront.net/video-upload__0462cad2fd410cae05a358f8be23414e/thumbs-video-upload__0462cad2fd410cae05a358f8be23414e-00001.png',
    'title': 'Complicated encryption ways explained in 2 min, by @vixentael',
    'user': {'name': 'Cossack Labs'},
    'video_duration_in_minutes': '02:31',
  }),
  VideoPreviewModel.fromJson({
    'id': 3,
    'cloudinary_video_url':
        'https://res.cloudinary.com/practicaldev/image/fetch/s--E8R2_atG--/c_limit,f_auto,fl_progressive,q_80,w_880/https://dw71fyauz7yz9.cloudfront.net/video-upload__d2802ab3f21ead059ea79925365a197d/thumbs-video-upload__d2802ab3f21ead059ea79925365a197d-00001.png',
    'title': 'VSCODE SETTING',
    'user': {'name': 'Toqeer Abbas'},
    'video_duration_in_minutes': '03:23',
  }),
  VideoPreviewModel.fromJson({
    'id': 4,
    'cloudinary_video_url':
        'https://res.cloudinary.com/practicaldev/image/fetch/s--jqNiOIAL--/c_limit,f_auto,fl_progressive,q_80,w_880/https://dw71fyauz7yz9.cloudfront.net/video-upload__774989ba2e6494b1ac4169f7e61aad55/thumbs-video-upload__774989ba2e6494b1ac4169f7e61aad55-00001.png',
    'title': 'Deploying your code to a cloud server',
    'user': {'name': 'Michelle Mannering'},
    'video_duration_in_minutes': '00:59',
  }),
];
