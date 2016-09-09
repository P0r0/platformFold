.class Lmobisocial/omlib/db/OMSQLiteModelBuilder;
.super Ljava/lang/Object;
.source "OMSQLiteModelBuilder.java"


# static fields
.field static final CREATE_ACCOUNTS:Ljava/lang/String; = "CREATE TABLE accounts (_id integer primary key autoincrement not null, Account varchar(140), skHash integer, Name varchar(140) collate NOCASE, ThumbnailHash blob, ProfileVersion integer, Blocked integer, Favorite integer, HasAppDate integer, MessageCount integer, Owned integer, DateAdded integer, Display integer, ModifiedTimestamp integer, UpToDate integer)"

.field static final CREATE_DEVICE:Ljava/lang/String; = "CREATE TABLE device( _id integer primary key autoincrement not null, deviceKey blob not null, initialInstallTime integer, feedSyncStart integer, feedSyncSplit integer, feedSyncEnd integer, appId blob, account varchar(100), cluster varchar(100), closestCluster varchar(100), scopes varchar(32), ModifiedTimestamp integer)"

.field static final CREATE_FEEDS:Ljava/lang/String; = "CREATE TABLE feeds( _id integer primary key autoincrement not null, Kind varchar(140), Identifier varchar(140), skHash integer, FullHistorySynced integer, HasWriteAccess integer, SpecifiedName varchar(140), SpecifiedThumbnailHash blob, Favorite integer, Expired integer, LastReadTime integer, MembershipTime integer, Name varchar(140) collate NOCASE, ThumbnailHash blob, NumUnread integer, MemberCount integer, RenderableTime integer, RenderableId integer, ModifiedTimestamp integer, Acceptance integer, SyncMask integer, ApproximateDirtyTime integer, NewestFromService integer, OldestFromService integer)"

.field static final CREATE_FEED_MEMBER:Ljava/lang/String; = "CREATE TABLE feedMembers( _id integer primary key autoincrement not null, FeedId integer, accountFeedKey blob, skHash integer, AccountId integer, LastRead integer, LastAck integer, ModifiedTimestamp integer)"

.field static final CREATE_IDENTITIES:Ljava/lang/String; = "CREATE TABLE identities( _id integer primary key autoincrement not null, identityHash blob, skHash integer, accountid integer, type text, value text, rawContactID integer, modifiedTimestamp integer)"

.field static final CREATE_OBJ:Ljava/lang/String; = "CREATE TABLE objects( _id integer primary key autoincrement not null, FeedId integer, SenderId integer, Timestamp integer, ServerTimestamp integer, serverMetadata blob, messageId integer, Type varchar(140), UniversalId blob, IdHash integer, MessageStatus integer, OutgoingId integer, ParentId integer, EncodedLikes blob, LikeCount integer, EncodedAggregateLikes blob, AggregateLikeCount integer, CommentCount integer, Renderable integer, RequiredBlobHash blob, RequiredBlobShortHash integer, Deleted integer, Callback varchar(140), Payload blob, Hidden integer, Silent integer, Ack integer, AllowsCopy integer, Emote integer, Height integer, Width integer, GifHash blob, ThumbnailHeight integer, ThumbnailWidth integer, AppName varchar(140), AppIdentifier varchar(140), DisplayCaption varchar(140), DisplayText varchar(140), DisplayThumbnailHash blob, DisplayTitle varchar(140), DisplayHtmlSmall varchar(140), IosBundleID varchar(140), Json varchar(140), Noun varchar(140), LocalizedNoun varchar(140), Platform varchar(140), WebCallback varchar(140), FullSizeWidth integer, FullSizeHeight integer, Caption varchar(140), FullSizeHash blob, ThumbnailHash blob, HdHash blob, EditorAppName varchar(140), EditorFormatHash blob, ParentObjId blob, ReferenceId blob, FileHash blob, Filename varchar(140), MimeType varchar(140), Duration float, AudioHash blob, Latitude float, Longitude float, CustomName varchar(140), PlaceName varchar(140), Expiration integer, Pin varchar(140), Uuid varchar(140), Text varchar(140), EncodedGameId blob, Score integer, ModifiedTimestamp integer)"

.field static final CREATE_SETTINGS:Ljava/lang/String; = "CREATE TABLE settings( _id integer primary key autoincrement not null, key varchar(32), skHash integer, intValue integer, longValue integer, stringValue text, byteArrayValue blob, booleanValue integer)"

.field static final CREATE_STICKER:Ljava/lang/String; = "CREATE TABLE stickers( _id integer primary key autoincrement not null, skHash integer, modifiedTimestamp integer, thumbnailHash blob, itemId blob, json text, placeable integer, chattable integer)"

.field static final DB_VERSION:I = 0x15

.field private static final TAG:Ljava/lang/String; = "SqlModelBuilder"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createIndices(Landroid/database/sqlite/SQLiteDatabase;I)V
    .registers 4
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "oldVersion"    # I

    .prologue
    .line 136
    const/16 v1, 0xf

    if-ge p1, v1, :cond_2c

    .line 137
    const-string v1, "messages"

    invoke-static {p0, v1}, Lmobisocial/omlib/db/OMSQLiteModelBuilder;->makeSecondaryKeyIndex(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 138
    const-string v1, "blobs"

    invoke-static {p0, v1}, Lmobisocial/omlib/db/OMSQLiteModelBuilder;->makeSecondaryKeyIndex(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 139
    const-string v1, "blobSource"

    invoke-static {p0, v1}, Lmobisocial/omlib/db/OMSQLiteModelBuilder;->makeSecondaryKeyIndex(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 140
    const-string v1, "settings"

    invoke-static {p0, v1}, Lmobisocial/omlib/db/OMSQLiteModelBuilder;->makeSecondaryKeyIndex(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 141
    const-string v1, "accounts"

    invoke-static {p0, v1}, Lmobisocial/omlib/db/OMSQLiteModelBuilder;->makeSecondaryKeyIndex(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 142
    const-string v1, "feeds"

    invoke-static {p0, v1}, Lmobisocial/omlib/db/OMSQLiteModelBuilder;->makeSecondaryKeyIndex(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 143
    const-string v1, "identities"

    invoke-static {p0, v1}, Lmobisocial/omlib/db/OMSQLiteModelBuilder;->makeSecondaryKeyIndex(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 144
    const-string v1, "feedMembers"

    invoke-static {p0, v1}, Lmobisocial/omlib/db/OMSQLiteModelBuilder;->makeSecondaryKeyIndex(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 146
    :cond_2c
    const/16 v1, 0x11

    if-ge p1, v1, :cond_3a

    .line 149
    const-string v0, "CREATE INDEX IF NOT EXISTS idx_objects_feed_data ON objects(feedId,serverTimestamp)"

    .line 150
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 152
    const-string v0, "CREATE INDEX IF NOT EXISTS idx_feedMembers ON feedMembers(feedId,accountId)"

    .line 153
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 155
    .end local v0    # "sql":Ljava/lang/String;
    :cond_3a
    const/16 v1, 0x12

    if-ge p1, v1, :cond_43

    .line 156
    const-string v1, "stickers"

    invoke-static {p0, v1}, Lmobisocial/omlib/db/OMSQLiteModelBuilder;->makeSecondaryKeyIndex(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 158
    :cond_43
    return-void
.end method

.method static getCreateChatsSql()Ljava/lang/String;
    .registers 7

    .prologue
    .line 196
    const-string v1, "o.text as lastRenderableText, o.type as lastRenderableType, a._id as lastSenderId, a.Owned as lastSenderOwned, a.name as lastSenderName, a.thumbnailHash as lastSenderThumbnailHash, f.*"

    .line 197
    .local v1, "columns":Ljava/lang/String;
    const-string v2, "feeds f, objects o, accounts a"

    .line 198
    .local v2, "tables":Ljava/lang/String;
    const-string v0, "f.RenderableId = o._id AND o.senderId = a._id AND (f.kind IS NULL OR f.kind = \'d\') AND f.renderableTime > 0 AND f.name IS NOT NULL"

    .line 199
    .local v0, "clause":Ljava/lang/String;
    const-string v3, "CREATE VIEW %s AS SELECT %s FROM %s WHERE %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "chats"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static getCreateMembersOfFeedSql()Ljava/lang/String;
    .registers 7

    .prologue
    .line 189
    const-string v1, "a.*, fm.feedId as feedId, fm.accountId as accountId, fm.lastRead as lastRead, fm.lastAck as lastAck"

    .line 190
    .local v1, "columns":Ljava/lang/String;
    const-string v2, "accounts a, feedMembers fm"

    .line 191
    .local v2, "tables":Ljava/lang/String;
    const-string v0, "fm.accountId = a._id"

    .line 192
    .local v0, "clause":Ljava/lang/String;
    const-string v3, "CREATE VIEW %s AS SELECT %s FROM %s WHERE %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "members"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static getCreateObjectsWithSenderSql()Ljava/lang/String;
    .registers 7

    .prologue
    .line 182
    const-string v1, "o.*, a.name as senderName, a.thumbnailHash as senderThumbnailHash, a.Account as senderAccount, a.Owned as senderOwned"

    .line 183
    .local v1, "columns":Ljava/lang/String;
    const-string v2, "accounts a, objects o"

    .line 184
    .local v2, "tables":Ljava/lang/String;
    const-string v0, "o.senderId = a._id"

    .line 185
    .local v0, "clause":Ljava/lang/String;
    const-string v3, "CREATE VIEW %s AS SELECT %s FROM %s WHERE %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "objects_with_sender"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static makeSecondaryKeyIndex(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 161
    const-string v1, "CREATE INDEX IF NOT EXISTS idx_%s_sk ON %s(skHash)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public static onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const-wide/16 v4, -0x1

    .line 30
    const-string v1, "CREATE TABLE device( _id integer primary key autoincrement not null, deviceKey blob not null, initialInstallTime integer, feedSyncStart integer, feedSyncSplit integer, feedSyncEnd integer, appId blob, account varchar(100), cluster varchar(100), closestCluster varchar(100), scopes varchar(32), ModifiedTimestamp integer)"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 31
    const-string v1, "CREATE TABLE accounts (_id integer primary key autoincrement not null, Account varchar(140), skHash integer, Name varchar(140) collate NOCASE, ThumbnailHash blob, ProfileVersion integer, Blocked integer, Favorite integer, HasAppDate integer, MessageCount integer, Owned integer, DateAdded integer, Display integer, ModifiedTimestamp integer, UpToDate integer)"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 32
    const-string v1, "CREATE TABLE objects( _id integer primary key autoincrement not null, FeedId integer, SenderId integer, Timestamp integer, ServerTimestamp integer, serverMetadata blob, messageId integer, Type varchar(140), UniversalId blob, IdHash integer, MessageStatus integer, OutgoingId integer, ParentId integer, EncodedLikes blob, LikeCount integer, EncodedAggregateLikes blob, AggregateLikeCount integer, CommentCount integer, Renderable integer, RequiredBlobHash blob, RequiredBlobShortHash integer, Deleted integer, Callback varchar(140), Payload blob, Hidden integer, Silent integer, Ack integer, AllowsCopy integer, Emote integer, Height integer, Width integer, GifHash blob, ThumbnailHeight integer, ThumbnailWidth integer, AppName varchar(140), AppIdentifier varchar(140), DisplayCaption varchar(140), DisplayText varchar(140), DisplayThumbnailHash blob, DisplayTitle varchar(140), DisplayHtmlSmall varchar(140), IosBundleID varchar(140), Json varchar(140), Noun varchar(140), LocalizedNoun varchar(140), Platform varchar(140), WebCallback varchar(140), FullSizeWidth integer, FullSizeHeight integer, Caption varchar(140), FullSizeHash blob, ThumbnailHash blob, HdHash blob, EditorAppName varchar(140), EditorFormatHash blob, ParentObjId blob, ReferenceId blob, FileHash blob, Filename varchar(140), MimeType varchar(140), Duration float, AudioHash blob, Latitude float, Longitude float, CustomName varchar(140), PlaceName varchar(140), Expiration integer, Pin varchar(140), Uuid varchar(140), Text varchar(140), EncodedGameId blob, Score integer, ModifiedTimestamp integer)"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 33
    const-string v1, "CREATE TABLE feedMembers( _id integer primary key autoincrement not null, FeedId integer, accountFeedKey blob, skHash integer, AccountId integer, LastRead integer, LastAck integer, ModifiedTimestamp integer)"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 34
    const-string v1, "CREATE TABLE identities( _id integer primary key autoincrement not null, identityHash blob, skHash integer, accountid integer, type text, value text, rawContactID integer, modifiedTimestamp integer)"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 35
    const-string v1, "CREATE TABLE settings( _id integer primary key autoincrement not null, key varchar(32), skHash integer, intValue integer, longValue integer, stringValue text, byteArrayValue blob, booleanValue integer)"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 36
    const-string v1, "CREATE TABLE stickers( _id integer primary key autoincrement not null, skHash integer, modifiedTimestamp integer, thumbnailHash blob, itemId blob, json text, placeable integer, chattable integer)"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 37
    const-string v1, "CREATE TABLE sync (object_sync_time integer, feed_sync_time integer, feed_members_sync_time integer, account_sync_time integer)"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 38
    const-string v1, "CREATE TABLE feeds( _id integer primary key autoincrement not null, Kind varchar(140), Identifier varchar(140), skHash integer, FullHistorySynced integer, HasWriteAccess integer, SpecifiedName varchar(140), SpecifiedThumbnailHash blob, Favorite integer, Expired integer, LastReadTime integer, MembershipTime integer, Name varchar(140) collate NOCASE, ThumbnailHash blob, NumUnread integer, MemberCount integer, RenderableTime integer, RenderableId integer, ModifiedTimestamp integer, Acceptance integer, SyncMask integer, ApproximateDirtyTime integer, NewestFromService integer, OldestFromService integer)"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 39
    const-string v1, "CREATE TABLE durableJob (_id integer primary key autoincrement not null, type varchar(30), request text)"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 40
    const-string v1, "CREATE TABLE blobs (_id integer PRIMARY KEY AUTOINCREMENT, blobHash blob, skHash integer, size integer)"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 41
    const-string v1, "CREATE TABLE blobSource (_id integer PRIMARY KEY AUTOINCREMENT, blobId text, source text, skHash integer, failures integer, firstFail integer, lastFail integer, timestamp integer, mimeType varchar(40), category varchar(40), feedId integer, encrypted integer)"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 42
    const-string v1, "CREATE TABLE messages (_id integer PRIMARY KEY AUTOINCREMENT, skHash integer, feedIdTypedId blob, timestamp integer, feedId integer, lastHashForSend integer)"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lmobisocial/omlib/db/OMSQLiteModelBuilder;->getCreateObjectsWithSenderSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lmobisocial/omlib/db/OMSQLiteModelBuilder;->getCreateMembersOfFeedSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lmobisocial/omlib/db/OMSQLiteModelBuilder;->getCreateChatsSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 46
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 47
    .local v0, "initialCV":Landroid/content/ContentValues;
    const-string v1, "feed_sync_time"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 48
    const-string v1, "object_sync_time"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 49
    const-string v1, "feed_members_sync_time"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 50
    const-string v1, "account_sync_time"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 51
    const-string v1, "sync"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 52
    const/4 v1, -0x1

    invoke-static {p0, v1}, Lmobisocial/omlib/db/OMSQLiteModelBuilder;->createIndices(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 53
    return-void
.end method

.method public static onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 20
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "oldVersion"    # I
    .param p2, "newVersion"    # I

    .prologue
    .line 56
    const/16 v2, 0x9

    move/from16 v0, p1

    if-ge v0, v2, :cond_65

    .line 57
    const-string v2, "DROP TABLE IF EXISTS feeds"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    const-string v2, "DROP TABLE IF EXISTS objects"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    const-string v2, "DROP TABLE IF EXISTS feedMembers"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 60
    const-string v2, "DROP TABLE IF EXISTS accounts"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 61
    const-string v2, "DROP TABLE IF EXISTS identities"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 62
    const-string v2, "DROP TABLE IF EXISTS settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 63
    const-string v2, "DROP TABLE IF EXISTS sync"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    const-string v2, "DROP TABLE IF EXISTS device"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 65
    const-string v2, "DROP TABLE IF EXISTS durableJob"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 66
    const-string v2, "DROP TABLE IF EXISTS blobs"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    const-string v2, "DROP TABLE IF EXISTS blobSource"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    const-string v2, "DROP TABLE IF EXISTS messages"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    const-string v2, "DROP  VIEW IF EXISTS objects_with_sender"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 70
    invoke-static/range {p0 .. p0}, Lmobisocial/omlib/db/OMSQLiteModelBuilder;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 133
    :goto_64
    return-void

    .line 73
    :cond_65
    const/16 v2, 0xd

    move/from16 v0, p1

    if-ge v0, v2, :cond_8b

    .line 74
    const-string v2, "DROP  VIEW IF EXISTS chats"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lmobisocial/omlib/db/OMSQLiteModelBuilder;->getCreateChatsSql()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 76
    const-string v2, "DROP  VIEW IF EXISTS members"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lmobisocial/omlib/db/OMSQLiteModelBuilder;->getCreateMembersOfFeedSql()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 79
    :cond_8b
    const/16 v2, 0xf

    move/from16 v0, p1

    if-ge v0, v2, :cond_169

    .line 81
    :try_start_91
    const-string v2, "ALTER TABLE messages ADD COLUMN feedId INTEGER"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_98} :catch_1c2

    .line 84
    :goto_98
    const-string v3, "messages"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "feedIdTypedId"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 85
    .local v10, "c":Landroid/database/Cursor;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    .line 86
    .local v4, "feedColumns":[Ljava/lang/String;
    const-string v15, "identifier=?"

    .line 87
    .local v15, "feedQuery":Ljava/lang/String;
    const-string v16, "_id=?"

    .line 88
    .local v16, "msgQuery":Ljava/lang/String;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 89
    .local v11, "cv":Landroid/content/ContentValues;
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 91
    :cond_c6
    :goto_c6
    :try_start_c6
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_15e

    .line 92
    const-string v2, "feedIdTypedId"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-static {v2}, Lmobisocial/omlib/client/ClientFeedUtils;->decodeMessageKey([B)Lmobisocial/omlib/client/ClientFeedUtils$FeedIdTypedId;

    move-result-object v2

    iget-object v2, v2, Lmobisocial/omlib/client/ClientFeedUtils$FeedIdTypedId;->feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    invoke-virtual {v2}, Lmobisocial/longdan/LDProtocols$LDFeed;->toString()Ljava/lang/String;

    move-result-object v14

    .line 93
    .local v14, "feedIdentifier":Ljava/lang/String;
    const-string v3, "feeds"

    const-string v5, "identifier=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v14, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_f2
    .catchall {:try_start_c6 .. :try_end_f2} :catchall_12a

    move-result-object v13

    .line 95
    .local v13, "feedCur":Landroid/database/Cursor;
    :try_start_f3
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_134

    .line 96
    const-string v2, "feedId"

    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 97
    const-string v2, "messages"

    const-string v3, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_124
    .catchall {:try_start_f3 .. :try_end_124} :catchall_157

    .line 102
    :goto_124
    if-eqz v13, :cond_c6

    .line 103
    :try_start_126
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_129
    .catchall {:try_start_126 .. :try_end_129} :catchall_12a

    goto :goto_c6

    .line 108
    .end local v13    # "feedCur":Landroid/database/Cursor;
    .end local v14    # "feedIdentifier":Ljava/lang/String;
    :catchall_12a
    move-exception v2

    if-eqz v10, :cond_130

    .line 109
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 110
    :cond_130
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 99
    .restart local v13    # "feedCur":Landroid/database/Cursor;
    .restart local v14    # "feedIdentifier":Ljava/lang/String;
    :cond_134
    :try_start_134
    const-string v2, "SqlModelBuilder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t find feed matching for messageid: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "_id"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_156
    .catchall {:try_start_134 .. :try_end_156} :catchall_157

    goto :goto_124

    .line 102
    :catchall_157
    move-exception v2

    if-eqz v13, :cond_15d

    .line 103
    :try_start_15a
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_15d
    throw v2

    .line 106
    .end local v13    # "feedCur":Landroid/database/Cursor;
    .end local v14    # "feedIdentifier":Ljava/lang/String;
    :cond_15e
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_161
    .catchall {:try_start_15a .. :try_end_161} :catchall_12a

    .line 108
    if-eqz v10, :cond_166

    .line 109
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 110
    :cond_166
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 113
    .end local v4    # "feedColumns":[Ljava/lang/String;
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v11    # "cv":Landroid/content/ContentValues;
    .end local v15    # "feedQuery":Ljava/lang/String;
    .end local v16    # "msgQuery":Ljava/lang/String;
    :cond_169
    const/16 v2, 0x10

    move/from16 v0, p1

    if-ge v0, v2, :cond_17d

    .line 115
    :try_start_16f
    const-string v2, "ALTER TABLE objects ADD COLUMN aggregateLikeCount INTEGER"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 116
    const-string v2, "ALTER TABLE objects ADD COLUMN encodedAggregateLikes BLOB"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_17d
    .catch Ljava/lang/Exception; {:try_start_16f .. :try_end_17d} :catch_1b9

    .line 121
    :cond_17d
    :goto_17d
    const/16 v2, 0x12

    move/from16 v0, p1

    if-ge v0, v2, :cond_18a

    .line 122
    const-string v2, "CREATE TABLE stickers( _id integer primary key autoincrement not null, skHash integer, modifiedTimestamp integer, thumbnailHash blob, itemId blob, json text, placeable integer, chattable integer)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 124
    :cond_18a
    const/16 v2, 0x14

    move/from16 v0, p1

    if-ge v0, v2, :cond_19e

    .line 125
    const-string v2, "ALTER TABLE device ADD COLUMN appId BLOB"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 126
    const-string v2, "ALTER TABLE device ADD COLUMN scopes varchar(32)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 128
    :cond_19e
    const/16 v2, 0x15

    move/from16 v0, p1

    if-ge v0, v2, :cond_1b4

    .line 129
    const-string v2, "DROP VIEW IF EXISTS chats"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lmobisocial/omlib/db/OMSQLiteModelBuilder;->getCreateChatsSql()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 132
    :cond_1b4
    invoke-static/range {p0 .. p1}, Lmobisocial/omlib/db/OMSQLiteModelBuilder;->createIndices(Landroid/database/sqlite/SQLiteDatabase;I)V

    goto/16 :goto_64

    .line 117
    :catch_1b9
    move-exception v12

    .line 118
    .local v12, "e":Ljava/lang/Exception;
    const-string v2, "SqlModelBuilder"

    const-string v3, "Failed to add column"

    invoke-static {v2, v3, v12}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_17d

    .line 82
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_1c2
    move-exception v2

    goto/16 :goto_98
.end method
