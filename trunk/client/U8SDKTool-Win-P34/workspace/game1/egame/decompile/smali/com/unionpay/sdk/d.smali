.class Lcom/unionpay/sdk/d;
.super Lcom/unionpay/sdk/ae;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/sdk/d$a;
    }
.end annotation


# static fields
.field private static volatile d:Lcom/unionpay/sdk/d;

.field private static e:Lcom/unionpay/sdk/ao;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private f:Lcom/unionpay/sdk/b;

.field private g:J

.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    sput-object v0, Lcom/unionpay/sdk/d;->d:Lcom/unionpay/sdk/d;

    sput-object v0, Lcom/unionpay/sdk/d;->e:Lcom/unionpay/sdk/ao;

    new-instance v0, Lcom/unionpay/sdk/e;

    invoke-direct {v0}, Lcom/unionpay/sdk/e;-><init>()V

    sput-object v0, Lcom/unionpay/sdk/d;->e:Lcom/unionpay/sdk/ao;

    invoke-static {}, Lcom/unionpay/sdk/ai;->a()Lcom/unionpay/sdk/OttoBus;

    move-result-object v0

    invoke-static {}, Lcom/unionpay/sdk/d;->a()Lcom/unionpay/sdk/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/unionpay/sdk/OttoBus;->register(Ljava/lang/Object;)V

    invoke-static {}, Lcom/unionpay/sdk/d;->a()Lcom/unionpay/sdk/d;

    sget-object v0, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    if-nez v0, :cond_55

    move v0, v1

    :goto_20
    if-nez v0, :cond_6d

    sget-object v0, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    if-eqz v0, :cond_6d

    sget-object v0, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sget-object v1, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    :try_start_42
    sget-object v2, Lcom/unionpay/sdk/d;->e:Lcom/unionpay/sdk/ao;

    const-string v3, "mService"

    const-string v4, "android.location.ILocationManager"

    invoke-static {v0, v2, v3, v4}, Lcom/unionpay/sdk/aw;->a(Ljava/lang/Object;Lcom/unionpay/sdk/ao;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/unionpay/sdk/d;->e:Lcom/unionpay/sdk/ao;

    const-string v2, "mService"

    const-string v3, "android.net.wifi.IWifiManager"

    invoke-static {v1, v0, v2, v3}, Lcom/unionpay/sdk/aw;->a(Ljava/lang/Object;Lcom/unionpay/sdk/ao;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_54} :catch_64

    :goto_54
    return-void

    :cond_55
    sget-object v0, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    const-string v2, "unionpay_CHANNEL_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "location_called"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_20

    :catch_64
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/sdk/al;->b(Ljava/lang/String;)V

    goto :goto_54

    :cond_6d
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "registerListenLocationMethodCalled : location method already called"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unionpay/sdk/al;->b([Ljava/lang/String;)V

    goto :goto_54
.end method

.method private constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lcom/unionpay/sdk/ae;-><init>()V

    const-string v0, "140.207.168.45"

    iput-object v0, p0, Lcom/unionpay/sdk/d;->a:Ljava/lang/String;

    const-string v0, "140.207.168.45"

    iput-object v0, p0, Lcom/unionpay/sdk/d;->b:Ljava/lang/String;

    const-string v0, "http://140.207.168.45/g/d"

    iput-object v0, p0, Lcom/unionpay/sdk/d;->c:Ljava/lang/String;

    new-instance v0, Lcom/unionpay/sdk/d$a;

    const-string v1, "140.207.168.45"

    const-string v2, "140.207.168.45"

    const-string v3, "http://140.207.168.45/g/d"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/unionpay/sdk/d$a;-><init>(Lcom/unionpay/sdk/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unionpay/sdk/d;->f:Lcom/unionpay/sdk/b;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/unionpay/sdk/d;->g:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/sdk/d;->h:Ljava/lang/String;

    return-void
.end method

.method static a()Lcom/unionpay/sdk/d;
    .registers 2

    sget-object v0, Lcom/unionpay/sdk/d;->d:Lcom/unionpay/sdk/d;

    if-nez v0, :cond_13

    const-class v1, Lcom/unionpay/sdk/d;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/unionpay/sdk/d;->d:Lcom/unionpay/sdk/d;

    if-nez v0, :cond_12

    new-instance v0, Lcom/unionpay/sdk/d;

    invoke-direct {v0}, Lcom/unionpay/sdk/d;-><init>()V

    sput-object v0, Lcom/unionpay/sdk/d;->d:Lcom/unionpay/sdk/d;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/unionpay/sdk/d;->d:Lcom/unionpay/sdk/d;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method
