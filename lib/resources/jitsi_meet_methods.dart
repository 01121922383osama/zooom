import 'package:flutter/foundation.dart';
import 'package:jitsi_meet_wrapper/jitsi_meet_wrapper.dart';

class JitsiMeetMethods {
  void createMeeting({
    required String roomName,
     required bool isAudioMuted,
    required bool isVideoMuted,
    String? username = '',
  }) async {
    String? serverUrl;

    try {
      //   Map<FeatureFlagEnum, bool> featureFlag = {
      //     FeatureFlagEnum.WELCOME_PAGE_ENABLED: true,
      //     FeatureFlagEnum.ADD_PEOPLE_ENABLED: true,
      //     FeatureFlagEnum.CALENDAR_ENABLED: true,
      //     FeatureFlagEnum.CALL_INTEGRATION_ENABLED: true,
      //     FeatureFlagEnum.CHAT_ENABLED: true,
      //     FeatureFlagEnum.CLOSE_CAPTIONS_ENABLED: true,
      //     FeatureFlagEnum.INVITE_ENABLED: true,
      //     FeatureFlagEnum.IOS_RECORDING_ENABLED: true,
      //     FeatureFlagEnum.LIVE_STREAMING_ENABLED: true,
      //     FeatureFlagEnum.MEETING_NAME_ENABLED: true,
      //     FeatureFlagEnum.MEETING_PASSWORD_ENABLED: true,
      //     FeatureFlagEnum.PIP_ENABLED: true,
      //     FeatureFlagEnum.RAISE_HAND_ENABLED: true,
      //     FeatureFlagEnum.RECORDING_ENABLED: true,
      //     FeatureFlagEnum.TILE_VIEW_ENABLED: true,
      //     FeatureFlagEnum.TOOLBOX_ALWAYS_VISIBLE: true,
      //   };
      //   if (Platform.isAndroid) {
      //     featureFlag[featureFlag];
      //     featureFlag[FeatureFlagEnum.WELCOME_PAGE_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.ADD_PEOPLE_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.CALENDAR_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.CALL_INTEGRATION_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.CHAT_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.CLOSE_CAPTIONS_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.INVITE_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.IOS_RECORDING_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.LIVE_STREAMING_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.MEETING_NAME_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.MEETING_PASSWORD_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.PIP_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.RAISE_HAND_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.RECORDING_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.TILE_VIEW_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.TOOLBOX_ALWAYS_VISIBLE] = true;
      //     featureFlag[FeatureFlagEnum.TOOLBOX_ALWAYS_VISIBLE] = true;
      //     /////////////////////
      //   } else if (Platform.isIOS) {
      //     featureFlag[featureFlag];
      //     featureFlag[FeatureFlagEnum.WELCOME_PAGE_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.ADD_PEOPLE_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.CALENDAR_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.CALL_INTEGRATION_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.CHAT_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.CLOSE_CAPTIONS_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.INVITE_ENABLED] = false;
      //     featureFlag[FeatureFlagEnum.IOS_RECORDING_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.LIVE_STREAMING_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.MEETING_NAME_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.MEETING_PASSWORD_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.PIP_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.RAISE_HAND_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.RECORDING_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.TILE_VIEW_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.TOOLBOX_ALWAYS_VISIBLE] = true;
      //     featureFlag[FeatureFlagEnum.TOOLBOX_ALWAYS_VISIBLE] = true;
      //     ///////////////////
      //   } else if (Platform.isMacOS) {
      //     featureFlag[featureFlag];
      //     featureFlag[FeatureFlagEnum.WELCOME_PAGE_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.ADD_PEOPLE_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.CALENDAR_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.CALL_INTEGRATION_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.CHAT_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.CLOSE_CAPTIONS_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.INVITE_ENABLED] = false;
      //     featureFlag[FeatureFlagEnum.IOS_RECORDING_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.LIVE_STREAMING_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.MEETING_NAME_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.MEETING_PASSWORD_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.PIP_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.RAISE_HAND_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.RECORDING_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.TILE_VIEW_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.TOOLBOX_ALWAYS_VISIBLE] = true;
      //     featureFlag[FeatureFlagEnum.TOOLBOX_ALWAYS_VISIBLE] = true;
      //     //////////////////////////////////
      //   } else if (Platform.isWindows) {
      //     featureFlag[featureFlag];
      //     featureFlag[FeatureFlagEnum.WELCOME_PAGE_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.ADD_PEOPLE_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.CALENDAR_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.CALL_INTEGRATION_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.CHAT_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.CLOSE_CAPTIONS_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.INVITE_ENABLED] = false;
      //     featureFlag[FeatureFlagEnum.IOS_RECORDING_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.LIVE_STREAMING_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.MEETING_NAME_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.MEETING_PASSWORD_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.PIP_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.RAISE_HAND_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.RECORDING_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.TILE_VIEW_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.TOOLBOX_ALWAYS_VISIBLE] = true;
      //     featureFlag[FeatureFlagEnum.TOOLBOX_ALWAYS_VISIBLE] = true;
      //     ////////////////////////
      //   } else if (Platform.isFuchsia) {
      //     featureFlag[featureFlag];
      //     featureFlag[FeatureFlagEnum.WELCOME_PAGE_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.ADD_PEOPLE_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.CALENDAR_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.CALL_INTEGRATION_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.CHAT_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.CLOSE_CAPTIONS_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.INVITE_ENABLED] = false;
      //     featureFlag[FeatureFlagEnum.IOS_RECORDING_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.LIVE_STREAMING_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.MEETING_NAME_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.MEETING_PASSWORD_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.PIP_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.RAISE_HAND_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.RECORDING_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.TILE_VIEW_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.TOOLBOX_ALWAYS_VISIBLE] = true;
      //     featureFlag[FeatureFlagEnum.TOOLBOX_ALWAYS_VISIBLE] = true;
      //     ////////////////////////////
      //   } else if (Platform.isLinux) {
      //     featureFlag[featureFlag];
      //     featureFlag[FeatureFlagEnum.WELCOME_PAGE_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.ADD_PEOPLE_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.CALENDAR_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.CALL_INTEGRATION_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.CHAT_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.CLOSE_CAPTIONS_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.INVITE_ENABLED] = false;
      //     featureFlag[FeatureFlagEnum.IOS_RECORDING_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.LIVE_STREAMING_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.MEETING_NAME_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.MEETING_PASSWORD_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.PIP_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.RAISE_HAND_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.RECORDING_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.TILE_VIEW_ENABLED] = true;
      //     featureFlag[FeatureFlagEnum.TOOLBOX_ALWAYS_VISIBLE] = true;
      //     featureFlag[FeatureFlagEnum.TOOLBOX_ALWAYS_VISIBLE] = true;
      //   }

      Map<String, Object> featureFlags = {};

      var options = JitsiMeetingOptions(
        roomNameOrUrl: roomName,
        userDisplayName: username,
        serverUrl: serverUrl,
        subject: "Meeting with",
        isAudioMuted: isAudioMuted,
        isVideoMuted: isVideoMuted,
        featureFlags: featureFlags,
      );
      // ..serverURL = serverUrl
      // ..subject = "Meeting with"
      // ..audioMuted = isAudioMuted
      // ..videoMuted = isVideoMuted
      // ..featureFlags.addAll(featureFlag);

      await JitsiMeetWrapper.joinMeeting(options: options);
    } catch (error) {
      if (kDebugMode) {
        print("error: $error");
      }
    }
  }
}
