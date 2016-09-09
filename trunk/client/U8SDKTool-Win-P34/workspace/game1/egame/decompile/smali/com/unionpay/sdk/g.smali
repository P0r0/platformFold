.class Lcom/unionpay/sdk/g;
.super Lcom/unionpay/sdk/ae;


# static fields
.field private static volatile a:Lcom/unionpay/sdk/g;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/unionpay/sdk/g;->a:Lcom/unionpay/sdk/g;

    invoke-static {}, Lcom/unionpay/sdk/ai;->a()Lcom/unionpay/sdk/OttoBus;

    move-result-object v0

    invoke-static {}, Lcom/unionpay/sdk/g;->a()Lcom/unionpay/sdk/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/sdk/OttoBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/unionpay/sdk/ae;-><init>()V

    return-void
.end method

.method public static a()Lcom/unionpay/sdk/g;
    .registers 2

    sget-object v0, Lcom/unionpay/sdk/g;->a:Lcom/unionpay/sdk/g;

    if-nez v0, :cond_13

    const-class v1, Lcom/unionpay/sdk/g;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/unionpay/sdk/g;->a:Lcom/unionpay/sdk/g;

    if-nez v0, :cond_12

    new-instance v0, Lcom/unionpay/sdk/g;

    invoke-direct {v0}, Lcom/unionpay/sdk/g;-><init>()V

    sput-object v0, Lcom/unionpay/sdk/g;->a:Lcom/unionpay/sdk/g;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/unionpay/sdk/g;->a:Lcom/unionpay/sdk/g;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method
