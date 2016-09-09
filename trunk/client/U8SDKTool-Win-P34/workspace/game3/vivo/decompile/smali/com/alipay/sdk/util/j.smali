.class final Lcom/alipay/sdk/util/j;
.super Lcom/alipay/android/app/IRemoteServiceCallback$Stub;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/alipay/sdk/util/h;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/util/h;)V
    .registers 2

    .prologue
    .line 185
    iput-object p1, p0, Lcom/alipay/sdk/util/j;->a:Lcom/alipay/sdk/util/h;

    invoke-direct {p0}, Lcom/alipay/android/app/IRemoteServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final isHideLoadingScreen()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public final payEnd(ZLjava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 196
    return-void
.end method

.method public final startActivity(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 205
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 208
    if-nez p4, :cond_f

    .line 209
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 212
    :cond_f
    :try_start_f
    const-string v1, "CallingPid"

    invoke-virtual {p4, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 213
    invoke-virtual {v0, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_17} :catch_2c

    .line 216
    :goto_17
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    iget-object v1, p0, Lcom/alipay/sdk/util/j;->a:Lcom/alipay/sdk/util/h;

    invoke-static {v1}, Lcom/alipay/sdk/util/h;->b(Lcom/alipay/sdk/util/h;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 219
    iget-object v1, p0, Lcom/alipay/sdk/util/j;->a:Lcom/alipay/sdk/util/h;

    invoke-static {v1}, Lcom/alipay/sdk/util/h;->b(Lcom/alipay/sdk/util/h;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 221
    :cond_2b
    return-void

    :catch_2c
    move-exception v1

    goto :goto_17
.end method
