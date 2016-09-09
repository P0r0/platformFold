.class public Lcom/baidu/android/pushservice/ak;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/baidu/android/pushservice/i/v;

.field private c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    new-instance v0, Lcom/baidu/android/pushservice/i/v;

    invoke-direct {v0, p1}, Lcom/baidu/android/pushservice/i/v;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/android/pushservice/ak;->b:Lcom/baidu/android/pushservice/i/v;

    invoke-static {p1}, Lcom/baidu/android/pushservice/c/b;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/b;

    invoke-static {p1}, Lcom/baidu/android/pushservice/c/l;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/l;

    invoke-static {p1}, Lcom/baidu/android/pushservice/c/j;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/j;

    invoke-static {p1}, Lcom/baidu/android/pushservice/c/g;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/g;

    invoke-static {p1}, Lcom/baidu/android/pushservice/al;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/al;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x3

    const/16 v3, 0x64

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/baidu/android/pushservice/ak;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private A(Landroid/content/Intent;)V
    .registers 5

    const-string v0, "force_send"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/ak;->b:Lcom/baidu/android/pushservice/i/v;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/baidu/android/pushservice/i/v;->a(ZLcom/baidu/android/pushservice/util/f;)V

    return-void
.end method

.method private B(Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/PushSettings;->b(Landroid/content/Context;I)V

    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .registers 11

    const/4 v8, 0x0

    new-instance v1, Lcom/baidu/android/pushservice/e/m;

    invoke-direct {v1, p1}, Lcom/baidu/android/pushservice/e/m;-><init>(Landroid/content/Intent;)V

    const-string v0, "bind_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "bind_status"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "push_sdk_version"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v0, "RegistrationService"

    const-string v2, "<<< METHOD_BIND "

    iget-object v6, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v0, v2, v6}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string v0, "RegistrationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "packageName:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v1, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", bindName:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", bindStatus:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RegistrationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "accessToken:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v1, Lcom/baidu/android/pushservice/e/m;->d:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RegistrationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "apiKey:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v1, Lcom/baidu/android/pushservice/e/m;->i:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time of bind request back is:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/c/b;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/b;

    move-result-object v0

    iget-object v2, v1, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/baidu/android/pushservice/c/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/baidu/android/pushservice/e/m;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_146

    iget-object v2, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/android/pushservice/c/b;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/b;

    move-result-object v2

    iget-object v6, v1, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    iget-object v7, v1, Lcom/baidu/android/pushservice/e/m;->i:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lcom/baidu/android/pushservice/c/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_146

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_146

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "method"

    iget-object v5, v1, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "error_msg"

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "content"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v4, "bind_status"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "RegistrationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "> sendResult to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,method:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,errorCode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,content : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/android/pushservice/b;->b()I

    move-result v3

    if-lez v3, :cond_135

    iget-object v3, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    const-string v4, "039902"

    const/4 v5, 0x2

    invoke-static {v3, v4, v5, v0}, Lcom/baidu/android/pushservice/i/v;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)J

    :cond_135
    iget-object v0, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    const-string v3, "com.baidu.android.pushservice.action.RECEIVE"

    iget-object v1, v1, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RegistrationService"

    const-string v1, "Already binded, no need to bind anymore"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_145
    :goto_145
    return-void

    :cond_146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Time of bind request start at : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v2, v6}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/android/pushservice/b;->b()I

    move-result v2

    if-lez v2, :cond_16f

    iget-object v2, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    const-string v6, "039902"

    invoke-static {v2, v6, v8, v0}, Lcom/baidu/android/pushservice/i/v;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)J

    :cond_16f
    const-string v0, "bind_notify_status"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1eb

    const-string v0, "bind_notify_status"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/baidu/android/pushservice/e/g;

    iget-object v2, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-direct/range {v0 .. v6}, Lcom/baidu/android/pushservice/e/g;-><init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/ak;->a(Lcom/baidu/android/pushservice/e/a;)Z

    move-result v0

    const-string v2, "RegistrationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " notifystatus = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1a0
    if-nez v0, :cond_145

    const-string v0, "RegistrationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "submitApiProcessor failed bind "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/e/m;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "submitApiProcessor failed bind "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/e/m;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/baidu/android/pushservice/e/g;

    iget-object v2, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-direct/range {v0 .. v5}, Lcom/baidu/android/pushservice/e/g;-><init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;ILjava/lang/String;I)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto/16 :goto_145

    :cond_1eb
    new-instance v0, Lcom/baidu/android/pushservice/e/g;

    iget-object v2, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-direct/range {v0 .. v5}, Lcom/baidu/android/pushservice/e/g;-><init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;ILjava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/ak;->a(Lcom/baidu/android/pushservice/e/a;)Z

    move-result v0

    goto :goto_1a0
.end method

.method private c(Landroid/content/Intent;)V
    .registers 9

    const/4 v5, 0x0

    const-string v0, "secret_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/baidu/android/pushservice/c/k;

    invoke-direct {v1, v0}, Lcom/baidu/android/pushservice/c/k;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/c/l;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/l;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/android/pushservice/c/l;->a(Lcom/baidu/android/pushservice/c/a;Z)Ljava/lang/String;

    new-instance v1, Lcom/baidu/android/pushservice/e/m;

    invoke-direct {v1, p1}, Lcom/baidu/android/pushservice/e/m;-><init>(Landroid/content/Intent;)V

    const-string v0, "bind_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "bind_status"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "push_sdk_version"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v0, "RegistrationService"

    const-string v2, "<<< METHOD_WEB_APP_BIND "

    iget-object v6, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v0, v2, v6}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string v0, "RegistrationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "packageName:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v1, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", bindName:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", bindStatus:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RegistrationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "accessToken:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v1, Lcom/baidu/android/pushservice/e/m;->d:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RegistrationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "apiKey:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v1, Lcom/baidu/android/pushservice/e/m;->i:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/baidu/android/pushservice/e/g;

    iget-object v2, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-direct/range {v0 .. v5}, Lcom/baidu/android/pushservice/e/g;-><init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;ILjava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/ak;->a(Lcom/baidu/android/pushservice/e/a;)Z

    return-void
.end method

.method private d(Landroid/content/Intent;)V
    .registers 9

    const/4 v5, 0x0

    const-string v0, "secret_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/baidu/android/pushservice/c/f;

    invoke-direct {v1, v0}, Lcom/baidu/android/pushservice/c/f;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/c/g;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/g;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/android/pushservice/c/g;->a(Lcom/baidu/android/pushservice/c/a;Z)Ljava/lang/String;

    new-instance v1, Lcom/baidu/android/pushservice/e/m;

    invoke-direct {v1, p1}, Lcom/baidu/android/pushservice/e/m;-><init>(Landroid/content/Intent;)V

    const-string v0, "bind_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "bind_status"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "push_sdk_version"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v0, "RegistrationService"

    const-string v2, "<<< METHOD_LAPP_BIND "

    iget-object v6, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v0, v2, v6}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string v0, "RegistrationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "packageName:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v1, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", bindName:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", bindStatus:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RegistrationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "accessToken:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v1, Lcom/baidu/android/pushservice/e/m;->d:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RegistrationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "apiKey:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v1, Lcom/baidu/android/pushservice/e/m;->i:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/baidu/android/pushservice/e/g;

    iget-object v2, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-direct/range {v0 .. v5}, Lcom/baidu/android/pushservice/e/g;-><init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;ILjava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/ak;->a(Lcom/baidu/android/pushservice/e/a;)Z

    return-void
.end method

.method private e(Landroid/content/Intent;)V
    .registers 7

    const-string v0, "secret_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/c/g;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/android/pushservice/c/g;->c(Ljava/lang/String;)Lcom/baidu/android/pushservice/c/a;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/c/f;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.baidu.android.pushservice.action.lapp.RECEIVE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "method"

    const-string v4, "method_get_lapp_bind_state"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "secret_key"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v0, :cond_36

    const-string v0, "lapp_bind_state"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_30
    iget-object v0, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_36
    const-string v0, "lapp_bind_state"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_30
.end method

.method private f(Landroid/content/Intent;)V
    .registers 10

    const/4 v2, 0x0

    new-instance v1, Lcom/baidu/android/pushservice/e/m;

    invoke-direct {v1, p1}, Lcom/baidu/android/pushservice/e/m;-><init>(Landroid/content/Intent;)V

    const-string v0, "bind_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "bind_status"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "push_sdk_version"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v0, "sdk_client_version"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Lcom/baidu/android/pushservice/c/i;

    iget-object v6, v1, Lcom/baidu/android/pushservice/e/m;->i:Ljava/lang/String;

    iget-object v7, v1, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-direct {v2, v6, v7}, Lcom/baidu/android/pushservice/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/baidu/android/pushservice/c/i;->a(I)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/c/j;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/j;

    move-result-object v0

    const/4 v6, 0x1

    invoke-virtual {v0, v2, v6}, Lcom/baidu/android/pushservice/c/j;->a(Lcom/baidu/android/pushservice/c/a;Z)Ljava/lang/String;

    const-string v0, "RegistrationService"

    const-string v2, "<<< METHOD_SDK_BIND "

    iget-object v6, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v0, v2, v6}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string v0, "RegistrationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "packageName:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v1, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", bindName:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", bindStatus:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RegistrationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "accessToken:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v1, Lcom/baidu/android/pushservice/e/m;->d:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/baidu/android/pushservice/e/g;

    iget-object v2, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-direct/range {v0 .. v5}, Lcom/baidu/android/pushservice/e/g;-><init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;ILjava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/ak;->a(Lcom/baidu/android/pushservice/e/a;)Z

    return-void
.end method

.method private g(Landroid/content/Intent;)V
    .registers 6

    new-instance v0, Lcom/baidu/android/pushservice/e/m;

    invoke-direct {v0, p1}, Lcom/baidu/android/pushservice/e/m;-><init>(Landroid/content/Intent;)V

    const-string v1, "RegistrationService"

    const-string v2, "<<< METHOD_UNBIND "

    iget-object v3, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string v1, "RegistrationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "RegistrationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accessToken:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/baidu/android/pushservice/e/m;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "RegistrationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apiKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/baidu/android/pushservice/e/m;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_95

    iget-object v1, v0, Lcom/baidu/android/pushservice/e/m;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_95

    iget-object v1, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/c/b;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/b;

    move-result-object v1

    iget-object v2, v0, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/android/pushservice/c/b;->c(Ljava/lang/String;)Lcom/baidu/android/pushservice/c/h;

    move-result-object v1

    if-eqz v1, :cond_8a

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/c/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8a

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/c/h;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/e/m;->f:Ljava/lang/String;

    :cond_8a
    iget-object v1, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/c/b;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/b;

    move-result-object v1

    iget-object v2, v0, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/android/pushservice/c/b;->f(Ljava/lang/String;)V

    :cond_95
    new-instance v1, Lcom/baidu/android/pushservice/e/ad;

    iget-object v2, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/baidu/android/pushservice/e/ad;-><init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/baidu/android/pushservice/ak;->a(Lcom/baidu/android/pushservice/e/a;)Z

    return-void
.end method

.method private h(Landroid/content/Intent;)V
    .registers 6

    new-instance v0, Lcom/baidu/android/pushservice/e/m;

    invoke-direct {v0, p1}, Lcom/baidu/android/pushservice/e/m;-><init>(Landroid/content/Intent;)V

    const-string v1, "RegistrationService"

    const-string v2, "<<< METHOD_SDK_UNBIND "

    iget-object v3, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string v1, "RegistrationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "RegistrationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accessToken:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/baidu/android/pushservice/e/m;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "RegistrationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apiKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/baidu/android/pushservice/e/m;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/baidu/android/pushservice/e/ad;

    iget-object v2, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/baidu/android/pushservice/e/ad;-><init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/baidu/android/pushservice/ak;->a(Lcom/baidu/android/pushservice/e/a;)Z

    return-void
.end method

.method private i(Landroid/content/Intent;)V
    .registers 6

    new-instance v0, Lcom/baidu/android/pushservice/e/m;

    invoke-direct {v0, p1}, Lcom/baidu/android/pushservice/e/m;-><init>(Landroid/content/Intent;)V

    const-string v1, "RegistrationService"

    const-string v2, "<<< METHOD_LAPP_UNBIND "

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "RegistrationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "RegistrationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accessToken:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/baidu/android/pushservice/e/m;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "RegistrationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apiKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/baidu/android/pushservice/e/m;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/baidu/android/pushservice/e/ad;

    iget-object v2, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/baidu/android/pushservice/e/ad;-><init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/baidu/android/pushservice/ak;->a(Lcom/baidu/android/pushservice/e/a;)Z

    return-void
.end method

.method private j(Landroid/content/Intent;)Z
    .registers 8

    const-string v0, "package_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "app_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/android/pushservice/c/b;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/android/pushservice/c/b;->c(Ljava/lang/String;)Lcom/baidu/android/pushservice/c/h;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/c/h;->a()Ljava/lang/String;

    move-result-object v0

    :cond_22
    const-string v2, "user_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "RegistrationService"

    const-string v4, "<<< METHOD_UNBIND_APP "

    invoke-static {v3, v4}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "RegistrationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "RegistrationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "RegistrationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "userid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/baidu/android/pushservice/PushSettings;->b(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v3, Lcom/baidu/android/pushservice/e/m;

    invoke-direct {v3}, Lcom/baidu/android/pushservice/e/m;-><init>()V

    const-string v4, "com.baidu.android.pushservice.action.UNBINDAPP"

    iput-object v4, v3, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8d

    iput-object v1, v3, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    :cond_8d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_95

    iput-object v0, v3, Lcom/baidu/android/pushservice/e/m;->f:Ljava/lang/String;

    :cond_95
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9d

    iput-object v2, v3, Lcom/baidu/android/pushservice/e/m;->g:Ljava/lang/String;

    :cond_9d
    iget-object v0, v3, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ce

    iget-object v0, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/c/b;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/b;

    move-result-object v0

    iget-object v1, v3, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/android/pushservice/c/b;->c(Ljava/lang/String;)Lcom/baidu/android/pushservice/c/h;

    move-result-object v0

    if-eqz v0, :cond_c3

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/c/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c3

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/c/h;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/baidu/android/pushservice/e/m;->f:Ljava/lang/String;

    :cond_c3
    iget-object v0, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/c/b;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/b;

    move-result-object v0

    iget-object v1, v3, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/android/pushservice/c/b;->f(Ljava/lang/String;)V

    :cond_ce
    new-instance v0, Lcom/baidu/android/pushservice/e/ae;

    iget-object v1, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-direct {v0, v3, v1}, Lcom/baidu/android/pushservice/e/ae;-><init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/ak;->a(Lcom/baidu/android/pushservice/e/a;)Z

    move-result v0

    return v0
.end method

.method private k(Landroid/content/Intent;)V
    .registers 8

    const/4 v3, 0x1

    new-instance v0, Lcom/baidu/android/pushservice/e/m;

    invoke-direct {v0, p1}, Lcom/baidu/android/pushservice/e/m;-><init>(Landroid/content/Intent;)V

    const-string v1, "fetch_type"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "fetch_num"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "RegistrationService"

    const-string v4, "<<< METHOD_FETCH "

    iget-object v5, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v3, v4, v5}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string v3, "RegistrationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "RegistrationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accessToken:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/baidu/android/pushservice/e/m;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/baidu/android/pushservice/e/n;

    iget-object v4, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-direct {v3, v0, v4, v1, v2}, Lcom/baidu/android/pushservice/e/n;-><init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;II)V

    invoke-virtual {p0, v3}, Lcom/baidu/android/pushservice/ak;->a(Lcom/baidu/android/pushservice/e/a;)Z

    return-void
.end method

.method private l(Landroid/content/Intent;)V
    .registers 6

    new-instance v0, Lcom/baidu/android/pushservice/e/m;

    invoke-direct {v0, p1}, Lcom/baidu/android/pushservice/e/m;-><init>(Landroid/content/Intent;)V

    const-string v1, "RegistrationService"

    const-string v2, "<<< METHOD_COUNT "

    iget-object v3, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string v1, "RegistrationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "RegistrationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accessToken:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/baidu/android/pushservice/e/m;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/baidu/android/pushservice/e/i;

    iget-object v2, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/baidu/android/pushservice/e/i;-><init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/baidu/android/pushservice/ak;->a(Lcom/baidu/android/pushservice/e/a;)Z

    return-void
.end method

.method private m(Landroid/content/Intent;)V
    .registers 7

    new-instance v0, Lcom/baidu/android/pushservice/e/m;

    invoke-direct {v0, p1}, Lcom/baidu/android/pushservice/e/m;-><init>(Landroid/content/Intent;)V

    const-string v1, "msg_ids"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegistrationService"

    const-string v3, "<<< METHOD_DELETE "

    iget-object v4, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v2, v3, v4}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string v2, "RegistrationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "RegistrationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accessToken:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/baidu/android/pushservice/e/m;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/baidu/android/pushservice/e/l;

    iget-object v3, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-direct {v2, v0, v3, v1}, Lcom/baidu/android/pushservice/e/l;-><init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/baidu/android/pushservice/ak;->a(Lcom/baidu/android/pushservice/e/a;)Z

    return-void
.end method

.method private n(Landroid/content/Intent;)V
    .registers 7

    new-instance v0, Lcom/baidu/android/pushservice/e/m;

    invoke-direct {v0, p1}, Lcom/baidu/android/pushservice/e/m;-><init>(Landroid/content/Intent;)V

    const-string v1, "gid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegistrationService"

    const-string v3, "<<< ACTION_GBIND "

    iget-object v4, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v2, v3, v4}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string v2, "RegistrationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", gid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "RegistrationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accessToken:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/baidu/android/pushservice/e/m;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/baidu/android/pushservice/e/p;

    iget-object v3, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-direct {v2, v0, v3, v1}, Lcom/baidu/android/pushservice/e/p;-><init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/baidu/android/pushservice/ak;->a(Lcom/baidu/android/pushservice/e/a;)Z

    return-void
.end method

.method private o(Landroid/content/Intent;)V
    .registers 7

    new-instance v0, Lcom/baidu/android/pushservice/e/m;

    invoke-direct {v0, p1}, Lcom/baidu/android/pushservice/e/m;-><init>(Landroid/content/Intent;)V

    const-string v1, "tags"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegistrationService"

    const-string v3, "<<< ACTION_SET_TAGS "

    iget-object v4, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v2, v3, v4}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string v2, "RegistrationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", gid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "RegistrationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accessToken:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/baidu/android/pushservice/e/m;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/baidu/android/pushservice/e/ab;

    iget-object v3, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-direct {v2, v0, v3, v1}, Lcom/baidu/android/pushservice/e/ab;-><init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/baidu/android/pushservice/ak;->a(Lcom/baidu/android/pushservice/e/a;)Z

    return-void
.end method

.method private p(Landroid/content/Intent;)V
    .registers 7

    new-instance v0, Lcom/baidu/android/pushservice/e/m;

    invoke-direct {v0, p1}, Lcom/baidu/android/pushservice/e/m;-><init>(Landroid/content/Intent;)V

    const-string v1, "tags"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegistrationService"

    const-string v3, "<<< ACTION_GBIND "

    iget-object v4, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v2, v3, v4}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string v2, "RegistrationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", gid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "RegistrationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accessToken:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/baidu/android/pushservice/e/m;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/baidu/android/pushservice/e/k;

    iget-object v3, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-direct {v2, v0, v3, v1}, Lcom/baidu/android/pushservice/e/k;-><init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/baidu/android/pushservice/ak;->a(Lcom/baidu/android/pushservice/e/a;)Z

    return-void
.end method

.method private q(Landroid/content/Intent;)V
    .registers 7

    new-instance v0, Lcom/baidu/android/pushservice/e/m;

    invoke-direct {v0, p1}, Lcom/baidu/android/pushservice/e/m;-><init>(Landroid/content/Intent;)V

    const-string v1, "gid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegistrationService"

    const-string v3, "<<< ACTION_GUNBIND "

    iget-object v4, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v2, v3, v4}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string v2, "RegistrationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", gid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "RegistrationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accessToken:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/baidu/android/pushservice/e/m;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/baidu/android/pushservice/e/s;

    iget-object v3, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-direct {v2, v0, v3, v1}, Lcom/baidu/android/pushservice/e/s;-><init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/baidu/android/pushservice/ak;->a(Lcom/baidu/android/pushservice/e/a;)Z

    return-void
.end method

.method private r(Landroid/content/Intent;)V
    .registers 7

    new-instance v0, Lcom/baidu/android/pushservice/e/m;

    invoke-direct {v0, p1}, Lcom/baidu/android/pushservice/e/m;-><init>(Landroid/content/Intent;)V

    const-string v1, "gid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegistrationService"

    const-string v3, "<<< METHOD_GINFO "

    iget-object v4, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v2, v3, v4}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string v2, "RegistrationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", gid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "RegistrationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accessToken:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/baidu/android/pushservice/e/m;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/baidu/android/pushservice/e/q;

    iget-object v3, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-direct {v2, v0, v3, v1}, Lcom/baidu/android/pushservice/e/q;-><init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/baidu/android/pushservice/ak;->a(Lcom/baidu/android/pushservice/e/a;)Z

    return-void
.end method

.method private s(Landroid/content/Intent;)V
    .registers 6

    new-instance v0, Lcom/baidu/android/pushservice/e/m;

    invoke-direct {v0, p1}, Lcom/baidu/android/pushservice/e/m;-><init>(Landroid/content/Intent;)V

    const-string v1, "RegistrationService"

    const-string v2, "<<< METHOD_LISTTAGS "

    iget-object v3, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string v1, "RegistrationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "RegistrationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accessToken:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/baidu/android/pushservice/e/m;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/baidu/android/pushservice/e/x;

    iget-object v2, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/baidu/android/pushservice/e/x;-><init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/baidu/android/pushservice/ak;->a(Lcom/baidu/android/pushservice/e/a;)Z

    return-void
.end method

.method private t(Landroid/content/Intent;)V
    .registers 6

    new-instance v0, Lcom/baidu/android/pushservice/e/m;

    invoke-direct {v0, p1}, Lcom/baidu/android/pushservice/e/m;-><init>(Landroid/content/Intent;)V

    const-string v1, "RegistrationService"

    const-string v2, "<<< METHOD_GLIST "

    iget-object v3, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string v1, "RegistrationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "RegistrationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accessToken:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/baidu/android/pushservice/e/m;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/baidu/android/pushservice/e/r;

    iget-object v2, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/baidu/android/pushservice/e/r;-><init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/baidu/android/pushservice/ak;->a(Lcom/baidu/android/pushservice/e/a;)Z

    return-void
.end method

.method private u(Landroid/content/Intent;)V
    .registers 9

    const/4 v2, 0x1

    new-instance v1, Lcom/baidu/android/pushservice/e/m;

    invoke-direct {v1, p1}, Lcom/baidu/android/pushservice/e/m;-><init>(Landroid/content/Intent;)V

    const-string v0, "gid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "group_fetch_type"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v0, "group_fetch_num"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v0, "RegistrationService"

    const-string v2, "<<< METHOD_FETCHGMSG "

    iget-object v6, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v0, v2, v6}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string v0, "RegistrationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "packageName:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v1, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RegistrationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "accessToken:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v1, Lcom/baidu/android/pushservice/e/m;->d:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RegistrationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gid:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RegistrationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fetchType:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RegistrationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fetchNum:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/baidu/android/pushservice/e/o;

    iget-object v2, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-direct/range {v0 .. v5}, Lcom/baidu/android/pushservice/e/o;-><init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/ak;->a(Lcom/baidu/android/pushservice/e/a;)Z

    return-void
.end method

.method private v(Landroid/content/Intent;)V
    .registers 7

    new-instance v0, Lcom/baidu/android/pushservice/e/m;

    invoke-direct {v0, p1}, Lcom/baidu/android/pushservice/e/m;-><init>(Landroid/content/Intent;)V

    const-string v1, "gid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegistrationService"

    const-string v3, "<<< METHOD_COUNTGMSG "

    iget-object v4, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v2, v3, v4}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string v2, "RegistrationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "RegistrationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accessToken:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/baidu/android/pushservice/e/m;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "RegistrationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/baidu/android/pushservice/e/j;

    iget-object v3, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-direct {v2, v0, v3, v1}, Lcom/baidu/android/pushservice/e/j;-><init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/baidu/android/pushservice/ak;->a(Lcom/baidu/android/pushservice/e/a;)Z

    return-void
.end method

.method private w(Landroid/content/Intent;)V
    .registers 6

    new-instance v0, Lcom/baidu/android/pushservice/e/m;

    invoke-direct {v0, p1}, Lcom/baidu/android/pushservice/e/m;-><init>(Landroid/content/Intent;)V

    const-string v1, "RegistrationService"

    const-string v2, "<<< METHOD_ONLINE "

    iget-object v3, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string v1, "RegistrationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "RegistrationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accessToken:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/baidu/android/pushservice/e/m;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/baidu/android/pushservice/e/y;

    iget-object v2, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/baidu/android/pushservice/e/y;-><init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/baidu/android/pushservice/ak;->a(Lcom/baidu/android/pushservice/e/a;)Z

    return-void
.end method

.method private x(Landroid/content/Intent;)V
    .registers 6

    new-instance v0, Lcom/baidu/android/pushservice/e/m;

    invoke-direct {v0, p1}, Lcom/baidu/android/pushservice/e/m;-><init>(Landroid/content/Intent;)V

    const-string v1, "RegistrationService"

    const-string v2, "<<< METHOD_SEND "

    iget-object v3, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string v1, "RegistrationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "RegistrationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accessToken:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/baidu/android/pushservice/e/m;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "push_ msg"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/baidu/android/pushservice/e/z;

    iget-object v3, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-direct {v2, v0, v3, v1}, Lcom/baidu/android/pushservice/e/z;-><init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/baidu/android/pushservice/ak;->a(Lcom/baidu/android/pushservice/e/a;)Z

    return-void
.end method

.method private y(Landroid/content/Intent;)V
    .registers 9

    new-instance v1, Lcom/baidu/android/pushservice/e/m;

    invoke-direct {v1, p1}, Lcom/baidu/android/pushservice/e/m;-><init>(Landroid/content/Intent;)V

    const-string v0, "RegistrationService"

    const-string v2, "<<< METHOD_SEND_MSG_TO_USER "

    iget-object v3, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string v0, "RegistrationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RegistrationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accessToken:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/baidu/android/pushservice/e/m;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "app_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "user_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "push_ msg_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "push_ msg"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/baidu/android/pushservice/e/aa;

    iget-object v2, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-direct/range {v0 .. v6}, Lcom/baidu/android/pushservice/e/aa;-><init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/ak;->a(Lcom/baidu/android/pushservice/e/a;)Z

    return-void
.end method

.method private z(Landroid/content/Intent;)V
    .registers 5

    const-string v0, "RegistrationService"

    const-string v1, "<<< handleSendAppStat "

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/ak;->b:Lcom/baidu/android/pushservice/i/v;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/v;->a()V

    iget-object v0, p0, Lcom/baidu/android/pushservice/ak;->b:Lcom/baidu/android/pushservice/i/v;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/android/pushservice/i/v;->a(ZLcom/baidu/android/pushservice/util/f;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Z
    .registers 14

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v11, 0x1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_f
    move v11, v0

    :cond_10
    :goto_10
    return v11

    :cond_11
    const-string v2, "RegistrationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RegistrationSerice handleIntent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RegistrationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleIntent...action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v3, v4, v5}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string v3, "com.baidu.android.pushservice.action.OPENDEBUGMODE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v0, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v0, v11}, Lcom/baidu/android/pushservice/PushSettings;->enableDebugMode(Landroid/content/Context;Z)V

    const-string v0, "RegistrationService"

    const-string v1, "<<<debugMode is open"

    iget-object v2, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_10

    :cond_5e
    const-string v3, "com.baidu.android.pushservice.action.CLOSEDEBUGMODE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    iget-object v1, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/PushSettings;->enableDebugMode(Landroid/content/Context;Z)V

    const-string v0, "RegistrationService"

    const-string v1, "<<<debugMode is close"

    iget-object v2, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_10

    :cond_75
    const-string v3, "com.baidu.pushservice.action.publicmsg.CLICK_V2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_85

    const-string v3, "com.baidu.pushservice.action.publicmsg.DELETE_V2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9c

    :cond_85
    const-string v0, "public_msg"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/message/PublicMsg;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-virtual {v0, v3, v2, v1}, Lcom/baidu/android/pushservice/message/PublicMsg;->handle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_9c
    const-string v3, "com.baidu.android.pushservice.action.privatenotification.CLICK"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ac

    const-string v3, "com.baidu.android.pushservice.action.privatenotification.DELETE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c7

    :cond_ac
    const-string v0, "public_msg"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/message/PublicMsg;

    const-string v1, "app_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "msg_id"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/baidu/android/pushservice/message/PublicMsg;->handlePrivateNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_c7
    const-string v3, "com.baidu.android.pushservice.action.passthrough.notification.CLICK"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_df

    const-string v3, "com.baidu.android.pushservice.action.passthrough.notification.DELETE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_df

    const-string v3, "com.baidu.android.pushservice.action.passthrough.notification.NOTIFIED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_121

    :cond_df
    const-string v0, "push_passthrough: receive  click delete and notified action"

    iget-object v3, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    const-string v0, "RegistrationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handle passthrough notification "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "app_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_458

    const-string v0, "app_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_10c
    const-string v3, "msg_id"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11a

    const-string v1, "msg_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_11a
    iget-object v3, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v3, v1, v0, v2}, Lcom/baidu/android/pushservice/i/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_121
    const-string v1, "com.baidu.android.pushservice.action.adnotification.ADCLICK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_139

    const-string v1, "com.baidu.android.pushservice.action.adnotification.ADDELETE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_139

    const-string v1, "com.baidu.android.pushservice.action.adnotification.ADCLICKFAILED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16d

    :cond_139
    const-string v0, "pushadvertise: receive  click or delete action"

    iget-object v1, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    const-string v0, "ad_msg"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/message/PublicMsg;

    const-string v1, "app_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "msg_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "action_type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "click_url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "advertise_Style"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/android/pushservice/message/PublicMsg;->handleADNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_16d
    const-string v1, "com.baidu.android.pushservice.action.adnotification.ADSHOW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a7

    invoke-static {}, Lcom/baidu/android/pushservice/b;->b()I

    move-result v1

    if-lez v1, :cond_182

    const-string v1, "pushadvertise: receive show action  com.baidu.android.pushservice.action.adnotification.ADSHOW"

    iget-object v3, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    :cond_182
    const-string v1, "ad_msg"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/baidu/android/pushservice/message/PublicMsg;

    const-string v1, "app_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "message_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "action_type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "advertisestyle"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v4, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-virtual/range {v3 .. v8}, Lcom/baidu/android/pushservice/message/PublicMsg;->handleADShowNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a7
    const-string v1, "com.baidu.android.pushservice.action.setadswitch.ADFAILED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e1

    invoke-static {}, Lcom/baidu/android/pushservice/b;->b()I

    move-result v1

    if-lez v1, :cond_1bc

    const-string v1, "pushadvertise: receive  action  com.baidu.android.pushservice.action.setadswitch.ADFAILED"

    iget-object v3, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    :cond_1bc
    const-string v1, "ad_status"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v1, "app_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "channel_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "cuid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "sdkversion"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v9

    iget-object v3, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    const-string v4, "010504"

    invoke-static/range {v3 .. v9}, Lcom/baidu/android/pushservice/message/PublicMsg;->insertADSetEnableFailed(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    :cond_1e1
    const-string v1, "com.baidu.android.pushservice.action.ADACKERROR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_221

    invoke-static {}, Lcom/baidu/android/pushservice/b;->b()I

    move-result v1

    if-lez v1, :cond_1f6

    const-string v1, "pushadvertise: receive  action  com.baidu.android.pushservice.action.ADACKERROR"

    iget-object v3, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    :cond_1f6
    const-string v1, "app_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "channel_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "cuid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "error_code"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v1, "error_msg"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v1, "ad_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v3, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    const-string v4, "010505"

    invoke-static/range {v3 .. v10}, Lcom/baidu/android/pushservice/message/PublicMsg;->insertADSendACKFailed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_221
    const-string v1, "com.baidu.android.pushservice.action.media.CLICK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_231

    const-string v1, "com.baidu.android.pushservice.action.media.DELETE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_246

    :cond_231
    const-string v0, "public_msg"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/message/PublicMsg;

    const-string v1, "app_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-virtual {v0, v3, v2, v1}, Lcom/baidu/android/pushservice/message/PublicMsg;->handleRichMediaNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_246
    const-string v1, "com.baidu.android.pushservice.action.lightapp.notification.CLICK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_255

    iget-object v0, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/baidu/android/pushservice/message/a/g;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_10

    :cond_255
    const-string v1, "com.baidu.android.pushservice.action.lightapp.notification.DELETE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_264

    iget-object v0, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/baidu/android/pushservice/message/a/g;->b(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_10

    :cond_264
    const-string v1, "com.baidu.pushservice.action.TOKEN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28e

    const-string v0, "RegistrationService"

    const-string v1, "<<< ACTION_TOKEN "

    iget-object v2, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/al;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/al;->d()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/al;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/al;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v11}, Lcom/baidu/android/pushservice/al;->a(Landroid/content/Context;Z)V

    goto/16 :goto_10

    :cond_28e
    const-string v1, "com.baidu.android.pushservice.action.METHOD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_299

    move v11, v0

    goto/16 :goto_10

    :cond_299
    const-string v1, "method"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "method_bind"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2ae

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/ak;->b(Landroid/content/Intent;)V

    move v0, v11

    :cond_2ab
    :goto_2ab
    move v11, v0

    goto/16 :goto_10

    :cond_2ae
    const-string v2, "method_webapp_bind_from_deeplink"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c4

    const-string v0, "com.baidu.pushservice.webapp.apikey"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-static {v1, v2, v0}, Lcom/baidu/android/pushservice/PushManager;->startWork(Landroid/content/Context;ILjava/lang/String;)V

    move v0, v11

    goto :goto_2ab

    :cond_2c4
    const-string v2, "method_deal_webapp_bind_intent"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d1

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/ak;->c(Landroid/content/Intent;)V

    move v0, v11

    goto :goto_2ab

    :cond_2d1
    const-string v2, "method_deal_lapp_bind_intent"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2de

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/ak;->d(Landroid/content/Intent;)V

    move v0, v11

    goto :goto_2ab

    :cond_2de
    const-string v2, "method_get_lapp_bind_state"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2eb

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/ak;->e(Landroid/content/Intent;)V

    move v0, v11

    goto :goto_2ab

    :cond_2eb
    const-string v2, "method_sdk_bind"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f8

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/ak;->f(Landroid/content/Intent;)V

    move v0, v11

    goto :goto_2ab

    :cond_2f8
    const-string v2, "method_unbind"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_305

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/ak;->g(Landroid/content/Intent;)V

    move v0, v11

    goto :goto_2ab

    :cond_305
    const-string v2, "method_sdk_unbind"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_312

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/ak;->h(Landroid/content/Intent;)V

    move v0, v11

    goto :goto_2ab

    :cond_312
    const-string v2, "method_lapp_unbind"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31f

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/ak;->i(Landroid/content/Intent;)V

    move v0, v11

    goto :goto_2ab

    :cond_31f
    const-string v2, "com.baidu.android.pushservice.action.UNBINDAPP"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32c

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/ak;->j(Landroid/content/Intent;)Z

    move v0, v11

    goto :goto_2ab

    :cond_32c
    const-string v2, "method_fetch"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33a

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/ak;->k(Landroid/content/Intent;)V

    move v0, v11

    goto/16 :goto_2ab

    :cond_33a
    const-string v2, "method_count"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_348

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/ak;->l(Landroid/content/Intent;)V

    move v0, v11

    goto/16 :goto_2ab

    :cond_348
    const-string v2, "method_delete"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_356

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/ak;->m(Landroid/content/Intent;)V

    move v0, v11

    goto/16 :goto_2ab

    :cond_356
    const-string v2, "method_gbind"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_364

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/ak;->n(Landroid/content/Intent;)V

    move v0, v11

    goto/16 :goto_2ab

    :cond_364
    const-string v2, "method_set_tags"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37c

    const-string v2, "method_set_sdk_tags"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37c

    const-string v2, "method_set_lapp_tags"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_382

    :cond_37c
    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/ak;->o(Landroid/content/Intent;)V

    move v0, v11

    goto/16 :goto_2ab

    :cond_382
    const-string v2, "method_del_tags"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39a

    const-string v2, "method_del_sdk_tags"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39a

    const-string v2, "method_del_lapp_tags"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a0

    :cond_39a
    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/ak;->p(Landroid/content/Intent;)V

    move v0, v11

    goto/16 :goto_2ab

    :cond_3a0
    const-string v2, "method_gunbind"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3ae

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/ak;->q(Landroid/content/Intent;)V

    move v0, v11

    goto/16 :goto_2ab

    :cond_3ae
    const-string v2, "method_ginfo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3bc

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/ak;->r(Landroid/content/Intent;)V

    move v0, v11

    goto/16 :goto_2ab

    :cond_3bc
    const-string v2, "method_glist"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3ca

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/ak;->t(Landroid/content/Intent;)V

    move v0, v11

    goto/16 :goto_2ab

    :cond_3ca
    const-string v2, "method_listtags"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e2

    const-string v2, "method_list_sdk_tags"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e2

    const-string v2, "method_list_lapp_tags"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e8

    :cond_3e2
    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/ak;->s(Landroid/content/Intent;)V

    move v0, v11

    goto/16 :goto_2ab

    :cond_3e8
    const-string v2, "method_fetchgmsg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f6

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/ak;->u(Landroid/content/Intent;)V

    move v0, v11

    goto/16 :goto_2ab

    :cond_3f6
    const-string v2, "method_countgmsg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_404

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/ak;->v(Landroid/content/Intent;)V

    move v0, v11

    goto/16 :goto_2ab

    :cond_404
    const-string v2, "method_online"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_412

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/ak;->w(Landroid/content/Intent;)V

    move v0, v11

    goto/16 :goto_2ab

    :cond_412
    const-string v2, "method_send"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_420

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/ak;->x(Landroid/content/Intent;)V

    move v0, v11

    goto/16 :goto_2ab

    :cond_420
    const-string v2, "com.baidu.android.pushservice.action.SEND_APPSTAT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42e

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/ak;->z(Landroid/content/Intent;)V

    move v0, v11

    goto/16 :goto_2ab

    :cond_42e
    const-string v2, "com.baidu.android.pushservice.action.SEND_LBS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43c

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/ak;->A(Landroid/content/Intent;)V

    move v0, v11

    goto/16 :goto_2ab

    :cond_43c
    const-string v2, "com.baidu.android.pushservice.action.ENBALE_APPSTAT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44a

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/ak;->B(Landroid/content/Intent;)V

    move v0, v11

    goto/16 :goto_2ab

    :cond_44a
    const-string v2, "method_send_msg_to_user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2ab

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/ak;->y(Landroid/content/Intent;)V

    move v0, v11

    goto/16 :goto_2ab

    :cond_458
    move-object v0, v1

    goto/16 :goto_10c
.end method

.method public a(Lcom/baidu/android/pushservice/e/a;)Z
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/ak;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/baidu/android/pushservice/ak;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_d
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_d} :catch_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :catch_f
    move-exception v0

    const-string v1, "RegistrationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add submitApiProcessor failed threadpool is shutdown "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/android/pushservice/ak;->a:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/baidu/android/pushservice/h/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_2e
    const/4 v0, 0x0

    goto :goto_e
.end method
