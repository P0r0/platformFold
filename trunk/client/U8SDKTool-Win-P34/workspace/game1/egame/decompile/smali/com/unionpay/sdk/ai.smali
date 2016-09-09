.class Lcom/unionpay/sdk/ai;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/unionpay/sdk/OttoBus;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/unionpay/sdk/ai;->a:Lcom/unionpay/sdk/OttoBus;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/unionpay/sdk/OttoBus;
    .registers 3

    sget-object v0, Lcom/unionpay/sdk/ai;->a:Lcom/unionpay/sdk/OttoBus;

    if-nez v0, :cond_15

    const-class v1, Lcom/unionpay/sdk/ai;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/unionpay/sdk/ai;->a:Lcom/unionpay/sdk/OttoBus;

    if-nez v0, :cond_14

    new-instance v0, Lcom/unionpay/sdk/OttoBus;

    sget-object v2, Lcom/unionpay/sdk/OttoThreadEnforcer;->ANY:Lcom/unionpay/sdk/OttoThreadEnforcer;

    invoke-direct {v0, v2}, Lcom/unionpay/sdk/OttoBus;-><init>(Lcom/unionpay/sdk/OttoThreadEnforcer;)V

    sput-object v0, Lcom/unionpay/sdk/ai;->a:Lcom/unionpay/sdk/OttoBus;

    :cond_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_18

    :cond_15
    sget-object v0, Lcom/unionpay/sdk/ai;->a:Lcom/unionpay/sdk/OttoBus;

    return-object v0

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method
