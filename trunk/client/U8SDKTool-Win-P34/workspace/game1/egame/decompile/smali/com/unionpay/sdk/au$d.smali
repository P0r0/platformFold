.class final Lcom/unionpay/sdk/au$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unionpay/sdk/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 3

    const/16 v0, 0x258

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/unionpay/sdk/au$d;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/unionpay/sdk/au$d;->a:I

    iput-object p2, p0, Lcom/unionpay/sdk/au$d;->b:Ljava/lang/String;

    return-void
.end method
