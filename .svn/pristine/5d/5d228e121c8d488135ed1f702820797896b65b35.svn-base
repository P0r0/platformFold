.class public Lcom/gionee/gsp/util/GnOperatorLogInfoUtil;
.super Ljava/lang/Object;
.source "GnOperatorLogInfoUtil.java"


# static fields
.field public static mGNLogInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gionee/gsp/data/GnLogInfo;",
            ">;"
        }
    .end annotation
.end field

.field static mGnHttpRequester:Lcom/gionee/gsp/util/GnHttpRequester;

.field static mGnLocalService:Lcom/gionee/gsp/service/GnLocalService;

.field public static final sdf:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 19
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/gionee/gsp/util/GnOperatorLogInfoUtil;->sdf:Ljava/text/SimpleDateFormat;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/gionee/gsp/util/GnOperatorLogInfoUtil;->mGNLogInfoList:Ljava/util/List;

    .line 25
    new-instance v0, Lcom/gionee/gsp/util/GnHttpRequester;

    invoke-direct {v0}, Lcom/gionee/gsp/util/GnHttpRequester;-><init>()V

    sput-object v0, Lcom/gionee/gsp/util/GnOperatorLogInfoUtil;->mGnHttpRequester:Lcom/gionee/gsp/util/GnHttpRequester;

    .line 27
    invoke-static {}, Lcom/gionee/gsp/service/GnLocalService;->getInstance()Lcom/gionee/gsp/service/GnLocalService;

    move-result-object v0

    sput-object v0, Lcom/gionee/gsp/util/GnOperatorLogInfoUtil;->mGnLocalService:Lcom/gionee/gsp/service/GnLocalService;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDateTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    sget-object v0, Lcom/gionee/gsp/util/GnOperatorLogInfoUtil;->sdf:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static saveLog(Landroid/content/Context;Lcom/gionee/gsp/data/GnLogInfo;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mSLogInfo"    # Lcom/gionee/gsp/data/GnLogInfo;

    .prologue
    .line 44
    new-instance v0, Lcom/gionee/gsp/util/GnOperatorLogInfoUtil$1;

    invoke-direct {v0, p1, p0}, Lcom/gionee/gsp/util/GnOperatorLogInfoUtil$1;-><init>(Lcom/gionee/gsp/data/GnLogInfo;Landroid/content/Context;)V

    .line 54
    invoke-virtual {v0}, Lcom/gionee/gsp/util/GnOperatorLogInfoUtil$1;->start()V

    .line 56
    return-void
.end method

.method public static sendLogImmediately(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    sget-object v3, Lcom/gionee/gsp/util/GnOperatorLogInfoUtil;->mGNLogInfoList:Ljava/util/List;

    monitor-enter v3

    .line 72
    :try_start_3
    invoke-static {p0}, Lcom/gionee/gsp/util/GnCommonUtil;->isConnnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/gionee/gsp/util/GnOperatorLogInfoUtil;->mGNLogInfoList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 74
    .local v1, "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnLogInfo;>;"
    sget-object v2, Lcom/gionee/gsp/util/GnOperatorLogInfoUtil;->mGNLogInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 77
    new-instance v0, Lcom/gionee/gsp/util/GnOperatorLogInfoUtil$2;

    invoke-direct {v0, v1}, Lcom/gionee/gsp/util/GnOperatorLogInfoUtil$2;-><init>(Ljava/util/List;)V

    .line 91
    .local v0, "callback":Lcom/gionee/gsp/GnCallbackListener;, "Lcom/gionee/gsp/GnCallbackListener<Ljava/lang/String;>;"
    sget-object v2, Lcom/gionee/gsp/util/GnOperatorLogInfoUtil;->mGnLocalService:Lcom/gionee/gsp/service/GnLocalService;

    invoke-virtual {v2, p0, v1, v0}, Lcom/gionee/gsp/service/GnLocalService;->sendOperatorLog(Landroid/content/Context;Ljava/util/List;Lcom/gionee/gsp/GnCallbackListener;)V

    .line 71
    .end local v0    # "callback":Lcom/gionee/gsp/GnCallbackListener;, "Lcom/gionee/gsp/GnCallbackListener<Ljava/lang/String;>;"
    .end local v1    # "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnLogInfo;>;"
    :cond_1f
    monitor-exit v3

    .line 95
    return-void

    .line 71
    :catchall_21
    move-exception v2

    monitor-exit v3
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v2
.end method
