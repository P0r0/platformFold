.class final Lcom/unionpay/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unionpay/ab;


# instance fields
.field final synthetic a:Lcom/unionpay/UPPayWapActivity;


# direct methods
.method constructor <init>(Lcom/unionpay/UPPayWapActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/p;->a:Lcom/unionpay/UPPayWapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/unionpay/ac;)V
    .registers 6

    iget-object v0, p0, Lcom/unionpay/p;->a:Lcom/unionpay/UPPayWapActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/unionpay/UPPayAssistEx;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_16

    iget-object v1, p0, Lcom/unionpay/p;->a:Lcom/unionpay/UPPayWapActivity;

    const-string v1, "0"

    const-string v2, "success"

    invoke-static {v1, v2, v0}, Lcom/unionpay/UPPayWapActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/unionpay/ac;->a(Ljava/lang/String;)V

    :cond_16
    return-void
.end method
