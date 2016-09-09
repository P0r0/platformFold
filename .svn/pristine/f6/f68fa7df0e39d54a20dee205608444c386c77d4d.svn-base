.class Lcom/baidu/mtjstatsdk/bg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/os/HandlerThread;

.field private static g:Landroid/os/Handler;

.field private static h:Lcom/baidu/mtjstatsdk/bg;


# instance fields
.field private b:Z

.field private c:Lcom/baidu/mtjstatsdk/co;

.field private d:I

.field private e:Ljava/util/Timer;

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 25
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LogSenderThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/mtjstatsdk/bg;->a:Landroid/os/HandlerThread;

    .line 41
    new-instance v0, Lcom/baidu/mtjstatsdk/bg;

    invoke-direct {v0}, Lcom/baidu/mtjstatsdk/bg;-><init>()V

    sput-object v0, Lcom/baidu/mtjstatsdk/bg;->h:Lcom/baidu/mtjstatsdk/bg;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mtjstatsdk/bg;->b:Z

    .line 29
    sget-object v0, Lcom/baidu/mtjstatsdk/co;->a:Lcom/baidu/mtjstatsdk/co;

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/bg;->c:Lcom/baidu/mtjstatsdk/co;

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/mtjstatsdk/bg;->d:I

    .line 45
    sget-object v0, Lcom/baidu/mtjstatsdk/bg;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 47
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/baidu/mtjstatsdk/bg;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/baidu/mtjstatsdk/bg;->g:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/baidu/mtjstatsdk/bg;I)I
    .registers 2

    .prologue
    .line 20
    iput p1, p0, Lcom/baidu/mtjstatsdk/bg;->d:I

    return p1
.end method

.method public static a()Lcom/baidu/mtjstatsdk/bg;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/baidu/mtjstatsdk/bg;->h:Lcom/baidu/mtjstatsdk/bg;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mtjstatsdk/bg;Lcom/baidu/mtjstatsdk/co;)Lcom/baidu/mtjstatsdk/co;
    .registers 2

    .prologue
    .line 20
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/bg;->c:Lcom/baidu/mtjstatsdk/co;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/mtjstatsdk/bg;)Ljava/util/Timer;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bg;->e:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mtjstatsdk/bg;Ljava/util/Timer;)Ljava/util/Timer;
    .registers 2

    .prologue
    .line 20
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/bg;->e:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/mtjstatsdk/bg;Z)Z
    .registers 2

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/baidu/mtjstatsdk/bg;->b:Z

    return p1
.end method

.method static synthetic b()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/baidu/mtjstatsdk/bg;->g:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/mtjstatsdk/bg;)Lcom/baidu/mtjstatsdk/co;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bg;->c:Lcom/baidu/mtjstatsdk/co;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 55
    if-nez p1, :cond_1b

    .line 56
    const-string v0, "statsdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initContext context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_1b
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bg;->f:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_28

    if-eqz p1, :cond_28

    .line 59
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/bg;->f:Ljava/lang/ref/WeakReference;

    .line 61
    :cond_28
    return-void
.end method

.method static synthetic c(Lcom/baidu/mtjstatsdk/bg;)Z
    .registers 2

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/baidu/mtjstatsdk/bg;->b:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 108
    invoke-static {}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/BasicStoreTools;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->setLastSendTime(Landroid/content/Context;J)V

    .line 109
    return-void
.end method

.method public a(Landroid/content/Context;JILjava/lang/String;)V
    .registers 12

    .prologue
    .line 122
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bg;->e:Ljava/util/Timer;

    if-nez v0, :cond_23

    .line 123
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/bg;->e:Ljava/util/Timer;

    .line 127
    :goto_b
    invoke-static {p5}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 128
    const-string v0, "set timer log"

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;)I

    .line 130
    :cond_16
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bg;->e:Ljava/util/Timer;

    new-instance v1, Lcom/baidu/mtjstatsdk/bj;

    invoke-direct {v1, p0, p5, p1}, Lcom/baidu/mtjstatsdk/bj;-><init>(Lcom/baidu/mtjstatsdk/bg;Ljava/lang/String;Landroid/content/Context;)V

    int-to-long v4, p4

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 143
    return-void

    .line 125
    :cond_23
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bg;->e:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_b
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/baidu/mtjstatsdk/bg;->b(Landroid/content/Context;)V

    .line 66
    if-nez p1, :cond_1a

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bg;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bg;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 67
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bg;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    move-object p1, v0

    .line 74
    :cond_1a
    sget-object v0, Lcom/baidu/mtjstatsdk/bg;->g:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mtjstatsdk/bh;

    invoke-direct {v1, p0, p2, p1}, Lcom/baidu/mtjstatsdk/bh;-><init>(Lcom/baidu/mtjstatsdk/bg;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    return-void
.end method

.method protected a(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 6

    .prologue
    .line 146
    if-eqz p2, :cond_21

    .line 148
    :try_start_2
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 149
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_21

    .line 150
    const-string v0, "statsdk"

    const-string v1, "sendLogData() does not send because of only_wifi setting"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_17} :catch_18

    .line 160
    :goto_17
    return-void

    .line 153
    :catch_18
    move-exception v0

    .line 154
    const-string v0, "statsdk"

    const-string v1, "sendLogData exception when get wifimanager"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 159
    :cond_21
    invoke-static {p3}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/baidu/mtjstatsdk/DataCore;->sendLogData(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_17
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    .prologue
    const v1, 0x36ee80

    .line 112
    iget v0, p0, Lcom/baidu/mtjstatsdk/bg;->d:I

    mul-int/2addr v0, v1

    int-to-long v2, v0

    iget v0, p0, Lcom/baidu/mtjstatsdk/bg;->d:I

    mul-int v4, v0, v1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mtjstatsdk/bg;->a(Landroid/content/Context;JILjava/lang/String;)V

    .line 114
    return-void
.end method
