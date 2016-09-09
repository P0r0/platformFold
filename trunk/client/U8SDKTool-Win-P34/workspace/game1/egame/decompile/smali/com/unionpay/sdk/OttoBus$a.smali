.class final Lcom/unionpay/sdk/OttoBus$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unionpay/sdk/OttoBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field final b:Lcom/unionpay/sdk/l;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/unionpay/sdk/l;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unionpay/sdk/OttoBus$a;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/unionpay/sdk/OttoBus$a;->b:Lcom/unionpay/sdk/l;

    return-void
.end method
