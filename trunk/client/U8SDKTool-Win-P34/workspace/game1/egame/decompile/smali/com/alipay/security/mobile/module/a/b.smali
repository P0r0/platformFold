.class public final Lcom/alipay/security/mobile/module/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/security/mobile/module/a/a;


# static fields
.field private static f:Lcom/alipay/security/mobile/module/a/b;

.field private static g:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/alipay/android/phone/mrpc/core/ad;

.field private c:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

.field private d:Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;

.field private e:Lcom/alipay/tscenter/biz/rpc/vkeydfp/AppListCmdService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/security/mobile/module/a/b;->f:Lcom/alipay/security/mobile/module/a/b;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/security/mobile/module/a/b;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/alipay/security/mobile/module/a/b;->b:Lcom/alipay/android/phone/mrpc/core/ad;

    iput-object v0, p0, Lcom/alipay/security/mobile/module/a/b;->c:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    iput-object v0, p0, Lcom/alipay/security/mobile/module/a/b;->d:Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;

    iput-object v0, p0, Lcom/alipay/security/mobile/module/a/b;->e:Lcom/alipay/tscenter/biz/rpc/vkeydfp/AppListCmdService;

    iput-object p1, p0, Lcom/alipay/security/mobile/module/a/b;->a:Landroid/content/Context;

    :try_start_10
    new-instance v1, Lcom/alipay/android/phone/mrpc/core/e;

    invoke-direct {v1}, Lcom/alipay/android/phone/mrpc/core/e;-><init>()V

    invoke-static {}, Lcom/alipay/security/mobile/module/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/android/phone/mrpc/core/e;->a:Ljava/lang/String;

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/o;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/mrpc/core/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/security/mobile/module/a/b;->b:Lcom/alipay/android/phone/mrpc/core/ad;

    iget-object v0, p0, Lcom/alipay/security/mobile/module/a/b;->b:Lcom/alipay/android/phone/mrpc/core/ad;

    const-class v2, Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/phone/mrpc/core/ad;->a(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    iput-object v0, p0, Lcom/alipay/security/mobile/module/a/b;->c:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    iget-object v0, p0, Lcom/alipay/security/mobile/module/a/b;->b:Lcom/alipay/android/phone/mrpc/core/ad;

    const-class v2, Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/phone/mrpc/core/ad;->a(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;

    iput-object v0, p0, Lcom/alipay/security/mobile/module/a/b;->d:Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;

    iget-object v0, p0, Lcom/alipay/security/mobile/module/a/b;->b:Lcom/alipay/android/phone/mrpc/core/ad;

    const-class v2, Lcom/alipay/tscenter/biz/rpc/vkeydfp/AppListCmdService;

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/phone/mrpc/core/ad;->a(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/AppListCmdService;

    iput-object v0, p0, Lcom/alipay/security/mobile/module/a/b;->e:Lcom/alipay/tscenter/biz/rpc/vkeydfp/AppListCmdService;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_46} :catch_47

    :goto_46
    return-void

    :catch_47
    move-exception v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/d;->a(Ljava/lang/Throwable;)V

    goto :goto_46
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/security/mobile/module/a/b;
    .registers 3

    const-class v1, Lcom/alipay/security/mobile/module/a/b;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/alipay/security/mobile/module/a/b;->f:Lcom/alipay/security/mobile/module/a/b;

    if-nez v0, :cond_e

    new-instance v0, Lcom/alipay/security/mobile/module/a/b;

    invoke-direct {v0, p0}, Lcom/alipay/security/mobile/module/a/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/security/mobile/module/a/b;->f:Lcom/alipay/security/mobile/module/a/b;

    :cond_e
    sget-object v0, Lcom/alipay/security/mobile/module/a/b;->f:Lcom/alipay/security/mobile/module/a/b;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/alipay/security/mobile/module/a/b;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;
    .registers 2

    iget-object v0, p0, Lcom/alipay/security/mobile/module/a/b;->d:Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;

    return-object v0
.end method

.method static synthetic a()Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
    .registers 1

    sget-object v0, Lcom/alipay/security/mobile/module/a/b;->g:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
    .registers 1

    sput-object p0, Lcom/alipay/security/mobile/module/a/b;->g:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/AppListResult;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/AppListCmdRequest;

    invoke-direct {v1}, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/AppListCmdRequest;-><init>()V

    iput-object p1, v1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/AppListCmdRequest;->os:Ljava/lang/String;

    iput-object p4, v1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/AppListCmdRequest;->apdid:Ljava/lang/String;

    iput-object p2, v1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/AppListCmdRequest;->userId:Ljava/lang/String;

    iput-object p3, v1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/AppListCmdRequest;->token:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/security/mobile/module/a/b;->e:Lcom/alipay/tscenter/biz/rpc/vkeydfp/AppListCmdService;

    invoke-interface {v2, v1}, Lcom/alipay/tscenter/biz/rpc/vkeydfp/AppListCmdService;->getAppListCmd(Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/AppListCmdRequest;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/AppListCmdResult;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_15

    move-result-object v0

    :goto_14
    return-object v0

    :catch_15
    move-exception v1

    goto :goto_14
.end method

.method public final a(Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
    .registers 6

    iget-object v0, p0, Lcom/alipay/security/mobile/module/a/b;->d:Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    :try_start_5
    sput-object v0, Lcom/alipay/security/mobile/module/a/b;->g:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/security/mobile/module/a/c;

    invoke-direct {v1, p0, p1}, Lcom/alipay/security/mobile/module/a/c;-><init>(Lcom/alipay/security/mobile/module/a/b;Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const v0, 0x493e0

    :goto_17
    sget-object v1, Lcom/alipay/security/mobile/module/a/b;->g:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    if-nez v1, :cond_29

    if-ltz v0, :cond_29

    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_22} :catch_25

    add-int/lit8 v0, v0, -0x32

    goto :goto_17

    :catch_25
    move-exception v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/d;->a(Ljava/lang/Throwable;)V

    :cond_29
    sget-object v0, Lcom/alipay/security/mobile/module/a/b;->g:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return v1

    :cond_8
    iget-object v0, p0, Lcom/alipay/security/mobile/module/a/b;->c:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    if-eqz v0, :cond_34

    const/4 v0, 0x0

    :try_start_d
    iget-object v2, p0, Lcom/alipay/security/mobile/module/a/b;->c:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    invoke-static {p1}, Lcom/alipay/security/mobile/module/commonutils/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;->logCollect(Ljava/lang/String;)Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_16} :catch_36

    move-result-object v0

    :goto_17
    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_34

    :try_start_1d
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "success"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_2d} :catch_30

    move-result v0

    :goto_2e
    move v1, v0

    goto :goto_7

    :catch_30
    move-exception v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/d;->a(Ljava/lang/Throwable;)V

    :cond_34
    move v0, v1

    goto :goto_2e

    :catch_36
    move-exception v2

    goto :goto_17
.end method
