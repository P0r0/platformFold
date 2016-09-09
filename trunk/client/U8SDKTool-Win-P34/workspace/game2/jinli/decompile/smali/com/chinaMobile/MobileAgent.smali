.class public Lcom/chinaMobile/MobileAgent;
.super Ljava/lang/Object;
.source "MobileAgent.java"


# static fields
.field private static final CODE_IOFAILURE:I = 0x3

.field private static final CODE_NETFAILURE:I = 0x2

.field private static final CODE_SUCCESS:I = 0x1

.field private static final EVENTID_LXAPKMD5:Ljava/lang/String; = "#apk_security_check "

.field private static final FILE_ACTION_LOG:Ljava/lang/String;

.field private static final FILE_ERR_LOG:Ljava/lang/String;

.field private static final FILE_EVENTSP_LOG:Ljava/lang/String;

.field private static final FILE_EVENT_LOG:Ljava/lang/String;

.field private static final FILE_SYS_LOG:Ljava/lang/String;

.field private static final IS_LXAPKMD5:Z = true

.field private static final KEY_SHARE_DAY_ACTION:Ljava/lang/String; = "actionday"

.field private static final KEY_SHARE_DAY_EVENT:Ljava/lang/String; = "eventday"

.field private static final KEY_SHARE_DAY_SYS:Ljava/lang/String; = "sysday"

.field private static final KEY_SHARE_EVENTLOGS:Ljava/lang/String; = "eventlogs"

.field private static final KEY_SHARE_IS_FIRST:Ljava/lang/String; = "is_first_run"

.field private static final KEY_SHARE_MD5:Ljava/lang/String; = "md5"

.field private static final KEY_SHARE_MONTH_ACTION:Ljava/lang/String; = "actionmonth"

.field private static final KEY_SHARE_MONTH_EVENT:Ljava/lang/String; = "eventmonth"

.field private static final KEY_SHARE_MONTH_SYS:Ljava/lang/String; = "sysmonth"

.field private static final KEY_SHARE_UPDATEDELAY:Ljava/lang/String; = "updatedelay"

.field private static final KEY_SHARE_UPDATEONLYONWIFI:Ljava/lang/String; = "updateonlyonwifi"

.field private static final KEY_SHARE_UPLOADLIST:Ljava/lang/String; = "uploadList"

.field private static final KEY_SHARE_UPLOADPOPCOUNT:Ljava/lang/String; = "uploadcount"

.field private static final KEY_SHARE_UPLOADPOPINDEX:Ljava/lang/String; = "uploadpopindex"

.field private static final KEY_SHARE_UPLOADTYPE:Ljava/lang/String; = "send_policy"

.field private static final KV_UPTYPE_BEGIN:I = 0x2

.field private static final KV_UPTYPE_IMMEDIATE:I = 0x1

.field private static final KV_UPTYPE_ONCE:I = 0x3

.field private static final MAXSIZE:I = 0x2710

.field private static final MAXTASK:I = 0x7530

.field private static final MAX_LENGTH:I = 0x7d0

.field private static PREFIX_LX_D:Ljava/lang/String; = null

.field public static final SDK_VERSION:Ljava/lang/String; = "3.2.1.5"

.field protected static final SPLITE_CHAR:Ljava/lang/String; = "@@"

.field private static final TAG:Ljava/lang/String; = "MobileAgent"

.field private static final TAGAPI:Ljava/lang/String; = "MobileAgentAPI"

.field private static final TAGRUN:Ljava/lang/String; = "MobileAgentRun"

.field private static final TIMEOUT:I = 0x7530

.field private static final TIME_SLEEP:I = 0x0

.field private static final TYPE_ACTLOG:I = 0x3

.field private static final TYPE_ERRLOG:I = 0x4

.field private static final TYPE_EVENTLOG:I = 0x2

.field private static final TYPE_EVENTSPLOG:I = 0x5

.field private static final TYPE_SYSLOG:I = 0x1

.field public static final USER_STATUS_ACTIVATE:Ljava/lang/String; = "activate"

.field public static final USER_STATUS_CUSTOM:Ljava/lang/String; = "custom"

.field public static final USER_STATUS_LOGIN:Ljava/lang/String; = "login"

.field public static final USER_STATUS_REGIST:Ljava/lang/String; = "regist"

.field public static final USER_STATUS_START:Ljava/lang/String; = "start"

.field private static UpdateOnlyWifi:Z

.field private static autoListenCrash:Z

.field private static beginning:Z

.field private static isAllow:I

.field public static isDebug:Z

.field private static isInit:Z

.field private static isInitJoin:Z

.field private static lastActivity:Ljava/lang/String;

.field private static lastTime:J

.field private static lockEven:Ljava/lang/Object;

.field private static lockEvenSp:Ljava/lang/Object;

.field private static lockList:Ljava/lang/Object;

.field private static sid:Ljava/lang/String;

.field private static updateDelay:I

.field private static uploadType:I


# instance fields
.field Tel:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 13
    const-string v0, "jfd"

    sput-object v0, Lcom/chinaMobile/MobileAgent;->PREFIX_LX_D:Ljava/lang/String;

    .line 14
    sput-boolean v1, Lcom/chinaMobile/MobileAgent;->isDebug:Z

    .line 16
    const/4 v0, 0x2

    sput v0, Lcom/chinaMobile/MobileAgent;->isAllow:I

    .line 30
    sput-boolean v1, Lcom/chinaMobile/MobileAgent;->autoListenCrash:Z

    .line 31
    sput-boolean v2, Lcom/chinaMobile/MobileAgent;->UpdateOnlyWifi:Z

    .line 33
    sput-boolean v1, Lcom/chinaMobile/MobileAgent;->beginning:Z

    .line 35
    sput v1, Lcom/chinaMobile/MobileAgent;->uploadType:I

    .line 36
    sput v2, Lcom/chinaMobile/MobileAgent;->updateDelay:I

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "act"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/chinaMobile/MobileAgent;->PREFIX_LX_D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chinaMobile/MobileAgent;->FILE_ACTION_LOG:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "evn"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/chinaMobile/MobileAgent;->PREFIX_LX_D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chinaMobile/MobileAgent;->FILE_EVENT_LOG:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "esp"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/chinaMobile/MobileAgent;->PREFIX_LX_D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chinaMobile/MobileAgent;->FILE_EVENTSP_LOG:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "err"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/chinaMobile/MobileAgent;->PREFIX_LX_D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chinaMobile/MobileAgent;->FILE_ERR_LOG:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sys"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/chinaMobile/MobileAgent;->PREFIX_LX_D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chinaMobile/MobileAgent;->FILE_SYS_LOG:Ljava/lang/String;

    .line 70
    const-string v0, ""

    sput-object v0, Lcom/chinaMobile/MobileAgent;->lastActivity:Ljava/lang/String;

    .line 72
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/chinaMobile/MobileAgent;->lastTime:J

    .line 73
    const-string v0, ""

    sput-object v0, Lcom/chinaMobile/MobileAgent;->sid:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/chinaMobile/MobileAgent;->lockList:Ljava/lang/Object;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/chinaMobile/MobileAgent;->lockEven:Ljava/lang/Object;

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/chinaMobile/MobileAgent;->lockEvenSp:Ljava/lang/Object;

    .line 77
    sput-boolean v2, Lcom/chinaMobile/MobileAgent;->isInit:Z

    .line 78
    sput-boolean v2, Lcom/chinaMobile/MobileAgent;->isInitJoin:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static createMessage(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 546
    const/4 v1, 0x0

    .line 548
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v4, "com.chinaMobile.MobileAgent_"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_2d

    move-result-object v1

    .line 553
    :goto_7
    const/4 v0, 0x0

    .line 555
    .local v0, "_createMessage":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v4, "createMessage"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_15} :catch_32

    move-result-object v0

    .line 560
    :goto_16
    const/4 v3, 0x0

    .line 562
    .local v3, "out":Ljava/lang/Object;
    if-nez v0, :cond_20

    .line 563
    :try_start_19
    const-string v4, "sec"

    const-string v5, "createMessage is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_20
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/IllegalAccessException; {:try_start_19 .. :try_end_29} :catch_37
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_29} :catch_3c

    move-result-object v3

    .line 573
    .end local v3    # "out":Ljava/lang/Object;
    :goto_2a
    check-cast v3, Lorg/json/JSONObject;

    return-object v3

    .line 550
    .end local v0    # "_createMessage":Ljava/lang/reflect/Method;
    :catch_2d
    move-exception v2

    .line 551
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 557
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_createMessage":Ljava/lang/reflect/Method;
    :catch_32
    move-exception v2

    .line 558
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_16

    .line 567
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v3    # "out":Ljava/lang/Object;
    :catch_37
    move-exception v2

    .line 568
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2a

    .line 570
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3c
    move-exception v2

    .line 571
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2a
.end method

.method protected static getEventSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 447
    const/4 v1, 0x0

    .line 449
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v4, "com.chinaMobile.MobileAgent_"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_2d

    move-result-object v1

    .line 454
    :goto_7
    const/4 v0, 0x0

    .line 456
    .local v0, "_getEventSharedPreferences":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v4, "getEventSharedPreferences"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_15} :catch_32

    move-result-object v0

    .line 461
    :goto_16
    const/4 v3, 0x0

    .line 463
    .local v3, "out":Ljava/lang/Object;
    if-nez v0, :cond_20

    .line 464
    :try_start_19
    const-string v4, "sec"

    const-string v5, "getEventSharedPreferences is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_20
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/IllegalAccessException; {:try_start_19 .. :try_end_29} :catch_37
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_29} :catch_3c

    move-result-object v3

    .line 474
    .end local v3    # "out":Ljava/lang/Object;
    :goto_2a
    check-cast v3, Landroid/content/SharedPreferences;

    return-object v3

    .line 451
    .end local v0    # "_getEventSharedPreferences":Ljava/lang/reflect/Method;
    :catch_2d
    move-exception v2

    .line 452
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 458
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_getEventSharedPreferences":Ljava/lang/reflect/Method;
    :catch_32
    move-exception v2

    .line 459
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_16

    .line 468
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v3    # "out":Ljava/lang/Object;
    :catch_37
    move-exception v2

    .line 469
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2a

    .line 471
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3c
    move-exception v2

    .line 472
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2a
.end method

.method protected static getEventSpSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 480
    const/4 v1, 0x0

    .line 482
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v4, "com.chinaMobile.MobileAgent_"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_2d

    move-result-object v1

    .line 487
    :goto_7
    const/4 v0, 0x0

    .line 489
    .local v0, "_getEventSpSharedPreferences":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v4, "getEventSpSharedPreferences"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_15} :catch_32

    move-result-object v0

    .line 494
    :goto_16
    const/4 v3, 0x0

    .line 496
    .local v3, "out":Ljava/lang/Object;
    if-nez v0, :cond_20

    .line 497
    :try_start_19
    const-string v4, "sec"

    const-string v5, "getEventSpSharedPreferences is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_20
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/IllegalAccessException; {:try_start_19 .. :try_end_29} :catch_37
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_29} :catch_3c

    move-result-object v3

    .line 507
    .end local v3    # "out":Ljava/lang/Object;
    :goto_2a
    check-cast v3, Landroid/content/SharedPreferences;

    return-object v3

    .line 484
    .end local v0    # "_getEventSpSharedPreferences":Ljava/lang/reflect/Method;
    :catch_2d
    move-exception v2

    .line 485
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 491
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_getEventSpSharedPreferences":Ljava/lang/reflect/Method;
    :catch_32
    move-exception v2

    .line 492
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_16

    .line 501
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v3    # "out":Ljava/lang/Object;
    :catch_37
    move-exception v2

    .line 502
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2a

    .line 504
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3c
    move-exception v2

    .line 505
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2a
.end method

.method protected static getUploadListSharePreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 513
    const/4 v1, 0x0

    .line 515
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v4, "com.chinaMobile.MobileAgent_"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_2d

    move-result-object v1

    .line 520
    :goto_7
    const/4 v0, 0x0

    .line 522
    .local v0, "_getUploadListSharePreferences":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v4, "getUploadListSharePreferences"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_15} :catch_32

    move-result-object v0

    .line 527
    :goto_16
    const/4 v3, 0x0

    .line 529
    .local v3, "out":Ljava/lang/Object;
    if-nez v0, :cond_20

    .line 530
    :try_start_19
    const-string v4, "sec"

    const-string v5, "getUploadListSharePreferences is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_20
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/IllegalAccessException; {:try_start_19 .. :try_end_29} :catch_37
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_29} :catch_3c

    move-result-object v3

    .line 540
    .end local v3    # "out":Ljava/lang/Object;
    :goto_2a
    check-cast v3, Landroid/content/SharedPreferences;

    return-object v3

    .line 517
    .end local v0    # "_getUploadListSharePreferences":Ljava/lang/reflect/Method;
    :catch_2d
    move-exception v2

    .line 518
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 524
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_getUploadListSharePreferences":Ljava/lang/reflect/Method;
    :catch_32
    move-exception v2

    .line 525
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_16

    .line 534
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v3    # "out":Ljava/lang/Object;
    :catch_37
    move-exception v2

    .line 535
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2a

    .line 537
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3c
    move-exception v2

    .line 538
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2a
.end method

.method protected static isOnce(Landroid/content/Context;I)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 933
    const/4 v1, 0x0

    .line 935
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v4, "com.chinaMobile.MobileAgent_"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_3d

    move-result-object v1

    .line 940
    :goto_7
    const/4 v0, 0x0

    .line 942
    .local v0, "_isOnce":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v4, "isOnce"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1a} :catch_42

    move-result-object v0

    .line 947
    :goto_1b
    const/4 v3, 0x0

    .line 949
    .local v3, "out":Ljava/lang/Object;
    if-nez v0, :cond_25

    .line 950
    :try_start_1e
    const-string v4, "sec"

    const-string v5, "openFeedbackDialog is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :cond_25
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catch Ljava/lang/IllegalAccessException; {:try_start_1e .. :try_end_35} :catch_47
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_35} :catch_4c

    move-result-object v3

    .line 961
    .end local v3    # "out":Ljava/lang/Object;
    :goto_36
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4

    .line 937
    .end local v0    # "_isOnce":Ljava/lang/reflect/Method;
    :catch_3d
    move-exception v2

    .line 938
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 944
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_isOnce":Ljava/lang/reflect/Method;
    :catch_42
    move-exception v2

    .line 945
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1b

    .line 954
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v3    # "out":Ljava/lang/Object;
    :catch_47
    move-exception v2

    .line 955
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_36

    .line 957
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_4c
    move-exception v2

    .line 958
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_36
.end method

.method protected static isRecordEvent(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1031
    const/4 v1, 0x0

    .line 1033
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v4, "com.chinaMobile.MobileAgent_"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_39

    move-result-object v1

    .line 1038
    :goto_7
    const/4 v0, 0x0

    .line 1040
    .local v0, "_isRecordEvent":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v4, "isRecordEvent"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1a} :catch_3e

    move-result-object v0

    .line 1045
    :goto_1b
    const/4 v3, 0x0

    .line 1047
    .local v3, "out":Ljava/lang/Object;
    if-nez v0, :cond_25

    .line 1048
    :try_start_1e
    const-string v4, "sec"

    const-string v5, "isRecordEvent is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :cond_25
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Ljava/lang/IllegalAccessException; {:try_start_1e .. :try_end_31} :catch_43
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_31} :catch_48

    move-result-object v3

    .line 1058
    .end local v3    # "out":Ljava/lang/Object;
    :goto_32
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4

    .line 1035
    .end local v0    # "_isRecordEvent":Ljava/lang/reflect/Method;
    :catch_39
    move-exception v2

    .line 1036
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 1042
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_isRecordEvent":Ljava/lang/reflect/Method;
    :catch_3e
    move-exception v2

    .line 1043
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1b

    .line 1052
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v3    # "out":Ljava/lang/Object;
    :catch_43
    move-exception v2

    .line 1053
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_32

    .line 1055
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_48
    move-exception v2

    .line 1056
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_32
.end method

.method public static joinDu(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appID"    # Ljava/lang/String;
    .param p2, "channelID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 358
    const/4 v1, 0x0

    .line 360
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v3, "com.chinaMobile.MobileAgent_"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_39

    move-result-object v1

    .line 365
    :goto_7
    const/4 v0, 0x0

    .line 367
    .local v0, "_joinDu":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v3, "joinDu"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1f} :catch_3e

    move-result-object v0

    .line 373
    :goto_20
    if-nez v0, :cond_29

    .line 374
    :try_start_22
    const-string v3, "sec"

    const-string v4, "joinDu is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_29
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/IllegalAccessException; {:try_start_22 .. :try_end_38} :catch_43
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_38} :catch_48

    .line 384
    :goto_38
    return-void

    .line 362
    .end local v0    # "_joinDu":Ljava/lang/reflect/Method;
    :catch_39
    move-exception v2

    .line 363
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 369
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_joinDu":Ljava/lang/reflect/Method;
    :catch_3e
    move-exception v2

    .line 370
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_20

    .line 378
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_43
    move-exception v2

    .line 379
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_38

    .line 381
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_48
    move-exception v2

    .line 382
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_38
.end method

.method public static listenCrash(Landroid/content/Context;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 388
    const/4 v1, 0x0

    .line 390
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v3, "com.chinaMobile.MobileAgent_"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_29

    move-result-object v1

    .line 395
    :goto_7
    const/4 v0, 0x0

    .line 397
    .local v0, "_listenCrash":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v3, "listenCrash"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_15} :catch_2e

    move-result-object v0

    .line 403
    :goto_16
    if-nez v0, :cond_1f

    .line 404
    :try_start_18
    const-string v3, "sec"

    const-string v4, "listenCrash is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_1f
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_28} :catch_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_28} :catch_38

    .line 414
    :goto_28
    return-void

    .line 392
    .end local v0    # "_listenCrash":Ljava/lang/reflect/Method;
    :catch_29
    move-exception v2

    .line 393
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 399
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_listenCrash":Ljava/lang/reflect/Method;
    :catch_2e
    move-exception v2

    .line 400
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_16

    .line 408
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_33
    move-exception v2

    .line 409
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_28

    .line 411
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_38
    move-exception v2

    .line 412
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_28
.end method

.method public static listenUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 327
    const/4 v1, 0x0

    .line 329
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v3, "com.chinaMobile.MobileAgent_"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_39

    move-result-object v1

    .line 334
    :goto_7
    const/4 v0, 0x0

    .line 336
    .local v0, "_listenUser":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v3, "listenUser"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1f} :catch_3e

    move-result-object v0

    .line 342
    :goto_20
    if-nez v0, :cond_29

    .line 343
    :try_start_22
    const-string v3, "sec"

    const-string v4, "listenUser is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_29
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/IllegalAccessException; {:try_start_22 .. :try_end_38} :catch_43
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_38} :catch_48

    .line 353
    :goto_38
    return-void

    .line 331
    .end local v0    # "_listenUser":Ljava/lang/reflect/Method;
    :catch_39
    move-exception v2

    .line 332
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 338
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_listenUser":Ljava/lang/reflect/Method;
    :catch_3e
    move-exception v2

    .line 339
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_20

    .line 347
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_43
    move-exception v2

    .line 348
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_38

    .line 350
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_48
    move-exception v2

    .line 351
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_38
.end method

.method protected static onErr(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "err"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1064
    const/4 v1, 0x0

    .line 1066
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v3, "com.chinaMobile.MobileAgent_"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_31

    move-result-object v1

    .line 1071
    :goto_7
    const/4 v0, 0x0

    .line 1073
    .local v0, "_onErr":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v3, "onErr"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1a} :catch_36

    move-result-object v0

    .line 1080
    :goto_1b
    if-nez v0, :cond_24

    .line 1081
    :try_start_1d
    const-string v3, "sec"

    const-string v4, "onErr is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    :cond_24
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_30} :catch_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_30} :catch_40

    .line 1091
    :goto_30
    return-void

    .line 1068
    .end local v0    # "_onErr":Ljava/lang/reflect/Method;
    :catch_31
    move-exception v2

    .line 1069
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 1075
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_onErr":Ljava/lang/reflect/Method;
    :catch_36
    move-exception v2

    .line 1076
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1b

    .line 1085
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3b
    move-exception v2

    .line 1086
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_30

    .line 1088
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_40
    move-exception v2

    .line 1089
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_30
.end method

.method protected static onErrP(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "err"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1096
    const/4 v1, 0x0

    .line 1098
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v3, "com.chinaMobile.MobileAgent_"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_31

    move-result-object v1

    .line 1103
    :goto_7
    const/4 v0, 0x0

    .line 1105
    .local v0, "_onErrP":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v3, "onErrP"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1a} :catch_36

    move-result-object v0

    .line 1112
    :goto_1b
    if-nez v0, :cond_24

    .line 1113
    :try_start_1d
    const-string v3, "sec"

    const-string v4, "onErrP is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :cond_24
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_30} :catch_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_30} :catch_40

    .line 1123
    :goto_30
    return-void

    .line 1100
    .end local v0    # "_onErrP":Ljava/lang/reflect/Method;
    :catch_31
    move-exception v2

    .line 1101
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 1107
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_onErrP":Ljava/lang/reflect/Method;
    :catch_36
    move-exception v2

    .line 1108
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1b

    .line 1117
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3b
    move-exception v2

    .line 1118
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_30

    .line 1120
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_40
    move-exception v2

    .line 1121
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_30
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 175
    const/4 v1, 0x0

    .line 177
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v3, "com.chinaMobile.MobileAgent_"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_31

    move-result-object v1

    .line 182
    :goto_7
    const/4 v0, 0x0

    .line 184
    .local v0, "_onEvent":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v3, "onEvent"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1a} :catch_36

    move-result-object v0

    .line 190
    :goto_1b
    if-nez v0, :cond_24

    .line 191
    :try_start_1d
    const-string v3, "sec"

    const-string v4, "onEvent is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_24
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_30} :catch_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_30} :catch_40

    .line 201
    :goto_30
    return-void

    .line 179
    .end local v0    # "_onEvent":Ljava/lang/reflect/Method;
    :catch_31
    move-exception v2

    .line 180
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 186
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_onEvent":Ljava/lang/reflect/Method;
    :catch_36
    move-exception v2

    .line 187
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1b

    .line 195
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3b
    move-exception v2

    .line 196
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_30

    .line 198
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_40
    move-exception v2

    .line 199
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_30
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 206
    const/4 v1, 0x0

    .line 208
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v3, "com.chinaMobile.MobileAgent_"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_39

    move-result-object v1

    .line 213
    :goto_7
    const/4 v0, 0x0

    .line 215
    .local v0, "_onEvent":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v3, "onEvent"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1f} :catch_3e

    move-result-object v0

    .line 221
    :goto_20
    if-nez v0, :cond_29

    .line 222
    :try_start_22
    const-string v3, "sec"

    const-string v4, "onEvent is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_29
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/IllegalAccessException; {:try_start_22 .. :try_end_38} :catch_43
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_38} :catch_48

    .line 232
    :goto_38
    return-void

    .line 210
    .end local v0    # "_onEvent":Ljava/lang/reflect/Method;
    :catch_39
    move-exception v2

    .line 211
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 217
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_onEvent":Ljava/lang/reflect/Method;
    :catch_3e
    move-exception v2

    .line 218
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_20

    .line 226
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_43
    move-exception v2

    .line 227
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_38

    .line 229
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_48
    move-exception v2

    .line 230
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_38
.end method

.method protected static onEventP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 236
    const/4 v1, 0x0

    .line 238
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v3, "com.chinaMobile.MobileAgent_"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_39

    move-result-object v1

    .line 243
    :goto_7
    const/4 v0, 0x0

    .line 245
    .local v0, "_onEventP":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v3, "onEventP"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1f} :catch_3e

    move-result-object v0

    .line 251
    :goto_20
    if-nez v0, :cond_29

    .line 252
    :try_start_22
    const-string v3, "sec"

    const-string v4, "onEventP is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_29
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/IllegalAccessException; {:try_start_22 .. :try_end_38} :catch_43
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_38} :catch_48

    .line 262
    :goto_38
    return-void

    .line 240
    .end local v0    # "_onEventP":Ljava/lang/reflect/Method;
    :catch_39
    move-exception v2

    .line 241
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 247
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_onEventP":Ljava/lang/reflect/Method;
    :catch_3e
    move-exception v2

    .line 248
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_20

    .line 256
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_43
    move-exception v2

    .line 257
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_38

    .line 259
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_48
    move-exception v2

    .line 260
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_38
.end method

.method public static onEventRT(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 296
    const/4 v1, 0x0

    .line 298
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v3, "com.chinaMobile.MobileAgent_"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_39

    move-result-object v1

    .line 303
    :goto_7
    const/4 v0, 0x0

    .line 305
    .local v0, "_onEventRT":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v3, "onEventRT"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1f} :catch_3e

    move-result-object v0

    .line 311
    :goto_20
    if-nez v0, :cond_29

    .line 312
    :try_start_22
    const-string v3, "sec"

    const-string v4, "onEventRT is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_29
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/IllegalAccessException; {:try_start_22 .. :try_end_38} :catch_43
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_38} :catch_48

    .line 322
    :goto_38
    return-void

    .line 300
    .end local v0    # "_onEventRT":Ljava/lang/reflect/Method;
    :catch_39
    move-exception v2

    .line 301
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 307
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_onEventRT":Ljava/lang/reflect/Method;
    :catch_3e
    move-exception v2

    .line 308
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_20

    .line 316
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_43
    move-exception v2

    .line 317
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_38

    .line 319
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_48
    move-exception v2

    .line 320
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_38
.end method

.method protected static onEventSpP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 266
    const/4 v1, 0x0

    .line 268
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v3, "com.chinaMobile.MobileAgent_"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_39

    move-result-object v1

    .line 273
    :goto_7
    const/4 v0, 0x0

    .line 275
    .local v0, "_onEventSpP":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v3, "onEventSpP"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1f} :catch_3e

    move-result-object v0

    .line 281
    :goto_20
    if-nez v0, :cond_29

    .line 282
    :try_start_22
    const-string v3, "sec"

    const-string v4, "onEventSpP is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_29
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/IllegalAccessException; {:try_start_22 .. :try_end_38} :catch_43
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_38} :catch_48

    .line 292
    :goto_38
    return-void

    .line 270
    .end local v0    # "_onEventSpP":Ljava/lang/reflect/Method;
    :catch_39
    move-exception v2

    .line 271
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 277
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_onEventSpP":Ljava/lang/reflect/Method;
    :catch_3e
    move-exception v2

    .line 278
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_20

    .line 286
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_43
    move-exception v2

    .line 287
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_38

    .line 289
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_48
    move-exception v2

    .line 290
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_38
.end method

.method public static onPause(Landroid/content/Context;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 145
    const/4 v1, 0x0

    .line 147
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v3, "com.chinaMobile.MobileAgent_"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_29

    move-result-object v1

    .line 152
    :goto_7
    const/4 v0, 0x0

    .line 154
    .local v0, "_onPause":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v3, "onPause"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_15} :catch_2e

    move-result-object v0

    .line 160
    :goto_16
    if-nez v0, :cond_1f

    .line 161
    :try_start_18
    const-string v3, "sec"

    const-string v4, "onPause is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_1f
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_28} :catch_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_28} :catch_38

    .line 171
    :goto_28
    return-void

    .line 149
    .end local v0    # "_onPause":Ljava/lang/reflect/Method;
    :catch_29
    move-exception v2

    .line 150
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 156
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_onPause":Ljava/lang/reflect/Method;
    :catch_2e
    move-exception v2

    .line 157
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_16

    .line 165
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_33
    move-exception v2

    .line 166
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_28

    .line 168
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_38
    move-exception v2

    .line 169
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_28
.end method

.method public static onResume(Landroid/content/Context;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 117
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v3, "com.chinaMobile.MobileAgent_"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_29

    move-result-object v1

    .line 122
    :goto_7
    const/4 v0, 0x0

    .line 124
    .local v0, "_onResume":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v3, "onResume"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_15} :catch_2e

    move-result-object v0

    .line 130
    :goto_16
    if-nez v0, :cond_1f

    .line 131
    :try_start_18
    const-string v3, "sec"

    const-string v4, "onResume is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_1f
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_28} :catch_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_28} :catch_38

    .line 141
    :goto_28
    return-void

    .line 119
    .end local v0    # "_onResume":Ljava/lang/reflect/Method;
    :catch_29
    move-exception v2

    .line 120
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 126
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_onResume":Ljava/lang/reflect/Method;
    :catch_2e
    move-exception v2

    .line 127
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_16

    .line 135
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_33
    move-exception v2

    .line 136
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_28

    .line 138
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_38
    move-exception v2

    .line 139
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_28
.end method

.method public static openFeedbackDialog(Landroid/content/Context;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 901
    const/4 v1, 0x0

    .line 903
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v3, "com.chinaMobile.MobileAgent_"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_29

    move-result-object v1

    .line 908
    :goto_7
    const/4 v0, 0x0

    .line 910
    .local v0, "_openFeedbackDialog":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v3, "openFeedbackDialog"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_15} :catch_2e

    move-result-object v0

    .line 917
    :goto_16
    if-nez v0, :cond_1f

    .line 918
    :try_start_18
    const-string v3, "sec"

    const-string v4, "openFeedbackDialog is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :cond_1f
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_28} :catch_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_28} :catch_38

    .line 928
    :goto_28
    return-void

    .line 905
    .end local v0    # "_openFeedbackDialog":Ljava/lang/reflect/Method;
    :catch_29
    move-exception v2

    .line 906
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 912
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_openFeedbackDialog":Ljava/lang/reflect/Method;
    :catch_2e
    move-exception v2

    .line 913
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_16

    .line 922
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_33
    move-exception v2

    .line 923
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_28

    .line 925
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_38
    move-exception v2

    .line 926
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_28
.end method

.method protected static pageAct(Landroid/content/Context;Z)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isResume"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v1, 0x0

    .line 86
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v3, "com.chinaMobile.MobileAgent_"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_35

    move-result-object v1

    .line 91
    :goto_7
    const/4 v0, 0x0

    .line 93
    .local v0, "_pageAct":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v3, "pageAct"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1a} :catch_3a

    move-result-object v0

    .line 99
    :goto_1b
    if-nez v0, :cond_24

    .line 100
    :try_start_1d
    const-string v3, "sec"

    const-string v4, "pageAct is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_24
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_34} :catch_3f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_34} :catch_44

    .line 110
    :goto_34
    return-void

    .line 88
    .end local v0    # "_pageAct":Ljava/lang/reflect/Method;
    :catch_35
    move-exception v2

    .line 89
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 95
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_pageAct":Ljava/lang/reflect/Method;
    :catch_3a
    move-exception v2

    .line 96
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1b

    .line 104
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3f
    move-exception v2

    .line 105
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_34

    .line 107
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_44
    move-exception v2

    .line 108
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_34
.end method

.method protected static pushSysLog(Landroid/content/Context;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 708
    const/4 v1, 0x0

    .line 710
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v3, "com.chinaMobile.MobileAgent_"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_29

    move-result-object v1

    .line 715
    :goto_7
    const/4 v0, 0x0

    .line 717
    .local v0, "_pushSysLog":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v3, "pushSysLog"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_15} :catch_2e

    move-result-object v0

    .line 724
    :goto_16
    if-nez v0, :cond_1f

    .line 725
    :try_start_18
    const-string v3, "sec"

    const-string v4, "pushSysLog is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_1f
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_28} :catch_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_28} :catch_38

    .line 735
    :goto_28
    return-void

    .line 712
    .end local v0    # "_pushSysLog":Ljava/lang/reflect/Method;
    :catch_29
    move-exception v2

    .line 713
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 719
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_pushSysLog":Ljava/lang/reflect/Method;
    :catch_2e
    move-exception v2

    .line 720
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_16

    .line 729
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_33
    move-exception v2

    .line 730
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_28

    .line 732
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_38
    move-exception v2

    .line 733
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_28
.end method

.method protected static recordDate(Landroid/content/Context;I)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 967
    const/4 v1, 0x0

    .line 969
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v3, "com.chinaMobile.MobileAgent_"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_35

    move-result-object v1

    .line 974
    :goto_7
    const/4 v0, 0x0

    .line 976
    .local v0, "_recordDate":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v3, "recordDate"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1a} :catch_3a

    move-result-object v0

    .line 983
    :goto_1b
    if-nez v0, :cond_24

    .line 984
    :try_start_1d
    const-string v3, "sec"

    const-string v4, "recordDate is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    :cond_24
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_34} :catch_3f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_34} :catch_44

    .line 994
    :goto_34
    return-void

    .line 971
    .end local v0    # "_recordDate":Ljava/lang/reflect/Method;
    :catch_35
    move-exception v2

    .line 972
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 978
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_recordDate":Ljava/lang/reflect/Method;
    :catch_3a
    move-exception v2

    .line 979
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1b

    .line 988
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3f
    move-exception v2

    .line 989
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_34

    .line 991
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_44
    move-exception v2

    .line 992
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_34
.end method

.method protected static recordEvent(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 999
    const/4 v1, 0x0

    .line 1001
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v3, "com.chinaMobile.MobileAgent_"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_31

    move-result-object v1

    .line 1006
    :goto_7
    const/4 v0, 0x0

    .line 1008
    .local v0, "_recordEvent":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v3, "recordEvent"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1a} :catch_36

    move-result-object v0

    .line 1015
    :goto_1b
    if-nez v0, :cond_24

    .line 1016
    :try_start_1d
    const-string v3, "sec"

    const-string v4, "recordEvent is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_24
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_30} :catch_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_30} :catch_40

    .line 1026
    :goto_30
    return-void

    .line 1003
    .end local v0    # "_recordEvent":Ljava/lang/reflect/Method;
    :catch_31
    move-exception v2

    .line 1004
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 1010
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_recordEvent":Ljava/lang/reflect/Method;
    :catch_36
    move-exception v2

    .line 1011
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1b

    .line 1020
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3b
    move-exception v2

    .line 1021
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_30

    .line 1023
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_40
    move-exception v2

    .line 1024
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_30
.end method

.method protected static sendActionMessage(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 579
    const/4 v1, 0x0

    .line 581
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v4, "com.chinaMobile.MobileAgent_"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_39

    move-result-object v1

    .line 586
    :goto_7
    const/4 v0, 0x0

    .line 588
    .local v0, "_sendActionMessage":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v4, "sendActionMessage"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1a} :catch_3e

    move-result-object v0

    .line 593
    :goto_1b
    const/4 v3, 0x0

    .line 595
    .local v3, "out":Ljava/lang/Object;
    if-nez v0, :cond_25

    .line 596
    :try_start_1e
    const-string v4, "sec"

    const-string v5, "sendActionMessage is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_25
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Ljava/lang/IllegalAccessException; {:try_start_1e .. :try_end_31} :catch_43
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_31} :catch_48

    move-result-object v3

    .line 606
    .end local v3    # "out":Ljava/lang/Object;
    :goto_32
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4

    .line 583
    .end local v0    # "_sendActionMessage":Ljava/lang/reflect/Method;
    :catch_39
    move-exception v2

    .line 584
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 590
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_sendActionMessage":Ljava/lang/reflect/Method;
    :catch_3e
    move-exception v2

    .line 591
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1b

    .line 600
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v3    # "out":Ljava/lang/Object;
    :catch_43
    move-exception v2

    .line 601
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_32

    .line 603
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_48
    move-exception v2

    .line 604
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_32
.end method

.method protected static sendErrorMessage(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 740
    const/4 v1, 0x0

    .line 742
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v4, "com.chinaMobile.MobileAgent_"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_39

    move-result-object v1

    .line 747
    :goto_7
    const/4 v0, 0x0

    .line 749
    .local v0, "_sendErrorMessage":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v4, "sendErrorMessage"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1a} :catch_3e

    move-result-object v0

    .line 754
    :goto_1b
    const/4 v3, 0x0

    .line 756
    .local v3, "out":Ljava/lang/Object;
    if-nez v0, :cond_25

    .line 757
    :try_start_1e
    const-string v4, "sec"

    const-string v5, "sendErrorMessage is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_25
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Ljava/lang/IllegalAccessException; {:try_start_1e .. :try_end_31} :catch_43
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_31} :catch_48

    move-result-object v3

    .line 767
    .end local v3    # "out":Ljava/lang/Object;
    :goto_32
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4

    .line 744
    .end local v0    # "_sendErrorMessage":Ljava/lang/reflect/Method;
    :catch_39
    move-exception v2

    .line 745
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 751
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_sendErrorMessage":Ljava/lang/reflect/Method;
    :catch_3e
    move-exception v2

    .line 752
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1b

    .line 761
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v3    # "out":Ljava/lang/Object;
    :catch_43
    move-exception v2

    .line 762
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_32

    .line 764
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_48
    move-exception v2

    .line 765
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_32
.end method

.method protected static sendEventMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "log"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 611
    const/4 v1, 0x0

    .line 613
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v4, "com.chinaMobile.MobileAgent_"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_41

    move-result-object v1

    .line 618
    :goto_7
    const/4 v0, 0x0

    .line 620
    .local v0, "_sendEventMessage":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v4, "sendEventMessage"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1f} :catch_46

    move-result-object v0

    .line 625
    :goto_20
    const/4 v3, 0x0

    .line 627
    .local v3, "out":Ljava/lang/Object;
    if-nez v0, :cond_2a

    .line 628
    :try_start_23
    const-string v4, "sec"

    const-string v5, "sendEventMessage is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_2a
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_39} :catch_4b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_39} :catch_50

    move-result-object v3

    .line 638
    .end local v3    # "out":Ljava/lang/Object;
    :goto_3a
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4

    .line 615
    .end local v0    # "_sendEventMessage":Ljava/lang/reflect/Method;
    :catch_41
    move-exception v2

    .line 616
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 622
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_sendEventMessage":Ljava/lang/reflect/Method;
    :catch_46
    move-exception v2

    .line 623
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_20

    .line 632
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v3    # "out":Ljava/lang/Object;
    :catch_4b
    move-exception v2

    .line 633
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_3a

    .line 635
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_50
    move-exception v2

    .line 636
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3a
.end method

.method protected static sendEventSpMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "log"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 643
    const/4 v1, 0x0

    .line 645
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v4, "com.chinaMobile.MobileAgent_"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_41

    move-result-object v1

    .line 650
    :goto_7
    const/4 v0, 0x0

    .line 652
    .local v0, "_sendEventSpMessage":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v4, "sendEventSpMessage"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1f} :catch_46

    move-result-object v0

    .line 657
    :goto_20
    const/4 v3, 0x0

    .line 659
    .local v3, "out":Ljava/lang/Object;
    if-nez v0, :cond_2a

    .line 660
    :try_start_23
    const-string v4, "sec"

    const-string v5, "sendEventSpMessage is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_2a
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_39} :catch_4b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_39} :catch_50

    move-result-object v3

    .line 670
    .end local v3    # "out":Ljava/lang/Object;
    :goto_3a
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4

    .line 647
    .end local v0    # "_sendEventSpMessage":Ljava/lang/reflect/Method;
    :catch_41
    move-exception v2

    .line 648
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 654
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_sendEventSpMessage":Ljava/lang/reflect/Method;
    :catch_46
    move-exception v2

    .line 655
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_20

    .line 664
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v3    # "out":Ljava/lang/Object;
    :catch_4b
    move-exception v2

    .line 665
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_3a

    .line 667
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_50
    move-exception v2

    .line 668
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3a
.end method

.method protected static sendFeedbackMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userAge"    # Ljava/lang/String;
    .param p2, "userSex"    # Ljava/lang/String;
    .param p3, "userFeedback"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 773
    const/4 v1, 0x0

    .line 775
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v3, "com.chinaMobile.MobileAgent_"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_41

    move-result-object v1

    .line 780
    :goto_7
    const/4 v0, 0x0

    .line 782
    .local v0, "_sendFeedbackMessage":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v3, "sendFeedbackMessage"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_24
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_24} :catch_46

    move-result-object v0

    .line 789
    :goto_25
    if-nez v0, :cond_2e

    .line 790
    :try_start_27
    const-string v3, "sec"

    const-string v4, "sendFeedbackMessage is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_2e
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catch Ljava/lang/IllegalAccessException; {:try_start_27 .. :try_end_40} :catch_4b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_40} :catch_50

    .line 800
    :goto_40
    return-void

    .line 777
    .end local v0    # "_sendFeedbackMessage":Ljava/lang/reflect/Method;
    :catch_41
    move-exception v2

    .line 778
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 784
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_sendFeedbackMessage":Ljava/lang/reflect/Method;
    :catch_46
    move-exception v2

    .line 785
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_25

    .line 794
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4b
    move-exception v2

    .line 795
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_40

    .line 797
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_50
    move-exception v2

    .line 798
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_40
.end method

.method protected static sendSystemMessage(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 675
    const/4 v1, 0x0

    .line 677
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v4, "com.chinaMobile.MobileAgent_"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_39

    move-result-object v1

    .line 682
    :goto_7
    const/4 v0, 0x0

    .line 684
    .local v0, "_sendSystemMessage":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v4, "sendSystemMessage"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1a} :catch_3e

    move-result-object v0

    .line 689
    :goto_1b
    const/4 v3, 0x0

    .line 691
    .local v3, "out":Ljava/lang/Object;
    if-nez v0, :cond_25

    .line 692
    :try_start_1e
    const-string v4, "sec"

    const-string v5, "sendSystemMessage is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_25
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Ljava/lang/IllegalAccessException; {:try_start_1e .. :try_end_31} :catch_43
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_31} :catch_48

    move-result-object v3

    .line 702
    .end local v3    # "out":Ljava/lang/Object;
    :goto_32
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4

    .line 679
    .end local v0    # "_sendSystemMessage":Ljava/lang/reflect/Method;
    :catch_39
    move-exception v2

    .line 680
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 686
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_sendSystemMessage":Ljava/lang/reflect/Method;
    :catch_3e
    move-exception v2

    .line 687
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1b

    .line 696
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v3    # "out":Ljava/lang/Object;
    :catch_43
    move-exception v2

    .line 697
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_32

    .line 699
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_48
    move-exception v2

    .line 700
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_32
.end method

.method public static setAutoListenCrash(Ljava/lang/Boolean;)V
    .registers 8
    .param p0, "autolisten"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 417
    const/4 v1, 0x0

    .line 419
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v3, "com.chinaMobile.MobileAgent_"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_29

    move-result-object v1

    .line 424
    :goto_7
    const/4 v0, 0x0

    .line 426
    .local v0, "_setAutoListenCrash":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v3, "setAutoListenCrash"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/Boolean;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_15} :catch_2e

    move-result-object v0

    .line 432
    :goto_16
    if-nez v0, :cond_1f

    .line 433
    :try_start_18
    const-string v3, "sec"

    const-string v4, "setAutoListenCrash is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_1f
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_28} :catch_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_28} :catch_38

    .line 443
    :goto_28
    return-void

    .line 421
    .end local v0    # "_setAutoListenCrash":Ljava/lang/reflect/Method;
    :catch_29
    move-exception v2

    .line 422
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 428
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_setAutoListenCrash":Ljava/lang/reflect/Method;
    :catch_2e
    move-exception v2

    .line 429
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_16

    .line 437
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_33
    move-exception v2

    .line 438
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_28

    .line 440
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_38
    move-exception v2

    .line 441
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_28
.end method

.method protected static strategy(Landroid/content/Context;Z)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isNewSession"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 837
    const/4 v1, 0x0

    .line 839
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v3, "com.chinaMobile.MobileAgent_"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_35

    move-result-object v1

    .line 844
    :goto_7
    const/4 v0, 0x0

    .line 846
    .local v0, "_strategy":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v3, "strategy"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1a} :catch_3a

    move-result-object v0

    .line 853
    :goto_1b
    if-nez v0, :cond_24

    .line 854
    :try_start_1d
    const-string v3, "sec"

    const-string v4, "strategy is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_24
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_34} :catch_3f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_34} :catch_44

    .line 864
    :goto_34
    return-void

    .line 841
    .end local v0    # "_strategy":Ljava/lang/reflect/Method;
    :catch_35
    move-exception v2

    .line 842
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 848
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_strategy":Ljava/lang/reflect/Method;
    :catch_3a
    move-exception v2

    .line 849
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1b

    .line 858
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3f
    move-exception v2

    .line 859
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_34

    .line 861
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_44
    move-exception v2

    .line 862
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_34
.end method

.method protected static syncParams(Landroid/content/Context;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 805
    const/4 v1, 0x0

    .line 807
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v3, "com.chinaMobile.MobileAgent_"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_29

    move-result-object v1

    .line 812
    :goto_7
    const/4 v0, 0x0

    .line 814
    .local v0, "_syncParams":Ljava/lang/reflect/Method;
    :try_start_8
    const-string v3, "syncParams"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_15} :catch_2e

    move-result-object v0

    .line 821
    :goto_16
    if-nez v0, :cond_1f

    .line 822
    :try_start_18
    const-string v3, "sec"

    const-string v4, "syncParams is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_1f
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_28} :catch_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_28} :catch_38

    .line 832
    :goto_28
    return-void

    .line 809
    .end local v0    # "_syncParams":Ljava/lang/reflect/Method;
    :catch_29
    move-exception v2

    .line 810
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 816
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "_syncParams":Ljava/lang/reflect/Method;
    :catch_2e
    move-exception v2

    .line 817
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_16

    .line 826
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_33
    move-exception v2

    .line 827
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_28

    .line 829
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_38
    move-exception v2

    .line 830
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_28
.end method

.method static declared-synchronized uploadList(Landroid/content/Context;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 869
    const-class v4, Lcom/chinaMobile/MobileAgent;

    monitor-enter v4

    const/4 v1, 0x0

    .line 871
    .local v1, "cls":Ljava/lang/Class;
    :try_start_4
    const-string v3, "com.chinaMobile.MobileAgent_"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_2d
    .catchall {:try_start_4 .. :try_end_9} :catchall_32

    move-result-object v1

    .line 876
    :goto_a
    const/4 v0, 0x0

    .line 878
    .local v0, "_uploadList":Ljava/lang/reflect/Method;
    :try_start_b
    const-string v3, "uploadList"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_18} :catch_35
    .catchall {:try_start_b .. :try_end_18} :catchall_32

    move-result-object v0

    .line 885
    :goto_19
    if-nez v0, :cond_22

    .line 886
    :try_start_1b
    const-string v3, "sec"

    const-string v5, "uploadList is null"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_22
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_1b .. :try_end_2b} :catch_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_2b} :catch_3f
    .catchall {:try_start_1b .. :try_end_2b} :catchall_32

    .line 896
    :goto_2b
    monitor-exit v4

    return-void

    .line 873
    .end local v0    # "_uploadList":Ljava/lang/reflect/Method;
    :catch_2d
    move-exception v2

    .line 874
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    :try_start_2e
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    goto :goto_a

    .line 869
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catchall_32
    move-exception v3

    monitor-exit v4

    throw v3

    .line 880
    .restart local v0    # "_uploadList":Ljava/lang/reflect/Method;
    :catch_35
    move-exception v2

    .line 881
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    :try_start_36
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_19

    .line 890
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3a
    move-exception v2

    .line 891
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2b

    .line 893
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3f
    move-exception v2

    .line 894
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_36 .. :try_end_43} :catchall_32

    goto :goto_2b
.end method
