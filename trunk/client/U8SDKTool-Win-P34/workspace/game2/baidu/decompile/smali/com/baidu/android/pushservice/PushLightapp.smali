.class public Lcom/baidu/android/pushservice/PushLightapp;
.super Ljava/lang/Object;


# static fields
.field private static BIND_TIME_OUT:I = 0x0

.field private static final DEBUG:Z = false

.field private static EVER_BIND:Z = false

.field private static final PUSHSERVICE:Ljava/lang/String; = "com.baidu.android.pushservice.PushService"

.field private static final PUSH_VERSION_LEGAL_41:I = 0x17

.field private static final PUSH_VERSION_LEGAL_44:I = 0x1b

.field private static RUNNING_PUSH_VERSION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PushLightapp"

.field private static sInstance:Lcom/baidu/android/pushservice/PushLightapp;

.field private static sListener:Lcom/baidu/android/pushservice/IPushLightappListener;


# instance fields
.field private bind_times:I

.field private mBound:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field mIPushService:Lcom/baidu/android/pushservice/b/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/baidu/android/pushservice/PushLightapp;->EVER_BIND:Z

    const/16 v0, 0xdac

    sput v0, Lcom/baidu/android/pushservice/PushLightapp;->BIND_TIME_OUT:I

    sput v1, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mBound:Z

    iput v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->bind_times:I

    new-instance v0, Lcom/baidu/android/pushservice/o;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/o;-><init>(Lcom/baidu/android/pushservice/PushLightapp;)V

    iput-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushLightapp;->tryBindPush()V

    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->BIND_TIME_OUT:I

    return v0
.end method

.method static synthetic access$100()Z
    .registers 1

    sget-boolean v0, Lcom/baidu/android/pushservice/PushLightapp;->EVER_BIND:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/baidu/android/pushservice/PushLightapp;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushLightapp;->tryBindPush()V

    return-void
.end method

.method static synthetic access$200(Lcom/baidu/android/pushservice/PushLightapp;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mBound:Z

    return v0
.end method

.method static synthetic access$202(Lcom/baidu/android/pushservice/PushLightapp;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/android/pushservice/PushLightapp;->mBound:Z

    return p1
.end method

.method static synthetic access$300(Lcom/baidu/android/pushservice/PushLightapp;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushLightapp;->unbindService()V

    return-void
.end method

.method static synthetic access$402(I)I
    .registers 1

    sput p0, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    return p0
.end method

.method static synthetic access$500(Lcom/baidu/android/pushservice/PushLightapp;)I
    .registers 2

    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushLightapp;->getRunningServiceVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$600()Lcom/baidu/android/pushservice/IPushLightappListener;
    .registers 1

    sget-object v0, Lcom/baidu/android/pushservice/PushLightapp;->sListener:Lcom/baidu/android/pushservice/IPushLightappListener;

    return-object v0
.end method

.method static synthetic access$700()Lcom/baidu/android/pushservice/PushLightapp;
    .registers 1

    sget-object v0, Lcom/baidu/android/pushservice/PushLightapp;->sInstance:Lcom/baidu/android/pushservice/PushLightapp;

    return-object v0
.end method

.method static synthetic access$702(Lcom/baidu/android/pushservice/PushLightapp;)Lcom/baidu/android/pushservice/PushLightapp;
    .registers 1

    sput-object p0, Lcom/baidu/android/pushservice/PushLightapp;->sInstance:Lcom/baidu/android/pushservice/PushLightapp;

    return-object p0
.end method

.method static synthetic access$800(Lcom/baidu/android/pushservice/PushLightapp;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/baidu/android/pushservice/PushLightapp;)I
    .registers 2

    iget v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->bind_times:I

    return v0
.end method

.method static synthetic access$902(Lcom/baidu/android/pushservice/PushLightapp;I)I
    .registers 2

    iput p1, p0, Lcom/baidu/android/pushservice/PushLightapp;->bind_times:I

    return p1
.end method

.method private static getInstance(Landroid/content/Context;)Lcom/baidu/android/pushservice/PushLightapp;
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    sget-object v0, Lcom/baidu/android/pushservice/PushLightapp;->sInstance:Lcom/baidu/android/pushservice/PushLightapp;

    if-nez v0, :cond_12

    new-instance v0, Lcom/baidu/android/pushservice/PushLightapp;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/PushLightapp;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/android/pushservice/PushLightapp;->sInstance:Lcom/baidu/android/pushservice/PushLightapp;

    :cond_f
    :goto_f
    sget-object v0, Lcom/baidu/android/pushservice/PushLightapp;->sInstance:Lcom/baidu/android/pushservice/PushLightapp;

    goto :goto_3

    :cond_12
    sget-object v0, Lcom/baidu/android/pushservice/PushLightapp;->sInstance:Lcom/baidu/android/pushservice/PushLightapp;

    iget-object v0, v0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    if-nez v0, :cond_f

    sget-object v0, Lcom/baidu/android/pushservice/PushLightapp;->sInstance:Lcom/baidu/android/pushservice/PushLightapp;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/PushLightapp;->tryBindPush()V

    goto :goto_f
.end method

.method public static declared-synchronized getInstanceAsync(Landroid/content/Context;Lcom/baidu/android/pushservice/IPushLightappListener;)V
    .registers 4

    const-class v1, Lcom/baidu/android/pushservice/PushLightapp;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/android/pushservice/PushLightapp;->sInstance:Lcom/baidu/android/pushservice/PushLightapp;

    if-eqz v0, :cond_16

    sget-object v0, Lcom/baidu/android/pushservice/PushLightapp;->sInstance:Lcom/baidu/android/pushservice/PushLightapp;

    iget-object v0, v0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    if-eqz v0, :cond_16

    if-eqz p1, :cond_14

    sget-object v0, Lcom/baidu/android/pushservice/PushLightapp;->sInstance:Lcom/baidu/android/pushservice/PushLightapp;

    invoke-interface {p1, v0}, Lcom/baidu/android/pushservice/IPushLightappListener;->initialComplete(Lcom/baidu/android/pushservice/PushLightapp;)V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_1c

    :cond_14
    :goto_14
    monitor-exit v1

    return-void

    :cond_16
    :try_start_16
    sput-object p1, Lcom/baidu/android/pushservice/PushLightapp;->sListener:Lcom/baidu/android/pushservice/IPushLightappListener;

    invoke-static {p0}, Lcom/baidu/android/pushservice/PushLightapp;->getInstance(Landroid/content/Context;)Lcom/baidu/android/pushservice/PushLightapp;
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1c

    goto :goto_14

    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getRunningServiceVersion()I
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    if-eqz v0, :cond_f

    :try_start_4
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    invoke-interface {v0}, Lcom/baidu/android/pushservice/b/a;->c()I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_b

    move-result v0

    :goto_a
    return v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private tryBindPush()V
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mContext:Landroid/content/Context;

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushLightapp;->unbindService()V

    :goto_8
    return-void

    :cond_9
    sget-boolean v0, Lcom/baidu/android/pushservice/PushLightapp;->EVER_BIND:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    if-nez v0, :cond_15

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    if-lez v0, :cond_18

    :cond_15
    invoke-direct {p0}, Lcom/baidu/android/pushservice/PushLightapp;->unbindService()V

    :cond_18
    sput-boolean v1, Lcom/baidu/android/pushservice/PushLightapp;->EVER_BIND:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/baidu/android/pushservice/PushLightapp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/util/q;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.baidu.android.pushservice.PushService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_2a
    iget-object v1, p0, Lcom/baidu/android/pushservice/PushLightapp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/android/pushservice/PushLightapp;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_32} :catch_41

    :goto_32
    iget v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->bind_times:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->bind_times:I

    new-instance v0, Lcom/baidu/android/pushservice/n;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/n;-><init>(Lcom/baidu/android/pushservice/PushLightapp;)V

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/n;->start()V

    goto :goto_8

    :catch_41
    move-exception v0

    goto :goto_32
.end method

.method private unbindService()V
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/android/pushservice/PushLightapp;->EVER_BIND:Z

    const/4 v0, 0x0

    sput v0, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mBound:Z

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/android/pushservice/PushLightapp;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_18

    :cond_17
    :goto_17
    return-void

    :catch_18
    move-exception v0

    goto :goto_17
.end method


# virtual methods
.method public getSubcribeApps()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    if-eqz v0, :cond_12

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_12

    :try_start_a
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    invoke-interface {v0}, Lcom/baidu/android/pushservice/b/a;->a()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_11

    move-result-object v0

    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getSubscribedAppids()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    if-eqz v0, :cond_15

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_15

    :try_start_a
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    invoke-interface {v0}, Lcom/baidu/android/pushservice/b/a;->b()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_11

    move-result-object v0

    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_15
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getSubscribedAppinfos(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    if-eqz v0, :cond_15

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_15

    :try_start_a
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    invoke-interface {v0, p1}, Lcom/baidu/android/pushservice/b/a;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_11

    move-result-object v0

    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_15
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    if-eqz v0, :cond_15

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_15

    :try_start_a
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    invoke-interface {v0, p1, p2}, Lcom/baidu/android/pushservice/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_11

    move-result v0

    :goto_10
    return v0

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_15
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public subscribeLight(Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/android/pushservice/IPushLightappListener;)V
    .registers 8

    const v2, 0x9c41

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    if-eqz v0, :cond_24

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_24

    :try_start_d
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    new-instance v1, Lcom/baidu/android/pushservice/p;

    invoke-direct {v1, p0, p4}, Lcom/baidu/android/pushservice/p;-><init>(Lcom/baidu/android/pushservice/PushLightapp;Lcom/baidu/android/pushservice/IPushLightappListener;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/baidu/android/pushservice/b/a;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/android/pushservice/b/b;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_18

    :cond_17
    :goto_17
    return-void

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p4, :cond_17

    const-string v0, "aidl_error: INTERNAL_EXCEPTION"

    invoke-interface {p4, v2, v0}, Lcom/baidu/android/pushservice/IPushLightappListener;->onSubscribeResult(ILjava/lang/String;)V

    goto :goto_17

    :cond_24
    if-eqz p4, :cond_17

    const-string v0, "aidl_error: NO BINDED PUSHSERVICE or OLD VERSION "

    invoke-interface {p4, v2, v0}, Lcom/baidu/android/pushservice/IPushLightappListener;->onSubscribeResult(ILjava/lang/String;)V

    goto :goto_17
.end method

.method public subscribeLightByApiKey(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/baidu/android/pushservice/IPushLightappListener;)V
    .registers 13

    const v6, 0x9c41

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    if-eqz v0, :cond_28

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_28

    :try_start_d
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    new-instance v5, Lcom/baidu/android/pushservice/q;

    invoke-direct {v5, p0, p5, p1}, Lcom/baidu/android/pushservice/q;-><init>(Lcom/baidu/android/pushservice/PushLightapp;Lcom/baidu/android/pushservice/IPushLightappListener;Ljava/lang/String;)V

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/baidu/android/pushservice/b/a;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/baidu/android/pushservice/b/b;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1b} :catch_1c

    :cond_1b
    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p5, :cond_1b

    const-string v0, "aidl_error: INTERNAL_EXCEPTION"

    invoke-interface {p5, v6, v0}, Lcom/baidu/android/pushservice/IPushLightappListener;->onSubscribeByApiKey(ILjava/lang/String;)V

    goto :goto_1b

    :cond_28
    if-eqz p5, :cond_1b

    const-string v0, "aidl_error: NO BINDED PUSHSERVICE or OLD VERSION "

    invoke-interface {p5, v6, v0}, Lcom/baidu/android/pushservice/IPushLightappListener;->onSubscribeByApiKey(ILjava/lang/String;)V

    goto :goto_1b
.end method

.method public unsubscribeLight(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/IPushLightappListener;)V
    .registers 7

    const v2, 0x9c41

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    if-eqz v0, :cond_21

    sget v0, Lcom/baidu/android/pushservice/PushLightapp;->RUNNING_PUSH_VERSION:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_21

    :try_start_d
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp;->mIPushService:Lcom/baidu/android/pushservice/b/a;

    new-instance v1, Lcom/baidu/android/pushservice/r;

    invoke-direct {v1, p0, p3}, Lcom/baidu/android/pushservice/r;-><init>(Lcom/baidu/android/pushservice/PushLightapp;Lcom/baidu/android/pushservice/IPushLightappListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/baidu/android/pushservice/b/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/b/b;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_18

    :cond_17
    :goto_17
    return-void

    :catch_18
    move-exception v0

    if-eqz p3, :cond_17

    const-string v0, "aidl_error: INTERNAL_EXCEPTION"

    invoke-interface {p3, v2, v0}, Lcom/baidu/android/pushservice/IPushLightappListener;->onUnsubscribeResult(ILjava/lang/String;)V

    goto :goto_17

    :cond_21
    if-eqz p3, :cond_17

    const-string v0, "aidl_error: NO BINDED PUSHSERVICE or OLD VERSION "

    invoke-interface {p3, v2, v0}, Lcom/baidu/android/pushservice/IPushLightappListener;->onUnsubscribeResult(ILjava/lang/String;)V

    goto :goto_17
.end method
