.class Lcom/vivo/upgrade/AppUpdateJsonParser;
.super Lcom/vivo/upgrade/BaseJsonParser;
.source "AppUpdateJsonParser.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/vivo/upgrade/BaseJsonParser;-><init>()V

    .line 15
    const-string v0, "Upgrade.AppUpdateJsonParser"

    iput-object v0, p0, Lcom/vivo/upgrade/AppUpdateJsonParser;->TAG:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public parseData(Ljava/lang/String;)Ljava/lang/Object;
    .registers 9
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 20
    const/4 v1, 0x0

    .line 21
    .local v1, "info":Lcom/vivo/upgrade/AppUpdateInfo;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_db

    .line 23
    const-string v4, "Upgrade.AppUpdateJsonParser"

    invoke-static {v4, p1}, Lcom/vivo/upgrade/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v1, Lcom/vivo/upgrade/AppUpdateInfo;

    .end local v1    # "info":Lcom/vivo/upgrade/AppUpdateInfo;
    invoke-direct {v1}, Lcom/vivo/upgrade/AppUpdateInfo;-><init>()V

    .line 27
    .restart local v1    # "info":Lcom/vivo/upgrade/AppUpdateInfo;
    :try_start_11
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 28
    .local v2, "item":Lorg/json/JSONObject;
    const-string v4, "stat"

    invoke-static {v4, v2}, Lcom/vivo/upgrade/utils/JsonParserUtils;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    iput v4, v1, Lcom/vivo/upgrade/AppUpdateInfo;->stat:I

    .line 29
    const-string v4, "size"

    invoke-static {v4, v2}, Lcom/vivo/upgrade/utils/JsonParserUtils;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    iput v4, v1, Lcom/vivo/upgrade/AppUpdateInfo;->size:I

    .line 30
    const-string v4, "msg"

    invoke-static {v4, v2}, Lcom/vivo/upgrade/utils/JsonParserUtils;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/vivo/upgrade/AppUpdateInfo;->msg:Ljava/lang/String;

    .line 31
    const-string v4, "md5"

    invoke-static {v4, v2}, Lcom/vivo/upgrade/utils/JsonParserUtils;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/vivo/upgrade/AppUpdateInfo;->md5:Ljava/lang/String;

    .line 32
    const-string v4, "version"

    invoke-static {v4, v2}, Lcom/vivo/upgrade/utils/JsonParserUtils;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/vivo/upgrade/AppUpdateInfo;->version:Ljava/lang/String;

    .line 33
    const-string v4, "vercode"

    invoke-static {v4, v2}, Lcom/vivo/upgrade/utils/JsonParserUtils;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    iput v4, v1, Lcom/vivo/upgrade/AppUpdateInfo;->vercode:I

    .line 34
    const-string v4, "filename"

    invoke-static {v4, v2}, Lcom/vivo/upgrade/utils/JsonParserUtils;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/vivo/upgrade/AppUpdateInfo;->filename:Ljava/lang/String;

    .line 35
    const-string v4, "addTime"

    invoke-static {v4, v2}, Lcom/vivo/upgrade/utils/JsonParserUtils;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/vivo/upgrade/AppUpdateInfo;->addTime:Ljava/lang/String;

    .line 36
    const-string v4, "description"

    invoke-static {v4, v2}, Lcom/vivo/upgrade/utils/JsonParserUtils;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/vivo/upgrade/AppUpdateInfo;->description:Ljava/lang/String;

    .line 37
    const-string v4, "durl"

    invoke-static {v4, v2}, Lcom/vivo/upgrade/utils/JsonParserUtils;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/vivo/upgrade/AppUpdateInfo;->durl:Ljava/lang/String;

    .line 38
    const-string v4, "level"

    invoke-static {v4, v2}, Lcom/vivo/upgrade/utils/JsonParserUtils;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    iput v4, v1, Lcom/vivo/upgrade/AppUpdateInfo;->level:I

    .line 39
    const-string v4, "lowMd5"

    invoke-static {v4, v2}, Lcom/vivo/upgrade/utils/JsonParserUtils;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/vivo/upgrade/AppUpdateInfo;->lowMd5:Ljava/lang/String;

    .line 40
    const-string v4, "mode"

    invoke-static {v4, v2}, Lcom/vivo/upgrade/utils/JsonParserUtils;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    iput v4, v1, Lcom/vivo/upgrade/AppUpdateInfo;->mode:I

    .line 42
    invoke-static {}, Lcom/vivo/upgrade/utils/SharePreferenceManager;->getInstance()Lcom/vivo/upgrade/utils/SharePreferenceManager;

    move-result-object v4

    const-string v5, "com.vivo.upgrade.ikey.KEY_CHECK_MD5_FAIL"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/vivo/upgrade/utils/SharePreferenceManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_92

    .line 43
    iget v4, v1, Lcom/vivo/upgrade/AppUpdateInfo;->mode:I

    if-nez v4, :cond_92

    .line 44
    const/4 v4, 0x1

    iput v4, v1, Lcom/vivo/upgrade/AppUpdateInfo;->mode:I

    .line 47
    :cond_92
    const-string v4, "patchMd5"

    invoke-static {v4, v2}, Lcom/vivo/upgrade/utils/JsonParserUtils;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/vivo/upgrade/AppUpdateInfo;->patchMd5:Ljava/lang/String;

    .line 48
    const-string v4, "patchSize"

    invoke-static {v4, v2}, Lcom/vivo/upgrade/utils/JsonParserUtils;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    iput v4, v1, Lcom/vivo/upgrade/AppUpdateInfo;->patchSize:I

    .line 49
    const-string v4, "patchUrl"

    invoke-static {v4, v2}, Lcom/vivo/upgrade/utils/JsonParserUtils;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/vivo/upgrade/AppUpdateInfo;->patchUrl:Ljava/lang/String;

    .line 50
    const-string v4, "patchFilename"

    invoke-static {v4, v2}, Lcom/vivo/upgrade/utils/JsonParserUtils;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/vivo/upgrade/AppUpdateInfo;->patchFilename:Ljava/lang/String;

    .line 51
    const-string v4, "logswitch"

    invoke-static {v4, v2}, Lcom/vivo/upgrade/utils/JsonParserUtils;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    iput v4, v1, Lcom/vivo/upgrade/AppUpdateInfo;->logswitch:I

    .line 52
    const-string v4, "sendTitle"

    invoke-static {v4, v2}, Lcom/vivo/upgrade/utils/JsonParserUtils;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/vivo/upgrade/AppUpdateInfo;->sendTitle:Ljava/lang/String;

    .line 53
    const-string v4, "sendContent"

    invoke-static {v4, v2}, Lcom/vivo/upgrade/utils/JsonParserUtils;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/vivo/upgrade/AppUpdateInfo;->sendContent:Ljava/lang/String;

    .line 55
    const-string v4, "gap"

    invoke-static {v4, v2}, Lcom/vivo/upgrade/utils/JsonParserUtils;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v3

    .line 56
    .local v3, "requestInterval":I
    if-lez v3, :cond_db

    .line 57
    invoke-static {}, Lcom/vivo/upgrade/utils/SharePreferenceManager;->getInstance()Lcom/vivo/upgrade/utils/SharePreferenceManager;

    move-result-object v4

    const-string v5, "com.vivo.upgrade.ikey.UPDATE_REQUEST_INTERVAL"

    invoke-virtual {v4, v5, v3}, Lcom/vivo/upgrade/utils/SharePreferenceManager;->putInt(Ljava/lang/String;I)V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_db} :catch_dc

    .line 65
    .end local v2    # "item":Lorg/json/JSONObject;
    .end local v3    # "requestInterval":I
    :cond_db
    :goto_db
    return-object v1

    .line 60
    :catch_dc
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_db
.end method
