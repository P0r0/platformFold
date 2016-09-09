.class abstract Lcom/unionpay/sdk/b;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:I


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/unionpay/sdk/b;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/unionpay/sdk/b;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/unionpay/sdk/b;->c:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/unionpay/sdk/b;->d:I

    return-void
.end method
