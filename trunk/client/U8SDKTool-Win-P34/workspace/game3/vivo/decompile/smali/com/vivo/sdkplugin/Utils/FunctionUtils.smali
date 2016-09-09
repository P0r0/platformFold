.class public Lcom/vivo/sdkplugin/Utils/FunctionUtils;
.super Ljava/lang/Object;


# static fields
.field public static final ACCOUNTINFO_CONTENT_URI:Landroid/net/Uri;

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "BBKOnLineService"

.field public static DURINGTIME_PARAM:J = 0x0L

.field public static final FROM:Ljava/lang/String; = "game"

.field public static GAME_TOTAL_TIME_PARAM:J = 0x0L

.field public static final KEY_EVENT_ID:Ljava/lang/String; = "eventid"

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_PARAM:Ljava/lang/String; = "param"

.field public static final KEY_PARAM_SEPERATER:Ljava/lang/String; = "*#*"

.field public static final SDKACCOUNTINFO_CONTENT_URI:Landroid/net/Uri;

.field public static final SDKEVENTACCOUNTINFO_CONTENT_URI:Landroid/net/Uri;

.field public static final SHPREF_NAME:Ljava/lang/String; = "vivoaccountsp"

.field public static STARTTIME_PARAM:J = 0x0L

.field public static START_LOGIN_TIME_PARAM:J = 0x0L

.field public static final TABLE_SDKACCOUNT_INFO:Ljava/lang/String; = "sdkaccountinfo"

.field public static mFilePath:Ljava/lang/String;

.field public static mFilePathRoot:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide/16 v2, 0x0

    const-string v0, "content://com.bbk.account.accountinfo/accountinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->ACCOUNTINFO_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.vivo.account.base.accountinfo/sdkaccountinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->SDKACCOUNTINFO_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.vivo.account.base.accountinfo/sdkeventinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->SDKEVENTACCOUNTINFO_CONTENT_URI:Landroid/net/Uri;

    sput-wide v2, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->STARTTIME_PARAM:J

    sput-wide v2, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->DURINGTIME_PARAM:J

    sput-wide v2, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->START_LOGIN_TIME_PARAM:J

    sput-wide v2, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->GAME_TOTAL_TIME_PARAM:J

    const-string v0, "sdkaccountinfo.db"

    sput-object v0, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->mFilePath:Ljava/lang/String;

    const-string v0, ".vivoAccountsdk"

    sput-object v0, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->mFilePathRoot:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendGreneralInfomation(Landroid/content/ContentValues;Landroid/content/Context;)V
    .registers 8

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    new-instance v1, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v1, p1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_96

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getOpenId()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2d

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_88

    :cond_2d
    const-string v0, "imei"

    const-string v3, "012345678987654"

    invoke-virtual {p0, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_34
    const-string v3, "FunctionUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "openid == null"

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_8e

    const/4 v0, 0x1

    :goto_40
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_5d

    const-string v0, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    :cond_5d
    const-string v0, "openid"

    const-string v1, "\u2014\u2014"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_64
    const-string v0, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "vercode"

    const-string v1, "5.0"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-virtual {p0, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pacakgefrom"

    invoke-static {p1}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_88
    const-string v3, "imei"

    invoke-virtual {p0, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    :cond_8e
    const/4 v0, 0x0

    goto :goto_40

    :cond_90
    const-string v0, "openid"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_64

    :cond_96
    const-string v0, "FunctionUtils"

    const-string v1, "appendGreneralInfomation, can not get TelephonyManager instance"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public static changeAccountPwd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    :try_start_0
    new-instance v0, Lcom/vivo/sdkplugin/data/DBHelper;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/data/DBHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/data/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "pwd"

    invoke-static {p2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->encryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "accountinfo"

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->encryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "------------has update row count:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;->exportDB()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_49

    :goto_48
    return-void

    :catch_49
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_48
.end method

.method public static checkShowTempUpdateDialog(Landroid/content/Context;)Z
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v3, p0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGameFirstNotice()Z

    move-result v4

    const-string v0, "FunctionUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "----game is firstNotice: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGameFirstCheckNoticeTime()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_9a

    const-wide/32 v8, 0xf731400

    cmp-long v0, v6, v8

    if-lez v0, :cond_9a

    move v0, v1

    :goto_37
    const-string v5, "FunctionUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "----game is afterThreeDay: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGameLastTempUpNoticeTime()J

    move-result-wide v6

    const-string v5, "FunctionUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "----game is lastNoTime: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "FunctionUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "----cur time: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_9c

    invoke-virtual {v3, v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setGameFirstNotice(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setGameFirstCheckNoticeTime(Ljava/lang/Long;)V

    :cond_99
    :goto_99
    return v2

    :cond_9a
    move v0, v2

    goto :goto_37

    :cond_9c
    if-eqz v0, :cond_99

    new-instance v0, Landroid/text/format/Time;

    const-string v3, "GMT+8"

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    iget v3, v0, Landroid/text/format/Time;->year:I

    iget v4, v0, Landroid/text/format/Time;->month:I

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    new-instance v5, Landroid/text/format/Time;

    const-string v8, "GMT+8"

    invoke-direct {v5, v8}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/text/format/Time;->set(J)V

    iget v6, v5, Landroid/text/format/Time;->year:I

    iget v7, v5, Landroid/text/format/Time;->month:I

    iget v5, v5, Landroid/text/format/Time;->monthDay:I

    if-ne v3, v6, :cond_c4

    if-ne v7, v4, :cond_c4

    if-eq v5, v0, :cond_99

    :cond_c4
    move v2, v1

    goto :goto_99
.end method

.method public static computeStringLength(Ljava/lang/CharSequence;)I
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    :goto_8
    if-lt v1, v2, :cond_b

    :cond_a
    return v0

    :cond_b
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_20

    add-int/lit8 v0, v0, 0x1

    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_20
    add-int/lit8 v0, v0, 0x2

    goto :goto_1d
.end method

.method public static continueLoad(II)Z
    .registers 3

    if-ge p0, p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, ""

    :goto_8
    return-object v0

    :cond_9
    const/4 v2, 0x0

    :try_start_a
    new-instance v1, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_1b

    :try_start_14
    const-string v0, "34567BKOnLineS123456789ABBCDErvi"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/SimpleCrypto;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_22

    move-result-object v0

    goto :goto_8

    :catch_1b
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_1e
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    :catch_22
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_1e
.end method

.method public static delelteAccountInfo(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGamePackageName()Ljava/lang/String;

    new-instance v0, Lcom/vivo/sdkplugin/data/DBHelper;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/data/DBHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/data/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "accountinfo"

    const-string v2, "name=? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->encryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "------------has delete row count:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public static delete(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 5

    const/4 v2, 0x0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->SDKACCOUNTINFO_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static deleteAllTempUser(Landroid/content/Context;)V
    .registers 7

    :try_start_0
    new-instance v0, Lcom/vivo/sdkplugin/data/DBHelper;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/data/DBHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/data/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "accountinfo"

    const-string v2, "visitor=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "true"

    invoke-static {v5}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->encryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "------------has delete tempUser  row count:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    :goto_32
    return-void

    :catch_33
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_32
.end method

.method public static deleteTempUser(Landroid/content/Context;)V
    .registers 7

    new-instance v0, Lcom/vivo/sdkplugin/data/DBHelper;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/data/DBHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/data/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "accountinfo"

    const-string v2, "visitor=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "true"

    invoke-static {v5}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->encryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "------------has delete row count:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vivo/sdkplugin/Utils/j;

    invoke-direct {v2, p0}, Lcom/vivo/sdkplugin/Utils/j;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public static dipToPix(Landroid/content/Context;I)I
    .registers 10

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    const/16 v0, 0x1e0

    if-ne v1, v0, :cond_47

    add-int/lit8 v0, p1, 0x6e

    :goto_14
    const-string v3, "sdx"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "screenWidth:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "dip: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " density: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pix\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_47
    int-to-float v0, p1

    mul-float/2addr v0, v2

    float-to-double v4, v0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v0, v4

    goto :goto_14
.end method

.method public static encryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    const-string v0, "34567BKOnLineS123456789ABBCDErvi"

    invoke-static {v0, p0}, Lcom/vivo/sdkplugin/Utils/SimpleCrypto;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_15

    move-result-object v1

    :try_start_7
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_1d

    move-result-object v0

    :goto_14
    return-object v0

    :catch_15
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_19
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14

    :catch_1d
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_19
.end method

.method public static exist(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_3c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->mFilePathRoot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_38} :catch_51

    move-result v1

    if-eqz v1, :cond_3c

    const/4 v0, 0x1

    :cond_3c
    :goto_3c
    const-string v1, "FunctionUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--------sd\u5361\u4e0a\u662f\u5426\u5b58\u5728\u6570\u636e\u5e93----------"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catch_51
    move-exception v1

    goto :goto_3c
.end method

.method public static exportDB(Landroid/content/Context;)V
    .registers 9

    const-string v0, "FunctionUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "---------exportDB sd canWrite: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1c
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_10a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "data/data/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/databases/sdkaccountinfo.db"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->mFilePathRoot:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_71

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_71} :catch_111

    :cond_71
    :try_start_71
    new-instance v0, Ljava/io/FileWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->mFilePath:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-direct {v0, v2, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_8d} :catch_10b
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_8d} :catch_111

    :goto_8d
    :try_start_8d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->mFilePathRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "FunctionUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "currentDB"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "backupDB"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_10a

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_10a
    :goto_10a
    return-void

    :catch_10b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_10f} :catch_111

    goto/16 :goto_8d

    :catch_111
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10a
.end method

.method public static getAccountInfo(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-static {p1}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->getNativeAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {v1, v0, p0}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public static getDeviceIMEI(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    :cond_1a
    const-string v0, "012345678987654"

    :cond_1c
    return-object v0
.end method

.method public static getEmmcId()Ljava/lang/String;
    .registers 4

    const-string v0, ""

    :try_start_2
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/block/mmcblk0/device/cid"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_12} :catch_14

    move-result-object v0

    :cond_13
    :goto_13
    return-object v0

    :catch_14
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    :try_start_1e
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/ufs/ufsid"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_2e} :catch_30

    move-result-object v0

    goto :goto_13

    :catch_30
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13
.end method

.method public static getEndTime(Landroid/content/Context;)J
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->STARTTIME_PARAM:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->DURINGTIME_PARAM:J

    return-wide v0
.end method

.method public static getImageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v0

    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    move-object v1, v0

    const-string v0, "imageName.jpg"

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method

.method public static getNativeAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "BBKOnLineService"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_3

    array-length v2, v1

    if-lez v2, :cond_3

    const/4 v0, 0x0

    aget-object v0, v1, v0

    goto :goto_3
.end method

.method public static getParamsList(Ljava/util/HashMap;)Ljava/util/ArrayList;
    .registers 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_14

    return-object v1

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_27

    const-string v0, ""

    :cond_27
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static getSecretAccount(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v5, 0x1

    const/4 v0, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x0

    const-string v1, ""

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_102

    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_61

    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_5d

    add-int/lit8 v3, v2, -0x3

    if-le v3, v0, :cond_5e

    :goto_26
    new-instance v2, Ljava/lang/StringBuilder;

    aget-object v3, v1, v4

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "**"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, v1, v4

    aget-object v3, v1, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_5d
    :goto_5d
    return-object p0

    :cond_5e
    add-int/lit8 v0, v2, -0x3

    goto :goto_26

    :cond_61
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_8a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "****"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_5d

    :cond_8a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_bd

    add-int/lit8 v2, v1, -0x3

    if-le v2, v0, :cond_ba

    :goto_94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "**"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_5d

    :cond_ba
    add-int/lit8 v0, v1, -0x3

    goto :goto_94

    :cond_bd
    if-ne v1, v3, :cond_e6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_5d

    :cond_e6
    const/4 v0, 0x2

    if-ne v1, v0, :cond_5d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_5d

    :cond_102
    move-object p0, v1

    goto/16 :goto_5d
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "vivoaccountsp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUuid(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string v0, "uuid"

    invoke-static {v0, p0}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->getAccountInfo(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getloginStartTime(Landroid/content/Context;)J
    .registers 3

    sget-wide v0, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->START_LOGIN_TIME_PARAM:J

    return-wide v0
.end method

.method public static hasSimAndEnable(Landroid/content/Context;)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "airplane_mode_on"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_22

    move v1, v2

    :goto_17
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-ne v0, v2, :cond_24

    move v0, v2

    :goto_1e
    or-int/2addr v0, v1

    if-eqz v0, :cond_26

    :goto_21
    return v3

    :cond_22
    move v1, v3

    goto :goto_17

    :cond_24
    move v0, v3

    goto :goto_1e

    :cond_26
    move v3, v2

    goto :goto_21
.end method

.method public static hideSomeCharOfEmail(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v2, 0x4

    const/4 v5, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_d7

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v5, :cond_16

    const-string v0, "*"

    :goto_15
    return-object v0

    :cond_16
    const-string v0, ""

    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3d

    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3d

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object p0, v1

    :cond_3d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v5, :cond_53

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "*"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_53
    div-int/lit8 v1, v4, 0x2

    if-le v1, v2, :cond_58

    move v1, v2

    :cond_58
    sub-int v2, v4, v1

    div-int/lit8 v4, v2, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int v2, v4, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v2, ""

    move v8, v3

    move-object v3, v2

    move v2, v8

    :goto_6b
    if-lt v2, v1, :cond_c1

    add-int/2addr v1, v4

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FunctionUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "start+middle+end+estr="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "FunctionUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "hideString="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15

    :cond_c1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "*"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6b

    :cond_d7
    const/4 v0, 0x0

    goto/16 :goto_15
.end method

.method public static hideSomeCharOfNameOrPhone(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x4

    const/4 v2, 0x0

    if-eqz p0, :cond_90

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v1, 0x1

    if-ne v3, v1, :cond_16

    const-string v0, "*"

    :goto_15
    return-object v0

    :cond_16
    div-int/lit8 v1, v3, 0x2

    if-le v1, v0, :cond_92

    :goto_1a
    sub-int v1, v3, v0

    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int v1, v3, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v1, ""

    move v7, v2

    move-object v2, v1

    move v1, v7

    :goto_2d
    if-lt v1, v0, :cond_7a

    add-int/2addr v0, v3

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FunctionUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "start+middle+end+estr="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "FunctionUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "hideString="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_7a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "*"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_90
    const/4 v0, 0x0

    goto :goto_15

    :cond_92
    move v0, v1

    goto :goto_1a
.end method

.method public static hideSomeCharOfPassword(Ljava/lang/String;)[Ljava/lang/String;
    .registers 11

    const/4 v9, 0x2

    const/4 v1, 0x0

    const/4 v8, 0x1

    if-eqz p0, :cond_96

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v8, :cond_1c

    new-array v0, v9, [Ljava/lang/String;

    const-string v2, "*"

    aput-object v2, v0, v1

    aput-object p0, v0, v8

    :goto_1b
    return-object v0

    :cond_1c
    add-int/lit8 v3, v0, -0x2

    invoke-virtual {p0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, ""

    move-object v2, v0

    move v0, v1

    :goto_2c
    if-lt v0, v3, :cond_80

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v0, "FunctionUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "start+middle+end+estr="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FunctionUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "hideString="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v9, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    aput-object v3, v0, v8

    goto :goto_1b

    :cond_80
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "*"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_96
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static ifShowTempUpdateDialog(Landroid/content/Context;)Z
    .registers 9

    const/4 v0, 0x0

    new-instance v1, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGameFirstNotice()Z

    move-result v2

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getIsRemindUpgrade()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getIsForceUpgrade()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FunctionUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "---- firstNotice: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "FunctionUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "---- isRemindUpgrade: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "FunctionUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "---- isForceUpgrade: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_68

    invoke-virtual {v1, v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setGameFirstNotice(Z)V

    :cond_53
    :goto_53
    const-string v1, "FunctionUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "---- canShow: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_68
    const-string v1, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    if-eqz v1, :cond_53

    const/4 v0, 0x1

    goto :goto_53
.end method

.method public static importDB(Landroid/content/Context;)V
    .registers 9

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_a3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->mFilePathRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/databases/sdkaccountinfo.db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "------------currentDB:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " backupDB: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a3

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a3} :catch_a4

    :cond_a3
    :goto_a3
    return-void

    :catch_a4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a3
.end method

.method public static isEmail(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->computeStringLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_1c

    const/16 v2, 0x32

    if-gt v1, v2, :cond_1c

    const-string v1, "^[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]\\.[a-zA-Z][a-zA-Z\\.]*[a-zA-Z]$"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0
.end method

.method public static isNull(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public static isPhone(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->isNull(Ljava/lang/String;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public static isRestrictString(Ljava/lang/String;I)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v1

    move v2, v1

    move v3, v1

    :goto_9
    if-lt v4, v5, :cond_d

    move v0, v1

    :cond_c
    return v0

    :cond_d
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x7f

    if-ge v6, v7, :cond_17

    if-gez v6, :cond_28

    :cond_17
    add-int/lit8 v2, v2, 0x1

    :goto_19
    mul-int/lit8 v6, v2, 0x3

    add-int/2addr v6, v3

    add-int/lit8 v7, p1, 0x1

    if-eq v6, v7, :cond_c

    mul-int/lit8 v6, v2, 0x3

    add-int/2addr v6, v3

    if-gt v6, p1, :cond_c

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_19
.end method

.method public static isVivoAccountLogin(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->getNativeAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public static query(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->SDKACCOUNTINFO_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "pacakgefrom = ? "

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->encryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v1, :cond_28

    if-lez v0, :cond_28

    move v0, v6

    :goto_24
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v0

    :cond_28
    move v0, v7

    goto :goto_24
.end method

.method public static queryAccountPwd(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v8, 0x0

    :try_start_1
    new-instance v0, Lcom/vivo/sdkplugin/data/DBHelper;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/data/DBHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/data/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "accountinfo"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "pwd"

    aput-object v4, v2, v3

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->encryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_39

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_39

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_38
    return-object v0

    :cond_39
    if-eqz v1, :cond_3e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3e
    if-eqz v0, :cond_43

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_43} :catch_45

    :cond_43
    :goto_43
    move-object v0, v8

    goto :goto_38

    :catch_45
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_43
.end method

.method public static queryAllExcpTemp([Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 13

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-string v0, "FunctionUtils"

    const-string v1, "-----queryAllExceptTemp() enter-----"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_9
    new-instance v0, Lcom/vivo/sdkplugin/data/DBHelper;

    invoke-direct {v0, p1}, Lcom/vivo/sdkplugin/data/DBHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/data/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_11} :catch_13d
    .catchall {:try_start_9 .. :try_end_11} :catchall_14e

    move-result-object v0

    :try_start_12
    const-string v1, "accountinfo"

    const-string v3, "visitor=?"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "false"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->encryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "name"

    const/4 v6, 0x0

    const-string v7, "_id DESC"

    move-object v2, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2f} :catch_15b
    .catchall {:try_start_12 .. :try_end_2f} :catchall_14e

    move-result-object v3

    if-eqz v3, :cond_171

    :try_start_32
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_171

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3d} :catch_162
    .catchall {:try_start_32 .. :try_end_3d} :catchall_156

    move v1, v9

    :goto_3e
    :try_start_3e
    array-length v4, p0

    if-lt v1, v4, :cond_fe

    :cond_41
    new-instance v1, Lcom/vivo/sdkplugin/model/MAccountInfo;

    invoke-direct {v1}, Lcom/vivo/sdkplugin/model/MAccountInfo;-><init>()V

    const/4 v4, 0x0

    aget-object v4, p0, v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vivo/sdkplugin/model/MAccountInfo;->setName(Ljava/lang/String;)V

    const/4 v4, 0x1

    aget-object v4, p0, v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vivo/sdkplugin/model/MAccountInfo;->setOpenid(Ljava/lang/String;)V

    const/4 v4, 0x2

    aget-object v4, p0, v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vivo/sdkplugin/model/MAccountInfo;->setVivoToken(Ljava/lang/String;)V

    const/4 v4, 0x3

    aget-object v4, p0, v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vivo/sdkplugin/model/MAccountInfo;->setId(Ljava/lang/String;)V

    const/4 v4, 0x4

    aget-object v4, p0, v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vivo/sdkplugin/model/MAccountInfo;->setPackageName(Ljava/lang/String;)V

    const/4 v4, 0x5

    aget-object v4, p0, v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vivo/sdkplugin/model/MAccountInfo;->setVisitor(Ljava/lang/String;)V

    const/4 v4, 0x6

    aget-object v4, p0, v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vivo/sdkplugin/model/MAccountInfo;->setUuid(Ljava/lang/String;)V

    const/4 v4, 0x7

    aget-object v4, p0, v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vivo/sdkplugin/model/MAccountInfo;->setLoginTime(Ljava/lang/String;)V

    const/16 v4, 0x8

    aget-object v4, p0, v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vivo/sdkplugin/model/MAccountInfo;->setPwd(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_ef} :catch_169
    .catchall {:try_start_3e .. :try_end_ef} :catchall_156

    move-result v1

    if-nez v1, :cond_41

    move-object v1, v2

    :goto_f3
    if-eqz v3, :cond_f8

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_f8
    :goto_f8
    if-eqz v0, :cond_fd

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_fd
    return-object v1

    :cond_fe
    :try_start_fe
    aget-object v4, p0, v1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "----------------"

    invoke-static {v7}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    const-string v7, "FunctionUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "index: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " key: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v6}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_139} :catch_169
    .catchall {:try_start_fe .. :try_end_139} :catchall_156

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3e

    :catch_13d
    move-exception v0

    move-object v1, v8

    move-object v2, v8

    :goto_140
    :try_start_140
    const-string v3, "FunctionUtils"

    const-string v4, "Cannot process all local msgs "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_147
    .catchall {:try_start_140 .. :try_end_147} :catchall_158

    if-eqz v2, :cond_16f

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    goto :goto_f8

    :catchall_14e
    move-exception v0

    move-object v3, v8

    :goto_150
    if-eqz v3, :cond_155

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_155
    throw v0

    :catchall_156
    move-exception v0

    goto :goto_150

    :catchall_158
    move-exception v0

    move-object v3, v2

    goto :goto_150

    :catch_15b
    move-exception v1

    move-object v2, v8

    move-object v10, v8

    move-object v8, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_140

    :catch_162
    move-exception v1

    move-object v2, v3

    move-object v10, v8

    move-object v8, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_140

    :catch_169
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_140

    :cond_16f
    move-object v0, v8

    goto :goto_f8

    :cond_171
    move-object v1, v8

    goto :goto_f3
.end method

.method public static queryGameAccount(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Lcom/vivo/sdkplugin/model/MAccountInfo;
    .registers 13

    const/4 v8, 0x0

    :try_start_1
    new-instance v0, Lcom/vivo/sdkplugin/data/DBHelper;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/data/DBHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/data/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "accountinfo"

    const-string v3, "pacakgefrom=?"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->encryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id  DESC"

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_10d

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_10d

    const-string v1, "FunctionUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6e38\u620f\u5305\u540dgamePkgName: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u6709\u8bb0\u5f55\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/vivo/sdkplugin/model/MAccountInfo;

    invoke-direct {v1}, Lcom/vivo/sdkplugin/model/MAccountInfo;-><init>()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_50} :catch_ff

    const/4 v3, 0x0

    :try_start_51
    aget-object v3, p1, v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/vivo/sdkplugin/model/MAccountInfo;->setName(Ljava/lang/String;)V

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/vivo/sdkplugin/model/MAccountInfo;->setOpenid(Ljava/lang/String;)V

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/vivo/sdkplugin/model/MAccountInfo;->setVivoToken(Ljava/lang/String;)V

    const/4 v3, 0x3

    aget-object v3, p1, v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/vivo/sdkplugin/model/MAccountInfo;->setId(Ljava/lang/String;)V

    const/4 v3, 0x4

    aget-object v3, p1, v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/vivo/sdkplugin/model/MAccountInfo;->setPackageName(Ljava/lang/String;)V

    const/4 v3, 0x5

    aget-object v3, p1, v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/vivo/sdkplugin/model/MAccountInfo;->setVisitor(Ljava/lang/String;)V

    const/4 v3, 0x6

    aget-object v3, p1, v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/vivo/sdkplugin/model/MAccountInfo;->setUuid(Ljava/lang/String;)V

    const/4 v3, 0x7

    aget-object v3, p1, v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/vivo/sdkplugin/model/MAccountInfo;->setLoginTime(Ljava/lang/String;)V

    const/16 v3, 0x8

    aget-object v3, p1, v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/vivo/sdkplugin/model/MAccountInfo;->setPwd(Ljava/lang/String;)V

    :goto_f3
    if-eqz v0, :cond_f8

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_f8
    if-eqz v2, :cond_10b

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_fd} :catch_106

    move-object v0, v1

    :goto_fe
    return-object v0

    :catch_ff
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    :goto_102
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_fe

    :catch_106
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_102

    :cond_10b
    move-object v0, v1

    goto :goto_fe

    :cond_10d
    move-object v1, v8

    goto :goto_f3
.end method

.method public static queryOneTemp([Ljava/lang/String;Landroid/content/Context;)Lcom/vivo/sdkplugin/model/MAccountInfo;
    .registers 14

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v0, "FunctionUtils"

    const-string v1, "-----queryOneTemp() enter-----"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Lcom/vivo/sdkplugin/model/MAccountInfo;

    invoke-direct {v10}, Lcom/vivo/sdkplugin/model/MAccountInfo;-><init>()V

    :try_start_e
    new-instance v0, Lcom/vivo/sdkplugin/data/DBHelper;

    invoke-direct {v0, p1}, Lcom/vivo/sdkplugin/data/DBHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/data/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_16} :catch_12e
    .catchall {:try_start_e .. :try_end_16} :catchall_13e

    move-result-object v0

    :try_start_17
    const-string v1, "accountinfo"

    const-string v3, "visitor=?"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "true"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->encryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "name"

    const/4 v6, 0x0

    const-string v7, "_id DESC"

    move-object v2, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_e4

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_e4

    move v1, v9

    :goto_3e
    array-length v2, p0

    if-lt v1, v2, :cond_ef

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/vivo/sdkplugin/model/MAccountInfo;->setName(Ljava/lang/String;)V

    const/4 v1, 0x1

    aget-object v1, p0, v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/vivo/sdkplugin/model/MAccountInfo;->setOpenid(Ljava/lang/String;)V

    const/4 v1, 0x2

    aget-object v1, p0, v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/vivo/sdkplugin/model/MAccountInfo;->setVivoToken(Ljava/lang/String;)V

    const/4 v1, 0x3

    aget-object v1, p0, v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/vivo/sdkplugin/model/MAccountInfo;->setId(Ljava/lang/String;)V

    const/4 v1, 0x4

    aget-object v1, p0, v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/vivo/sdkplugin/model/MAccountInfo;->setPackageName(Ljava/lang/String;)V

    const/4 v1, 0x5

    aget-object v1, p0, v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/vivo/sdkplugin/model/MAccountInfo;->setVisitor(Ljava/lang/String;)V

    const/4 v1, 0x6

    aget-object v1, p0, v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/vivo/sdkplugin/model/MAccountInfo;->setUuid(Ljava/lang/String;)V

    const/4 v1, 0x7

    aget-object v1, p0, v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/vivo/sdkplugin/model/MAccountInfo;->setLoginTime(Ljava/lang/String;)V

    const/16 v1, 0x8

    aget-object v1, p0, v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/vivo/sdkplugin/model/MAccountInfo;->setPwd(Ljava/lang/String;)V
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_e4} :catch_145
    .catchall {:try_start_17 .. :try_end_e4} :catchall_13e

    :cond_e4
    if-eqz v8, :cond_e9

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_e9
    :goto_e9
    if-eqz v0, :cond_ee

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_ee
    return-object v10

    :cond_ef
    :try_start_ef
    aget-object v2, p0, v1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "----------------"

    invoke-static {v5}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    const-string v5, "FunctionUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "index: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " key: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_12a} :catch_145
    .catchall {:try_start_ef .. :try_end_12a} :catchall_13e

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3e

    :catch_12e
    move-exception v0

    move-object v1, v8

    :goto_130
    :try_start_130
    const-string v2, "FunctionUtils"

    const-string v3, "Cannot process all local msgs "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_137
    .catchall {:try_start_130 .. :try_end_137} :catchall_13e

    if-eqz v8, :cond_14a

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    goto :goto_e9

    :catchall_13e
    move-exception v0

    if-eqz v8, :cond_144

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_144
    throw v0

    :catch_145
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_130

    :cond_14a
    move-object v0, v1

    goto :goto_e9
.end method

.method public static queryValue(Landroid/content/Context;)I
    .registers 10

    const/4 v8, 0x0

    new-instance v0, Lcom/vivo/sdkplugin/data/DBHelper;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/data/DBHelper;-><init>(Landroid/content/Context;)V

    const-string v1, "accountinfo"

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/data/DBHelper;->isTableExists(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "FunctionUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "-----------queryValue()----------isTableExist: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_24

    move v0, v8

    :goto_23
    return v0

    :cond_24
    :try_start_24
    invoke-virtual {v0}, Lcom/vivo/sdkplugin/data/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "accountinfo"

    const/4 v2, 0x0

    const-string v3, "_id"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_5b

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    :goto_3b
    const-string v3, "FunctionUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "---------\u4e00\u5171\u6709\u5386\u53f2\u8d26\u53f7\u8bb0\u5f55:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_54

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_54
    if-eqz v0, :cond_59

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_59} :catch_5d

    :cond_59
    move v0, v1

    goto :goto_23

    :cond_5b
    move v1, v8

    goto :goto_3b

    :catch_5d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v8

    goto :goto_23
.end method

.method public static queryValues([Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 13

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-string v0, "FunctionUtils"

    const-string v1, "-----queryValues() enter-----"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_9
    new-instance v0, Lcom/vivo/sdkplugin/data/DBHelper;

    invoke-direct {v0, p1}, Lcom/vivo/sdkplugin/data/DBHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/data/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_11} :catch_fb
    .catchall {:try_start_9 .. :try_end_11} :catchall_111

    move-result-object v0

    :try_start_12
    const-string v1, "accountinfo"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id DESC"

    move-object v2, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1e} :catch_12b
    .catchall {:try_start_12 .. :try_end_1e} :catchall_11e

    move-result-object v3

    if-eqz v3, :cond_13a

    :try_start_21
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_13a

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2c} :catch_12f
    .catchall {:try_start_21 .. :try_end_2c} :catchall_123

    move v1, v9

    :goto_2d
    :try_start_2d
    array-length v4, p0

    if-lt v1, v4, :cond_ee

    :cond_30
    new-instance v1, Lcom/vivo/sdkplugin/model/MAccountInfo;

    invoke-direct {v1}, Lcom/vivo/sdkplugin/model/MAccountInfo;-><init>()V

    const/4 v4, 0x0

    aget-object v4, p0, v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vivo/sdkplugin/model/MAccountInfo;->setName(Ljava/lang/String;)V

    const/4 v4, 0x1

    aget-object v4, p0, v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vivo/sdkplugin/model/MAccountInfo;->setOpenid(Ljava/lang/String;)V

    const/4 v4, 0x2

    aget-object v4, p0, v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vivo/sdkplugin/model/MAccountInfo;->setVivoToken(Ljava/lang/String;)V

    const/4 v4, 0x3

    aget-object v4, p0, v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vivo/sdkplugin/model/MAccountInfo;->setId(Ljava/lang/String;)V

    const/4 v4, 0x4

    aget-object v4, p0, v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vivo/sdkplugin/model/MAccountInfo;->setPackageName(Ljava/lang/String;)V

    const/4 v4, 0x5

    aget-object v4, p0, v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vivo/sdkplugin/model/MAccountInfo;->setVisitor(Ljava/lang/String;)V

    const/4 v4, 0x6

    aget-object v4, p0, v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vivo/sdkplugin/model/MAccountInfo;->setUuid(Ljava/lang/String;)V

    const/4 v4, 0x7

    aget-object v4, p0, v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vivo/sdkplugin/model/MAccountInfo;->setLoginTime(Ljava/lang/String;)V

    const/16 v4, 0x8

    aget-object v4, p0, v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vivo/sdkplugin/model/MAccountInfo;->setPwd(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_de} :catch_134
    .catchall {:try_start_2d .. :try_end_de} :catchall_123

    move-result v1

    if-nez v1, :cond_30

    move-object v1, v2

    :goto_e2
    if-eqz v3, :cond_e7

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_e7
    if-eqz v0, :cond_ec

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_ec
    move-object v0, v1

    :cond_ed
    :goto_ed
    return-object v0

    :cond_ee
    :try_start_ee
    aget-object v4, p0, v1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_f7} :catch_134
    .catchall {:try_start_ee .. :try_end_f7} :catchall_123

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2d

    :catch_fb
    move-exception v0

    move-object v1, v0

    move-object v2, v8

    move-object v0, v8

    :goto_ff
    :try_start_ff
    const-string v3, "FunctionUtils"

    const-string v4, "Cannot process all local msgs "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_106
    .catchall {:try_start_ff .. :try_end_106} :catchall_127

    if-eqz v8, :cond_10b

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_10b
    if-eqz v2, :cond_ed

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_ed

    :catchall_111
    move-exception v0

    move-object v3, v8

    :goto_113
    if-eqz v3, :cond_118

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_118
    if-eqz v8, :cond_11d

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_11d
    throw v0

    :catchall_11e
    move-exception v1

    move-object v3, v8

    move-object v8, v0

    move-object v0, v1

    goto :goto_113

    :catchall_123
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_113

    :catchall_127
    move-exception v0

    move-object v3, v8

    move-object v8, v2

    goto :goto_113

    :catch_12b
    move-exception v1

    move-object v2, v0

    move-object v0, v8

    goto :goto_ff

    :catch_12f
    move-exception v1

    move-object v2, v0

    move-object v0, v8

    move-object v8, v3

    goto :goto_ff

    :catch_134
    move-exception v1

    move-object v8, v3

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    goto :goto_ff

    :cond_13a
    move-object v1, v8

    goto :goto_e2
.end method

.method public static queryValues([Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Ljava/util/ArrayList;
    .registers 15

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    :try_start_3
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "_id DESC"

    move-object v2, p2

    move-object v3, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_14} :catch_35

    move-result-object v1

    move-object v3, v1

    move v4, v9

    :goto_17
    if-eqz v3, :cond_f2

    :try_start_19
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_f2

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_f2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2a} :catch_ee
    .catchall {:try_start_19 .. :try_end_2a} :catchall_e7

    move v1, v8

    :goto_2b
    :try_start_2b
    array-length v5, p0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2c} :catch_c9
    .catchall {:try_start_2b .. :try_end_2c} :catchall_e7

    if-lt v1, v5, :cond_68

    move-object v1, v2

    :goto_2f
    if-eqz v3, :cond_34

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_34
    :goto_34
    return-object v1

    :catch_35
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid column openid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f5

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v3, v8

    const-string v1, "vivoToken"

    aput-object v1, v3, v9

    const/4 v1, 0x2

    const-string v2, "id"

    aput-object v2, v3, v1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "_id DESC"

    move-object v2, p2

    move-object v4, v7

    move-object v5, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move v4, v8

    move-object p0, v3

    move-object v3, v1

    goto :goto_17

    :cond_68
    :try_start_68
    aget-object v5, p0, v1

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "FunctionUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "key: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " index: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " value: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " deValue: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v7}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_b9

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_b5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2b

    :cond_b9
    const-string v6, "name"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_db

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_c8} :catch_c9
    .catchall {:try_start_68 .. :try_end_c8} :catchall_e7

    goto :goto_b5

    :catch_c9
    move-exception v1

    move-object v11, v1

    move-object v1, v2

    move-object v2, v11

    :goto_cd
    :try_start_cd
    const-string v4, "FunctionUtils"

    const-string v5, "Cannot process all local msgs "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d4
    .catchall {:try_start_cd .. :try_end_d4} :catchall_e7

    if-eqz v3, :cond_34

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_34

    :cond_db
    :try_start_db
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->decryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_e6} :catch_c9
    .catchall {:try_start_db .. :try_end_e6} :catchall_e7

    goto :goto_b5

    :catchall_e7
    move-exception v1

    if-eqz v3, :cond_ed

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_ed
    throw v1

    :catch_ee
    move-exception v1

    move-object v2, v1

    move-object v1, v7

    goto :goto_cd

    :cond_f2
    move-object v1, v7

    goto/16 :goto_2f

    :cond_f5
    move-object v3, v7

    move v4, v9

    goto/16 :goto_17
.end method

.method public static readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    .registers 14

    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_f
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    if-gtz p1, :cond_1b

    cmp-long v3, v6, v8

    if-lez v3, :cond_76

    if-nez p1, :cond_76

    :cond_1b
    cmp-long v0, v6, v8

    if-lez v0, :cond_27

    if-eqz p1, :cond_26

    int-to-long v0, p1

    cmp-long v0, v6, v0

    if-gez v0, :cond_27

    :cond_26
    long-to-int p1, v6

    :cond_27
    add-int/lit8 v0, p1, 0x1

    new-array v1, v0, [B

    invoke-virtual {v5, v1}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_2e
    .catchall {:try_start_f .. :try_end_2e} :catchall_103

    move-result v2

    if-gtz v2, :cond_3a

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    const-string v0, ""

    :goto_39
    return-object v0

    :cond_3a
    if-gt v2, p1, :cond_49

    :try_start_3c
    new-instance v0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_103

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_39

    :cond_49
    if-nez p2, :cond_58

    :try_start_4b
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([BII)V
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_103

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_39

    :cond_58
    :try_start_58
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, p1}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6e
    .catchall {:try_start_58 .. :try_end_6e} :catchall_103

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_39

    :cond_76
    if-gez p1, :cond_e1

    move-object v3, v2

    :goto_79
    if-eqz v2, :cond_7c

    move v1, v0

    :cond_7c
    if-nez v2, :cond_81

    neg-int v2, p1

    :try_start_7f
    new-array v2, v2, [B

    :cond_81
    invoke-virtual {v5, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    array-length v7, v2
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_103

    if-eq v6, v7, :cond_10d

    if-nez v3, :cond_95

    if-gtz v6, :cond_95

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    const-string v0, ""

    goto :goto_39

    :cond_95
    if-nez v3, :cond_a4

    :try_start_97
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1, v6}, Ljava/lang/String;-><init>([BII)V
    :try_end_9d
    .catchall {:try_start_97 .. :try_end_9d} :catchall_103

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_39

    :cond_a4
    if-lez v6, :cond_10b

    const/4 v1, 0x0

    :try_start_a7
    array-length v7, v3

    sub-int/2addr v7, v6

    invoke-static {v3, v6, v3, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    array-length v7, v3

    sub-int/2addr v7, v6

    invoke-static {v2, v1, v3, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_b2
    if-eqz p2, :cond_b6

    if-nez v0, :cond_c3

    :cond_b6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_bb
    .catchall {:try_start_a7 .. :try_end_bb} :catchall_103

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto/16 :goto_39

    :cond_c3
    :try_start_c3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_d8
    .catchall {:try_start_c3 .. :try_end_d8} :catchall_103

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto/16 :goto_39

    :cond_e1
    :try_start_e1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :cond_ea
    invoke-virtual {v5, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_f4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_f4
    array-length v3, v1

    if-eq v2, v3, :cond_ea

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_fa
    .catchall {:try_start_e1 .. :try_end_fa} :catchall_103

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto/16 :goto_39

    :catchall_103
    move-exception v0

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_10b
    move v0, v1

    goto :goto_b2

    :cond_10d
    move-object v10, v2

    move-object v2, v3

    move-object v3, v10

    goto/16 :goto_79
.end method

.method public static reverse(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ""

    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->reverse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static saveEventValues(Landroid/content/ContentValues;Landroid/content/Context;)V
    .registers 5

    const-string v0, "FunctionUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveEventValues"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_14
    new-instance v0, Lcom/vivo/sdkplugin/data/AccountEventInfoDbHelper;

    invoke-direct {v0, p1}, Lcom/vivo/sdkplugin/data/AccountEventInfoDbHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/vivo/sdkplugin/data/AccountEventInfoDbHelper;->add(Landroid/content/ContentValues;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1c} :catch_1d

    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c
.end method

.method public static declared-synchronized saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-class v3, Lcom/vivo/sdkplugin/Utils/FunctionUtils;

    monitor-enter v3

    if-nez p0, :cond_f

    move v2, v0

    :goto_8
    if-nez p1, :cond_11

    :goto_a
    or-int/2addr v0, v2

    if-eqz v0, :cond_13

    :goto_d
    monitor-exit v3

    return-void

    :cond_f
    move v2, v1

    goto :goto_8

    :cond_11
    move v0, v1

    goto :goto_a

    :cond_13
    :try_start_13
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "eventid"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "param"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->appendGreneralInfomation(Landroid/content/ContentValues;Landroid/content/Context;)V

    const-string v1, "FunctionUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "saveEventValues"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, p2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Landroid/content/ContentValues;Landroid/content/Context;)V
    :try_end_3c
    .catchall {:try_start_13 .. :try_end_3c} :catchall_3d

    goto :goto_d

    :catchall_3d
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static declared-synchronized saveValues(Landroid/content/ContentValues;Landroid/content/Context;)V
    .registers 6

    const-class v1, Lcom/vivo/sdkplugin/Utils/FunctionUtils;

    monitor-enter v1

    :try_start_3
    const-string v0, "FunctionUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveValuesContentValues"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_29

    :try_start_17
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->SDKACCOUNTINFO_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, p0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_22} :catch_24
    .catchall {:try_start_17 .. :try_end_22} :catchall_29

    :goto_22
    monitor-exit v1

    return-void

    :catch_24
    move-exception v0

    :try_start_25
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_22

    :catchall_29
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static saveValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-eqz p0, :cond_13

    if-eqz p1, :cond_13

    invoke-static {p1}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->encryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveValues(Landroid/content/ContentValues;Landroid/content/Context;)V

    :cond_13
    return-void
.end method

.method public static declared-synchronized saveValues(Ljava/util/Hashtable;Landroid/content/Context;)V
    .registers 7

    const-class v2, Lcom/vivo/sdkplugin/Utils/FunctionUtils;

    monitor-enter v2

    :try_start_3
    invoke-virtual {p0}, Ljava/util/Hashtable;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_29

    move-result v0

    if-eqz v0, :cond_b

    :goto_9
    monitor-exit v2

    return-void

    :cond_b
    :try_start_b
    const-string v0, "pacakgefrom"

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->delete(Ljava/lang/String;Landroid/content/Context;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_16} :catch_2c
    .catchall {:try_start_b .. :try_end_16} :catchall_29

    :goto_16
    :try_start_16
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    :goto_1f
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_31

    invoke-static {v3, p1}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveValues(Landroid/content/ContentValues;Landroid/content/Context;)V
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_29

    goto :goto_9

    :catchall_29
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_2c
    move-exception v0

    :try_start_2d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16

    :cond_31
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->encryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_2d .. :try_end_44} :catchall_29

    goto :goto_1f
.end method

.method public static declared-synchronized saveaccountValues(Ljava/util/Hashtable;Landroid/content/Context;)V
    .registers 7

    const-class v2, Lcom/vivo/sdkplugin/Utils/FunctionUtils;

    monitor-enter v2

    :try_start_3
    invoke-virtual {p0}, Ljava/util/Hashtable;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_29

    move-result v0

    if-eqz v0, :cond_b

    :goto_9
    monitor-exit v2

    return-void

    :cond_b
    :try_start_b
    const-string v0, "pacakgefrom"

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->delete(Ljava/lang/String;Landroid/content/Context;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_16} :catch_2c
    .catchall {:try_start_b .. :try_end_16} :catchall_29

    :goto_16
    :try_start_16
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    :goto_1f
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_31

    invoke-static {v3, p1}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveValues(Landroid/content/ContentValues;Landroid/content/Context;)V
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_29

    goto :goto_9

    :catchall_29
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_2c
    move-exception v0

    :try_start_2d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16

    :cond_31
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->encryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_2d .. :try_end_44} :catchall_29

    goto :goto_1f
.end method

.method public static setImageName()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ".jpg"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setStartTime(Landroid/content/Context;)V
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->STARTTIME_PARAM:J

    return-void
.end method

.method public static setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "vivoaccountsp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setloginStartTime(Landroid/content/Context;)V
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->START_LOGIN_TIME_PARAM:J

    return-void
.end method

.method public static strlen(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_a

    :cond_9
    return v0

    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_10
    if-ltz v1, :cond_9

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_1e

    const/16 v3, 0x39

    if-le v2, v3, :cond_2e

    :cond_1e
    const/16 v3, 0x61

    if-lt v2, v3, :cond_26

    const/16 v3, 0x7a

    if-le v2, v3, :cond_2e

    :cond_26
    const/16 v3, 0x41

    if-lt v2, v3, :cond_33

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_33

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    :goto_30
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_33
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_3c

    add-int/lit8 v0, v0, 0x2

    goto :goto_30

    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_30
.end method

.method public static strlength(Ljava/lang/String;)I
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v0

    move v1, v0

    :goto_7
    if-lt v2, v3, :cond_d

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    return v0

    :cond_d
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x7f

    if-ge v4, v5, :cond_17

    if-gez v4, :cond_1c

    :cond_17
    add-int/lit8 v0, v0, 0x1

    :goto_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_19
.end method

.method public static transformString(Ljava/lang/String;)[Ljava/lang/String;
    .registers 11

    const/4 v8, 0x2

    const/4 v2, 0x0

    const-string v3, "******************************"

    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v8, :cond_3d

    move-object v1, p0

    :goto_d
    const-string v3, "FunctionUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "beforTransform="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", afterTransform="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", replaceString="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, v8, [Ljava/lang/String;

    aput-object v1, v3, v2

    const/4 v1, 0x1

    aput-object v0, v3, v1

    return-object v3

    :cond_3d
    rem-int/lit8 v0, v4, 0x3

    if-eqz v0, :cond_89

    div-int/lit8 v0, v4, 0x3

    add-int/lit8 v0, v0, 0x1

    :goto_45
    rem-int/lit8 v1, v4, 0x2

    if-nez v1, :cond_8c

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_8c

    div-int/lit8 v1, v4, 0x2

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v1, v5

    :goto_52
    add-int v5, v1, v0

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v0, v6, :cond_b8

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v3, v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7f
    add-int/lit8 v3, v5, 0x1

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_d

    :cond_89
    div-int/lit8 v0, v4, 0x3

    goto :goto_45

    :cond_8c
    rem-int/lit8 v1, v4, 0x2

    if-eqz v1, :cond_9a

    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_9a

    div-int/lit8 v1, v4, 0x2

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v1, v5

    goto :goto_52

    :cond_9a
    rem-int/lit8 v1, v4, 0x2

    if-eqz v1, :cond_aa

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_aa

    div-int/lit8 v1, v4, 0x2

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v1, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    :cond_aa
    rem-int/lit8 v1, v4, 0x2

    if-nez v1, :cond_dc

    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_dc

    div-int/lit8 v1, v4, 0x2

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v1, v5

    goto :goto_52

    :cond_b8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v3, v5, 0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7f

    :cond_dc
    move v1, v2

    goto/16 :goto_52
.end method

.method public static updateAccountInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 5

    invoke-static {p2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->getNativeAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-static {p2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, v0, p0, p1}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method
