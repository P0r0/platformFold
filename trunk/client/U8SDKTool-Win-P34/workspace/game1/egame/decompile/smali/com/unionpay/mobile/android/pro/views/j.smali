.class public final Lcom/unionpay/mobile/android/pro/views/j;
.super Lcom/unionpay/mobile/android/pro/views/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/pro/views/h;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final C()Lcom/unionpay/mobile/android/pro/pboc/engine/b;
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/j;->d:Landroid/content/Context;

    check-cast v0, Lcom/unionpay/uppay/PayActivity;

    const-class v1, Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/uppay/PayActivity;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    check-cast v0, Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public final a(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/j;->d:Landroid/content/Context;

    check-cast v0, Lcom/unionpay/uppay/PayActivity;

    const-class v1, Lcom/unionpay/mobile/android/hce/f;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/uppay/PayActivity;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2a

    check-cast v0, Lcom/unionpay/mobile/android/hce/f;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/hce/f;->a()V

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/hce/f;->a(I)V

    invoke-virtual {v0, p2}, Lcom/unionpay/mobile/android/hce/f;->b(I)V

    invoke-virtual {v0, p3}, Lcom/unionpay/mobile/android/hce/f;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/unionpay/mobile/android/hce/f;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Lcom/unionpay/mobile/android/hce/f;->c(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Lcom/unionpay/mobile/android/hce/f;->c(I)V

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/hce/f;->c()V

    :cond_2a
    return-void
.end method

.method public final v()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final w()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
