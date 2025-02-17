/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

/// Represents a snapshot of the number of open connections the server currently
/// is handling. An entry is written every minute for each server. All health
/// data can be accessed through Serverpod Insights.
class ServerHealthConnectionInfo extends _i1.TableRow {
  ServerHealthConnectionInfo({
    int? id,
    required this.serverId,
    required this.timestamp,
    required this.active,
    required this.closing,
    required this.idle,
    required this.granularity,
  }) : super(id);

  factory ServerHealthConnectionInfo.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return ServerHealthConnectionInfo(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      serverId: serializationManager
          .deserialize<String>(jsonSerialization['serverId']),
      timestamp: serializationManager
          .deserialize<DateTime>(jsonSerialization['timestamp']),
      active:
          serializationManager.deserialize<int>(jsonSerialization['active']),
      closing:
          serializationManager.deserialize<int>(jsonSerialization['closing']),
      idle: serializationManager.deserialize<int>(jsonSerialization['idle']),
      granularity: serializationManager
          .deserialize<int>(jsonSerialization['granularity']),
    );
  }

  static final t = ServerHealthConnectionInfoTable();

  /// The server associated with this connection info.
  String serverId;

  /// The time when the connections was checked, granularity is one minute.
  DateTime timestamp;

  /// Number of active connections currently open.
  int active;

  /// Number of connections currently closing.
  int closing;

  /// Number of connections currently idle.
  int idle;

  /// The granularity of this timestamp, null represents 1 minute, other valid
  /// values are 60 minutes and 1440 minutes (one day).
  int granularity;

  @override
  String get tableName => 'serverpod_health_connection_info';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'serverId': serverId,
      'timestamp': timestamp,
      'active': active,
      'closing': closing,
      'idle': idle,
      'granularity': granularity,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'serverId': serverId,
      'timestamp': timestamp,
      'active': active,
      'closing': closing,
      'idle': idle,
      'granularity': granularity,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'serverId': serverId,
      'timestamp': timestamp,
      'active': active,
      'closing': closing,
      'idle': idle,
      'granularity': granularity,
    };
  }

  @override
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'serverId':
        serverId = value;
        return;
      case 'timestamp':
        timestamp = value;
        return;
      case 'active':
        active = value;
        return;
      case 'closing':
        closing = value;
        return;
      case 'idle':
        idle = value;
        return;
      case 'granularity':
        granularity = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<ServerHealthConnectionInfo>> find(
    _i1.Session session, {
    ServerHealthConnectionInfoExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<ServerHealthConnectionInfo>(
      where: where != null ? where(ServerHealthConnectionInfo.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<ServerHealthConnectionInfo?> findSingleRow(
    _i1.Session session, {
    ServerHealthConnectionInfoExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<ServerHealthConnectionInfo>(
      where: where != null ? where(ServerHealthConnectionInfo.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<ServerHealthConnectionInfo?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<ServerHealthConnectionInfo>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required ServerHealthConnectionInfoExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ServerHealthConnectionInfo>(
      where: where(ServerHealthConnectionInfo.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    ServerHealthConnectionInfo row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    ServerHealthConnectionInfo row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    ServerHealthConnectionInfo row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    ServerHealthConnectionInfoExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ServerHealthConnectionInfo>(
      where: where != null ? where(ServerHealthConnectionInfo.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef ServerHealthConnectionInfoExpressionBuilder = _i1.Expression Function(
    ServerHealthConnectionInfoTable);

class ServerHealthConnectionInfoTable extends _i1.Table {
  ServerHealthConnectionInfoTable()
      : super(tableName: 'serverpod_health_connection_info');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  /// The server associated with this connection info.
  final serverId = _i1.ColumnString('serverId');

  /// The time when the connections was checked, granularity is one minute.
  final timestamp = _i1.ColumnDateTime('timestamp');

  /// Number of active connections currently open.
  final active = _i1.ColumnInt('active');

  /// Number of connections currently closing.
  final closing = _i1.ColumnInt('closing');

  /// Number of connections currently idle.
  final idle = _i1.ColumnInt('idle');

  /// The granularity of this timestamp, null represents 1 minute, other valid
  /// values are 60 minutes and 1440 minutes (one day).
  final granularity = _i1.ColumnInt('granularity');

  @override
  List<_i1.Column> get columns => [
        id,
        serverId,
        timestamp,
        active,
        closing,
        idle,
        granularity,
      ];
}

@Deprecated('Use ServerHealthConnectionInfoTable.t instead.')
ServerHealthConnectionInfoTable tServerHealthConnectionInfo =
    ServerHealthConnectionInfoTable();
