.class public Lcom/vivo/sdkplugin/data/AccountInfoProvider;
.super Landroid/content/ContentProvider;


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.accountinfo"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.accountinfo"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final SDKEVENT_CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.sdkeventinfo"

.field public static final SDK_CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.sdkaccountinfo"

.field private static a:Ljava/util/HashMap;

.field private static b:Ljava/util/HashMap;

.field private static c:Ljava/util/HashMap;

.field private static final d:Landroid/content/UriMatcher;


# instance fields
.field private e:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.vivo.sdkplugin.accountinfo"

    const-string v2, "accountinfo"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.vivo.sdkplugin.accountinfo"

    const-string v2, "accountinfo/#"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.vivo.sdkplugin.accountinfo"

    const-string v2, "sdkaccountinfo"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.vivo.sdkplugin.accountinfo"

    const-string v2, "sdkeventinfo"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->a:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->a:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->a:Ljava/util/HashMap;

    const-string v1, "uuid"

    const-string v2, "uuid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->a:Ljava/util/HashMap;

    const-string v1, "vivoToken"

    const-string v2, "vivoToken"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->a:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->a:Ljava/util/HashMap;

    const-string v1, "phonenum"

    const-string v2, "phonenum"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->a:Ljava/util/HashMap;

    const-string v1, "email"

    const-string v2, "email"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->a:Ljava/util/HashMap;

    const-string v1, "openid"

    const-string v2, "openid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->b:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->b:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->b:Ljava/util/HashMap;

    const-string v1, "vivoToken"

    const-string v2, "vivoToken"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->b:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->b:Ljava/util/HashMap;

    const-string v1, "pacakgefrom"

    const-string v2, "pacakgefrom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->b:Ljava/util/HashMap;

    const-string v1, "openid"

    const-string v2, "openid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->c:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->c:Ljava/util/HashMap;

    const-string v1, "eventid"

    const-string v2, "eventid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->c:Ljava/util/HashMap;

    const-string v1, "model"

    const-string v2, "model"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->c:Ljava/util/HashMap;

    const-string v1, "imei"

    const-string v2, "imei"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->c:Ljava/util/HashMap;

    const-string v1, "time"

    const-string v2, "time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->c:Ljava/util/HashMap;

    const-string v1, "vercode"

    const-string v2, "vercode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->c:Ljava/util/HashMap;

    const-string v1, "param"

    const-string v2, "param"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->c:Ljava/util/HashMap;

    const-string v1, "pacakgefrom"

    const-string v2, "pacakgefrom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->c:Ljava/util/HashMap;

    const-string v1, "openid"

    const-string v2, "openid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "content://com.vivo.sdkplugin.accountinfo/accountinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 10

    const/4 v2, 0x0

    sget-object v0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->d:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_5c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown URI "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1f
    const-string v0, "accountinfo"

    :goto_21
    iget-object v1, p0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->e:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    :try_start_27
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    array-length v1, p2
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2b} :catch_47
    .catchall {:try_start_27 .. :try_end_2b} :catchall_51

    :goto_2b
    if-lt v2, v1, :cond_3e

    :try_start_2d
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_33} :catch_56
    .catchall {:try_start_2d .. :try_end_33} :catchall_51

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move v0, v1

    :goto_37
    return v0

    :pswitch_38
    const-string v0, "sdkaccountinfo"

    goto :goto_21

    :pswitch_3b
    const-string v0, "sdkeventinfo"

    goto :goto_21

    :cond_3e
    const/4 v4, 0x0

    :try_start_3f
    aget-object v5, p2, v2

    invoke-virtual {v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_44} :catch_56
    .catchall {:try_start_3f .. :try_end_44} :catchall_51

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :catch_47
    move-exception v0

    move-object v1, v0

    move v0, v2

    :goto_4a
    :try_start_4a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_51

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_37

    :catchall_51
    move-exception v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v0

    :catch_56
    move-exception v0

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    goto :goto_4a

    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1f
        :pswitch_38
        :pswitch_3b
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->e:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->d:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_46

    :pswitch_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown URI "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_25
    const-string v1, "accountinfo"

    invoke-virtual {v0, v1, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :goto_2b
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return v0

    :pswitch_37
    const-string v1, "sdkaccountinfo"

    invoke-virtual {v0, v1, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_2b

    :pswitch_3e
    const-string v1, "sdkeventinfo"

    invoke-virtual {v0, v1, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_2b

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_25
        :pswitch_10
        :pswitch_37
        :pswitch_3e
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->d:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_2a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown URI"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1e
    const-string v0, "vnd.android.cursor.dir/vnd.accountinfo"

    :goto_20
    return-object v0

    :pswitch_21
    const-string v0, "vnd.android.cursor.item/vnd.accountinfo"

    goto :goto_20

    :pswitch_24
    const-string v0, "vnd.android.cursor.item/vnd.sdkaccountinfo"

    goto :goto_20

    :pswitch_27
    const-string v0, "vnd.android.cursor.item/vnd.sdkeventinfo"

    goto :goto_20

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 10

    const/4 v6, 0x0

    sget-object v0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.vivo.sdkplugin.accountinfo"

    const-string v2, "sdkeventinfo"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz p2, :cond_6c

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    :goto_12
    iget-object v1, p0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->e:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez v1, :cond_20

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/data/AccountInfoDbHelper;->a(Landroid/content/Context;)Lcom/vivo/sdkplugin/data/AccountInfoDbHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->e:Landroid/database/sqlite/SQLiteOpenHelper;

    :cond_20
    iget-object v1, p0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->e:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sget-object v1, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->d:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const-string v2, "AccountInfoProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initialValues"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "code"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v1, :pswitch_data_b0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown URI "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "code"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6c
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    goto :goto_12

    :pswitch_72
    const-string v1, "accountinfo"

    sget-object v2, Lcom/vivo/sdkplugin/data/AccountInfoDbHelper$AccountInfo;->CONTENT_ID_URI_BASE:Landroid/net/Uri;

    :goto_76
    invoke-virtual {v3, v1, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_9a

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-object v0

    :pswitch_90
    const-string v1, "sdkaccountinfo"

    sget-object v2, Lcom/vivo/sdkplugin/data/AccountInfoDbHelper$AccountInfo;->SDK_CONTENT_ID_URI_BASE:Landroid/net/Uri;

    goto :goto_76

    :pswitch_95
    const-string v1, "sdkeventinfo"

    sget-object v2, Lcom/vivo/sdkplugin/data/AccountInfoDbHelper$AccountInfo;->SDKEVENT_CONTENT_ID_URI_BASE:Landroid/net/Uri;

    goto :goto_76

    :cond_9a
    new-instance v0, Landroid/database/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to insert row into "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_72
        :pswitch_72
        :pswitch_90
        :pswitch_95
    .end packed-switch
.end method

.method public onCreate()Z
    .registers 3

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/data/AccountInfoDbHelper;->a(Landroid/content/Context;)Lcom/vivo/sdkplugin/data/AccountInfoDbHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->e:Landroid/database/sqlite/SQLiteOpenHelper;

    iget-object v0, p0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->e:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->e:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14

    const/4 v5, 0x0

    const-string v0, "AccountInfoProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "query"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v1, "AccountInfoProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "url.getPathSegments()"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sUriMatcher.match(url)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->d:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->d:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_fe

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown URI "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_60
    const-string v1, "accountinfo"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    sget-object v1, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    :goto_6a
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_fb

    const-string v7, "_id DESC"

    :goto_72
    iget-object v1, p0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->e:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v0

    :pswitch_8c
    const-string v1, "accountinfo"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    sget-object v1, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "_id="

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_6a

    :pswitch_b4
    const-string v1, "sdkaccountinfo"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    sget-object v1, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    const-string v1, "AccountInfoProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "url.getPathSegments()"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    :pswitch_d7
    const-string v1, "sdkeventinfo"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    sget-object v1, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    const-string v1, "AccountInfoProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "url.getPathSegments()"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6a

    :cond_fb
    move-object v7, p5

    goto/16 :goto_72

    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_60
        :pswitch_8c
        :pswitch_b4
        :pswitch_d7
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->e:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v0, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->d:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_e0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown URI "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_25
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "_id = "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_5e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " AND "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5e
    const-string v2, "accountinfo"

    invoke-virtual {v1, v2, p2, v0, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :goto_64
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/data/AccountInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return v0

    :pswitch_71
    const-string v0, "accountinfo"

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_64

    :pswitch_78
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "_id = "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_a5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " AND "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a5
    const-string v0, "sdkaccountinfo"

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_64

    :pswitch_ac
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "_id = "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_d9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " AND "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d9
    const-string v0, "sdkeventinfo"

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_64

    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_71
        :pswitch_25
        :pswitch_78
        :pswitch_ac
    .end packed-switch
.end method
