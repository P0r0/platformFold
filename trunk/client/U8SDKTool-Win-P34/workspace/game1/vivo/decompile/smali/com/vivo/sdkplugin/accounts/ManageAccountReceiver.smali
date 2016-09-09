.class public Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static final KEY_EVENT_ID:Ljava/lang/String; = "eventid"

.field public static final KEY_PARAM:Ljava/lang/String; = "param"

.field public static final PARAM_KEY_PACAKGEFROM:Ljava/lang/String; = "pacakgefrom"

.field public static final PARAM_KEY_TIME:Ljava/lang/String; = "time"

.field public static final SDKEVENTACCOUNTINFO_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/HandlerThread;

.field private c:Lcom/vivo/sdkplugin/accounts/b;

.field private d:Landroid/os/Handler;

.field public mStringEventSDK:Ljava/lang/String;

.field public mStringItem:Ljava/lang/String;

.field public mStringTotal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.vivo.sdkplugin.accountinfo/sdkeventinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;->SDKEVENTACCOUNTINFO_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;->mStringItem:Ljava/lang/String;

    const-string v0, "["

    iput-object v0, p0, Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;->mStringTotal:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;->mStringEventSDK:Ljava/lang/String;

    iput-object v1, p0, Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;->b:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;->c:Lcom/vivo/sdkplugin/accounts/b;

    iput-object v1, p0, Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;)Ljava/util/Map;
    .registers 8

    const/4 v3, 0x1

    const/4 v5, 0x0

    const-string v0, "ManageAccountReceiver"

    const-string v1, "getAccountInfo()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "sdkeventdata"

    iget-object v1, p0, Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;->mStringEventSDK:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;

    iget-object v1, p0, Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v5, v5}, Lcom/vivo/sdkplugin/net/HttpConnectSDK;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_COMMIT_URL:Ljava/lang/String;

    new-instance v6, Lcom/vivo/sdkplugin/accounts/c;

    const/4 v4, 0x0

    invoke-direct {v6, p0, v4}, Lcom/vivo/sdkplugin/accounts/c;-><init>(Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;B)V

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->connect(Ljava/lang/String;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponedSDK;)V

    return-object v2
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ManageAccountReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MsgPushSerReceiver.onReceive, action="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    if-nez v0, :cond_9c

    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    :goto_27
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-static {p1}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->getConnectionType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9b

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;->queryValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;->mStringEventSDK:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;->mStringEventSDK:Ljava/lang/String;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    const-string v0, "ManageAccountReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doInBackground,msg=0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;->b:Landroid/os/HandlerThread;

    if-nez v0, :cond_75

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "com.bbk.ACCOUNT_INFO"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;->b:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/vivo/sdkplugin/accounts/b;

    iget-object v1, p0, Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/accounts/b;-><init>(Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;->c:Lcom/vivo/sdkplugin/accounts/b;

    :cond_75
    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;->d:Landroid/os/Handler;

    if-nez v0, :cond_80

    new-instance v0, Lcom/vivo/sdkplugin/accounts/d;

    invoke-direct {v0, p0, v4}, Lcom/vivo/sdkplugin/accounts/d;-><init>(Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;B)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;->d:Landroid/os/Handler;

    :cond_80
    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;->c:Lcom/vivo/sdkplugin/accounts/b;

    invoke-virtual {v0, v4}, Lcom/vivo/sdkplugin/accounts/b;->sendEmptyMessage(I)Z

    :cond_85
    const-string v0, "ManageAccountReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "queryValue()"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;->mStringEventSDK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9b
    return-void

    :cond_9c
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    goto :goto_27
.end method

.method public queryValue()Ljava/lang/String;
    .registers 14

    const/4 v11, 0x0

    const/4 v9, 0x0

    :try_start_2
    new-instance v0, Lcom/vivo/sdkplugin/data/AccountEventInfoDbHelper;

    iget-object v1, p0, Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/sdkplugin/data/AccountEventInfoDbHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/data/AccountEventInfoDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_36

    move-result-object v0

    :try_start_d
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v1, "sdkeventinfo"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1d} :catch_136

    move-result-object v1

    move-object v8, v1

    :goto_1f
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-eqz v8, :cond_2d

    if-lez v12, :cond_2d

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move v10, v11

    :goto_2b
    if-lt v10, v12, :cond_3e

    :cond_2d
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;->mStringTotal:Ljava/lang/String;

    return-object v0

    :catch_36
    move-exception v0

    move-object v1, v0

    move-object v0, v9

    :goto_39
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v8, v9

    goto :goto_1f

    :cond_3e
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "sdkeventinfo"

    const-string v3, "_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object v2, v4, v11

    move-object v2, v9

    move-object v5, v9

    move-object v6, v9

    move-object v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v2, :cond_ea

    if-lez v1, :cond_ea

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :try_start_64
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "eventid"

    const-string v4, "eventid"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "imei"

    const-string v4, "imei"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "openid"

    const-string v4, "openid"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "time"

    const-string v4, "time"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "vercode"

    const-string v4, "vercode"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "model"

    const-string v4, "model"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "pacakgefrom"

    const-string v4, "pacakgefrom"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "param"

    const-string v4, "param"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;->mStringItem:Ljava/lang/String;
    :try_end_e7
    .catch Lorg/json/JSONException; {:try_start_64 .. :try_end_e7} :catch_113

    :goto_e7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_ea
    add-int/lit8 v1, v12, -0x1

    if-ge v10, v1, :cond_118

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;->mStringTotal:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;->mStringItem:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;->mStringTotal:Ljava/lang/String;

    :goto_10b
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto/16 :goto_2b

    :catch_113
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_e7

    :cond_118
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;->mStringTotal:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;->mStringItem:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/sdkplugin/accounts/ManageAccountReceiver;->mStringTotal:Ljava/lang/String;

    goto :goto_10b

    :catch_136
    move-exception v1

    goto/16 :goto_39
.end method
