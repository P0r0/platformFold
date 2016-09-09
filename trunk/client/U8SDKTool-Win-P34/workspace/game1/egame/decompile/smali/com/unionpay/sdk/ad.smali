.class final Lcom/unionpay/sdk/ad;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/util/Map;

.field static b:Z

.field static c:Landroid/content/Context;

.field static d:Landroid/os/Handler;

.field static e:Ljava/nio/channels/FileChannel;

.field static f:J

.field static g:J

.field static h:Ljava/lang/String;

.field static i:Ljava/lang/String;

.field static j:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/unionpay/sdk/ad;->a:Ljava/util/Map;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unionpay/sdk/ad;->b:Z

    sput-object v1, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    sput-object v1, Lcom/unionpay/sdk/ad;->d:Landroid/os/Handler;

    sput-wide v2, Lcom/unionpay/sdk/ad;->f:J

    sput-wide v2, Lcom/unionpay/sdk/ad;->g:J

    const-string v0, ""

    sput-object v0, Lcom/unionpay/sdk/ad;->h:Ljava/lang/String;

    const-string v0, "Default"

    sput-object v0, Lcom/unionpay/sdk/ad;->i:Ljava/lang/String;

    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/unionpay/sdk/ad;->j:J

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-eqz p0, :cond_f

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/unionpay/sdk/ad;->d:Landroid/os/Handler;

    :cond_f
    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    sput-object p1, Lcom/unionpay/sdk/ad;->h:Ljava/lang/String;

    :cond_1d
    if-eqz p2, :cond_2b

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    sput-object p2, Lcom/unionpay/sdk/ad;->i:Ljava/lang/String;

    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Analytics SDK Initializing..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\tSDK_VERSION is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Android+unionpay+V1.1.2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\tApp ID is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/unionpay/sdk/ad;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\tApp Channel is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/unionpay/sdk/ad;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/sdk/al;->a(Ljava/lang/String;)V

    return-void
.end method
