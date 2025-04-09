library d_sdk;

import 'dart:async';

import 'package:d_sdk/core/auth/auth_manager.dart';
import 'package:d_sdk/core/cache/cache_storage.dart';
import 'package:d_sdk/core/cache/secure_cache_storage_adapter.dart';
import 'package:d_sdk/core/cache/shared_cache_storage_adapter.dart';
import 'package:d_sdk/core/http/http_adapter.dart';
import 'package:d_sdk/core/http/http_client.dart';
import 'package:d_sdk/core/network/connectivy_service.dart';
import 'package:d_sdk/database/app_database.dart';
import 'package:d_sdk/database/db_manager.dart';
import 'package:d_sdk/datasource/remote_data_sources/data_submission_datasource.dart';
import 'package:d_sdk/di/app_environment.dart';
import 'package:d_sdk/di/injection.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DSdk {
  // database
  static DbManager get dbManager => rSdkLocator<DbManager>();

  static AppDatabase get db => dbManager.getActiveDb();

  static DataSubmissionDatasource get dataSubmissionDataSource =>
      rSdkLocator<DataSubmissionDatasource>();

  // services
  static AuthManager get authManager => rSdkLocator<AuthManager>();

  static ConnectivityService get connectivity =>
      rSdkLocator<ConnectivityService>();
  static CacheStorage cacheStorage = rSdkLocator<CacheStorage>();
}
