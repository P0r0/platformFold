.class final Lcom/unionpay/sdk/r$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unionpay/sdk/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field private static a:Landroid/os/Handler;

.field private static final b:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/unionpay/sdk/r$b;->a:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AdditionalHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/unionpay/sdk/r$b;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/unionpay/sdk/ac;

    sget-object v1, Lcom/unionpay/sdk/r$b;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unionpay/sdk/ac;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/unionpay/sdk/r$b;->a:Landroid/os/Handler;

    return-void
.end method

.method static final a()Landroid/os/Handler;
    .registers 1

    sget-object v0, Lcom/unionpay/sdk/r$b;->a:Landroid/os/Handler;

    return-object v0
.end method
