.class final Lcom/unionpay/sdk/d$a;
.super Lcom/unionpay/sdk/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unionpay/sdk/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic e:Lcom/unionpay/sdk/d;


# direct methods
.method constructor <init>(Lcom/unionpay/sdk/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/unionpay/sdk/d$a;->e:Lcom/unionpay/sdk/d;

    invoke-direct {p0}, Lcom/unionpay/sdk/b;-><init>()V

    iput-object p2, p0, Lcom/unionpay/sdk/d$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/unionpay/sdk/d$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/unionpay/sdk/d$a;->c:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/unionpay/sdk/d$a;->d:I

    return-void
.end method
