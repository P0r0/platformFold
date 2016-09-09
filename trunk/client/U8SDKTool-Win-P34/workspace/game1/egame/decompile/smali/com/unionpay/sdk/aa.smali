.class final Lcom/unionpay/sdk/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/sdk/aa;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    invoke-static {}, Lcom/unionpay/sdk/aw;->a()Ljava/nio/channels/FileChannel;

    move-result-object v0

    sput-object v0, Lcom/unionpay/sdk/ad;->e:Ljava/nio/channels/FileChannel;

    iget-object v0, p0, Lcom/unionpay/sdk/aa;->a:Landroid/content/Context;

    invoke-static {}, Lcom/unionpay/sdk/r;->b()V

    invoke-static {}, Lcom/unionpay/sdk/r;->c()V

    return-void
.end method
