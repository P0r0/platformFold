.class final Lcom/unionpay/sdk/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unionpay/sdk/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:J

.field b:I

.field c:Ljava/lang/String;

.field d:[B

.field e:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/unionpay/sdk/c$a;->a:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/unionpay/sdk/c$a;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/sdk/c$a;->c:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/unionpay/sdk/c$a;->d:[B

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/sdk/c$a;->e:Ljava/lang/String;

    return-void
.end method
