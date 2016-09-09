.class final Lcom/bbk/payment/alipay/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/bbk/payment/alipay/AliSecurityPayer;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/bbk/payment/alipay/AliSecurityPayer;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 4

    iput-object p1, p0, Lcom/bbk/payment/alipay/c;->a:Lcom/bbk/payment/alipay/AliSecurityPayer;

    iput-object p2, p0, Lcom/bbk/payment/alipay/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/bbk/payment/alipay/c;->c:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/bbk/payment/alipay/c;->a:Lcom/bbk/payment/alipay/AliSecurityPayer;

    iget-object v1, v0, Lcom/bbk/payment/alipay/AliSecurityPayer;->b:Ljava/lang/Integer;

    monitor-enter v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_d5

    :try_start_5
    iget-object v0, p0, Lcom/bbk/payment/alipay/c;->a:Lcom/bbk/payment/alipay/AliSecurityPayer;

    iget-object v0, v0, Lcom/bbk/payment/alipay/AliSecurityPayer;->c:Lcom/alipay/android/app/IAlixPay;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/bbk/payment/alipay/c;->a:Lcom/bbk/payment/alipay/AliSecurityPayer;

    iget-object v0, v0, Lcom/bbk/payment/alipay/AliSecurityPayer;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_d2

    :try_start_13
    iget-object v0, p0, Lcom/bbk/payment/alipay/c;->a:Lcom/bbk/payment/alipay/AliSecurityPayer;

    iget-object v0, v0, Lcom/bbk/payment/alipay/AliSecurityPayer;->c:Lcom/alipay/android/app/IAlixPay;

    iget-object v1, p0, Lcom/bbk/payment/alipay/c;->a:Lcom/bbk/payment/alipay/AliSecurityPayer;

    invoke-static {v1}, Lcom/bbk/payment/alipay/AliSecurityPayer;->a(Lcom/bbk/payment/alipay/AliSecurityPayer;)Lcom/alipay/android/app/IRemoteServiceCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/android/app/IAlixPay;->registerCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V

    iget-object v0, p0, Lcom/bbk/payment/alipay/c;->a:Lcom/bbk/payment/alipay/AliSecurityPayer;

    iget-object v0, v0, Lcom/bbk/payment/alipay/AliSecurityPayer;->c:Lcom/alipay/android/app/IAlixPay;

    iget-object v1, p0, Lcom/bbk/payment/alipay/c;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/android/app/IAlixPay;->Pay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bbk/payment/alipay/AliSecurityPayer;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pay result information: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bbk/payment/util/UtilTool;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bbk/payment/alipay/c;->a:Lcom/bbk/payment/alipay/AliSecurityPayer;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/bbk/payment/alipay/AliSecurityPayer;->d:Z

    iget-object v1, p0, Lcom/bbk/payment/alipay/c;->a:Lcom/bbk/payment/alipay/AliSecurityPayer;

    iget-object v1, v1, Lcom/bbk/payment/alipay/AliSecurityPayer;->c:Lcom/alipay/android/app/IAlixPay;

    iget-object v2, p0, Lcom/bbk/payment/alipay/c;->a:Lcom/bbk/payment/alipay/AliSecurityPayer;

    invoke-static {v2}, Lcom/bbk/payment/alipay/AliSecurityPayer;->a(Lcom/bbk/payment/alipay/AliSecurityPayer;)Lcom/alipay/android/app/IRemoteServiceCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/android/app/IAlixPay;->unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V

    iget-object v1, p0, Lcom/bbk/payment/alipay/c;->a:Lcom/bbk/payment/alipay/AliSecurityPayer;

    iget-object v1, v1, Lcom/bbk/payment/alipay/AliSecurityPayer;->e:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bbk/payment/alipay/c;->a:Lcom/bbk/payment/alipay/AliSecurityPayer;

    invoke-static {v2}, Lcom/bbk/payment/alipay/AliSecurityPayer;->b(Lcom/bbk/payment/alipay/AliSecurityPayer;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "***************** security pay result="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Lcom/bbk/payment/alipay/ResultChecker;

    invoke-direct {v1, v0}, Lcom/bbk/payment/alipay/ResultChecker;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/bbk/payment/alipay/ResultChecker;->alipayResponse(Ljava/lang/String;)Lcom/bbk/payment/model/ResultInfo;

    move-result-object v0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    invoke-virtual {v0}, Lcom/bbk/payment/model/ResultInfo;->getResult_what()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bbk/payment/model/ResultInfo;->getPay_msg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bbk/payment/model/ResultInfo;->getRes_code()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v2, Lcom/bbk/payment/alipay/AliSecurityPayer;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pay result =: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bbk/payment/model/ResultInfo;->getPay_msg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bbk/payment/model/ResultInfo;->getRes_code()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bbk/payment/util/UtilTool;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbk/payment/alipay/c;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_d1
    return-void

    :catchall_d2
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_d5} :catch_d5

    :catch_d5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bbk/payment/alipay/c;->a:Lcom/bbk/payment/alipay/AliSecurityPayer;

    iget-object v2, v2, Lcom/bbk/payment/alipay/AliSecurityPayer;->e:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/bbk/payment/alipay/c;->a:Lcom/bbk/payment/alipay/AliSecurityPayer;

    iget-object v3, v3, Lcom/bbk/payment/alipay/AliSecurityPayer;->e:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "bbk_pay_sys_error"

    invoke-static {v3, v4}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "#9999"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/bbk/payment/alipay/c;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_d1
.end method
