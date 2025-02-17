/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

/// User settings.
class UserSettingsConfig extends _i1.SerializableEntity {
  UserSettingsConfig({
    required this.canSeeUserName,
    required this.canSeeFullName,
    required this.canEditUserName,
    required this.canEditFullName,
    required this.canEditUserImage,
  });

  factory UserSettingsConfig.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return UserSettingsConfig(
      canSeeUserName: serializationManager
          .deserialize<bool>(jsonSerialization['canSeeUserName']),
      canSeeFullName: serializationManager
          .deserialize<bool>(jsonSerialization['canSeeFullName']),
      canEditUserName: serializationManager
          .deserialize<bool>(jsonSerialization['canEditUserName']),
      canEditFullName: serializationManager
          .deserialize<bool>(jsonSerialization['canEditFullName']),
      canEditUserImage: serializationManager
          .deserialize<bool>(jsonSerialization['canEditUserImage']),
    );
  }

  /// True if the user's nickname should be visible.
  bool canSeeUserName;

  /// True if the user's full name should be visible.
  bool canSeeFullName;

  /// True if the user should be able to edit its user name.
  bool canEditUserName;

  /// True if the user should be able to edit its full name.
  bool canEditFullName;

  /// True if the user should be able to upload a new user image.
  bool canEditUserImage;

  @override
  Map<String, dynamic> toJson() {
    return {
      'canSeeUserName': canSeeUserName,
      'canSeeFullName': canSeeFullName,
      'canEditUserName': canEditUserName,
      'canEditFullName': canEditFullName,
      'canEditUserImage': canEditUserImage,
    };
  }
}
