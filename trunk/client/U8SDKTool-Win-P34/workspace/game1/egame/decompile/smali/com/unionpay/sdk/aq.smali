.class final Lcom/unionpay/sdk/aq;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/os/Bundle;

.field b:Ljava/lang/Object;

.field c:I


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/unionpay/sdk/aq;->a:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/sdk/aq;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/unionpay/sdk/aq;->c:I

    return-void
.end method
