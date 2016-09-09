.class final Lcom/unionpay/mobile/android/pro/views/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/pro/views/u;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/pro/views/u;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/v;->a:Lcom/unionpay/mobile/android/pro/views/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_48

    :cond_5
    :goto_5
    const/4 v0, 0x1

    return v0

    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_17

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/unionpay/mobile/android/model/a;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/v;->a:Lcom/unionpay/mobile/android/pro/views/u;

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/pro/views/u;->a(Lcom/unionpay/mobile/android/pro/views/u;Lcom/unionpay/mobile/android/model/a;)V

    goto :goto_5

    :cond_17
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/v;->a:Lcom/unionpay/mobile/android/pro/views/u;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/v;->a:Lcom/unionpay/mobile/android/pro/views/u;

    invoke-static {v1}, Lcom/unionpay/mobile/android/pro/views/u;->a(Lcom/unionpay/mobile/android/pro/views/u;)Lcom/unionpay/mobile/android/model/b;

    move-result-object v1

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->ak:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/pro/views/u;->a(Lcom/unionpay/mobile/android/pro/views/u;Ljava/lang/String;)V

    goto :goto_5

    :pswitch_25
    sget-boolean v0, Lcom/unionpay/mobile/android/model/b;->bg:Z

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/v;->a:Lcom/unionpay/mobile/android/pro/views/u;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/v;->a:Lcom/unionpay/mobile/android/pro/views/u;

    invoke-static {v1}, Lcom/unionpay/mobile/android/pro/views/u;->b(Lcom/unionpay/mobile/android/pro/views/u;)Lcom/unionpay/mobile/android/model/b;

    move-result-object v1

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->ak:Ljava/lang/String;

    const-string v2, "fail"

    invoke-static {v0, v1, v2}, Lcom/unionpay/mobile/android/pro/views/u;->a(Lcom/unionpay/mobile/android/pro/views/u;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_39
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/v;->a:Lcom/unionpay/mobile/android/pro/views/u;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/v;->a:Lcom/unionpay/mobile/android/pro/views/u;

    invoke-static {v1}, Lcom/unionpay/mobile/android/pro/views/u;->c(Lcom/unionpay/mobile/android/pro/views/u;)Lcom/unionpay/mobile/android/model/b;

    move-result-object v1

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->ak:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/pro/views/u;->b(Lcom/unionpay/mobile/android/pro/views/u;Ljava/lang/String;)V

    goto :goto_5

    nop

    :pswitch_data_48
    .packed-switch 0x7d0
        :pswitch_7
        :pswitch_25
    .end packed-switch
.end method
