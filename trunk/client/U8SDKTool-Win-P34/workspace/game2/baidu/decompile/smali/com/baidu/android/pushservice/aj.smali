.class Lcom/baidu/android/pushservice/aj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/baidu/android/pushservice/RegistrationReceiver;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/RegistrationReceiver;Landroid/content/Intent;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/baidu/android/pushservice/aj;->c:Lcom/baidu/android/pushservice/RegistrationReceiver;

    iput-object p2, p0, Lcom/baidu/android/pushservice/aj;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/baidu/android/pushservice/aj;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/baidu/android/pushservice/aj;->a:Landroid/content/Intent;

    const-string v1, "r_sync_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/baidu/android/pushservice/aj;->a:Landroid/content/Intent;

    const-string v1, "r_sync_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_40

    :goto_16
    return-void

    :pswitch_17
    iget-object v0, p0, Lcom/baidu/android/pushservice/aj;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/android/pushservice/aj;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/RegistrationReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_16

    :pswitch_1f
    iget-object v0, p0, Lcom/baidu/android/pushservice/aj;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/android/pushservice/aj;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/RegistrationReceiver;->b(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_16

    :pswitch_27
    iget-object v0, p0, Lcom/baidu/android/pushservice/aj;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/android/pushservice/aj;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/RegistrationReceiver;->c(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_16

    :pswitch_2f
    iget-object v0, p0, Lcom/baidu/android/pushservice/aj;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/android/pushservice/aj;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/RegistrationReceiver;->d(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_16

    :cond_37
    iget-object v0, p0, Lcom/baidu/android/pushservice/aj;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/android/pushservice/aj;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/RegistrationReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_16

    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_17
        :pswitch_1f
        :pswitch_27
        :pswitch_2f
    .end packed-switch
.end method
