.class Lcom/baidu/android/pushservice/i$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/android/pushservice/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/android/pushservice/i;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/i;)V
    .registers 3

    iput-object p1, p0, Lcom/baidu/android/pushservice/i$a;->a:Lcom/baidu/android/pushservice/i;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, "PushService-PushConnection-readThread"

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/i$a;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v5, 0x0

    :goto_1
    iget-object v0, p0, Lcom/baidu/android/pushservice/i$a;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v0}, Lcom/baidu/android/pushservice/i;->l(Lcom/baidu/android/pushservice/i;)Z

    move-result v0

    if-nez v0, :cond_251

    :try_start_9
    iget-object v0, p0, Lcom/baidu/android/pushservice/i$a;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v0}, Lcom/baidu/android/pushservice/i;->c(Lcom/baidu/android/pushservice/i;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/baidu/android/pushservice/i;->a:I

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/jni/PushSocket;->a(Landroid/content/Context;I)[B
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_14} :catch_b6

    move-result-object v0

    :goto_15
    iget-object v1, p0, Lcom/baidu/android/pushservice/i$a;->a:Lcom/baidu/android/pushservice/i;

    iget-object v1, v1, Lcom/baidu/android/pushservice/i;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/baidu/android/pushservice/i$a;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v2}, Lcom/baidu/android/pushservice/i;->m(Lcom/baidu/android/pushservice/i;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/baidu/android/pushservice/i$a;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v1}, Lcom/baidu/android/pushservice/i;->k(Lcom/baidu/android/pushservice/i;)Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/baidu/android/pushservice/i$a;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v1, v5}, Lcom/baidu/android/pushservice/i;->d(Lcom/baidu/android/pushservice/i;Z)Z

    iget-object v1, p0, Lcom/baidu/android/pushservice/i$a;->a:Lcom/baidu/android/pushservice/i;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/i;->e(Lcom/baidu/android/pushservice/i;Z)V

    :cond_35
    if-eqz v0, :cond_3a

    array-length v1, v0

    if-nez v1, :cond_e5

    :cond_3a
    invoke-static {}, Lcom/baidu/android/pushservice/jni/PushSocket;->getLastSocketError()I

    move-result v0

    const-string v1, "PushConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive err,errno:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/android/pushservice/i$a;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v3}, Lcom/baidu/android/pushservice/i;->c(Lcom/baidu/android/pushservice/i;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/baidu/android/pushservice/i$a;->a:Lcom/baidu/android/pushservice/i;

    const-string v2, "039913"

    invoke-static {v1, v2, v0}, Lcom/baidu/android/pushservice/i;->a(Lcom/baidu/android/pushservice/i;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/android/pushservice/i$a;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v1}, Lcom/baidu/android/pushservice/i;->e(Lcom/baidu/android/pushservice/i;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PushConnection Receive err "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/android/pushservice/i$a;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v2}, Lcom/baidu/android/pushservice/i;->c(Lcom/baidu/android/pushservice/i;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lastSocketError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " socketfd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/baidu/android/pushservice/i;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/i$a;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v1}, Lcom/baidu/android/pushservice/i;->c(Lcom/baidu/android/pushservice/i;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_1

    :catch_b6
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    invoke-static {}, Lcom/baidu/android/pushservice/b;->b()I

    move-result v2

    if-lez v2, :cond_d2

    iget-object v2, p0, Lcom/baidu/android/pushservice/i$a;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v2}, Lcom/baidu/android/pushservice/i;->c(Lcom/baidu/android/pushservice/i;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "039908"

    invoke-static {}, Lcom/baidu/android/pushservice/jni/PushSocket;->getLastSocketError()I

    move-result v4

    invoke-static {v1}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v4, v1}, Lcom/baidu/android/pushservice/i/v;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)J

    :cond_d2
    const-string v1, "PushConnection"

    const-string v2, "Get message exception"

    iget-object v3, p0, Lcom/baidu/android/pushservice/i$a;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v3}, Lcom/baidu/android/pushservice/i;->c(Lcom/baidu/android/pushservice/i;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/baidu/android/pushservice/h/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_15

    :cond_e5
    :try_start_e5
    iget-object v1, p0, Lcom/baidu/android/pushservice/i$a;->a:Lcom/baidu/android/pushservice/i;

    iget-object v1, v1, Lcom/baidu/android/pushservice/i;->c:Lcom/baidu/android/pushservice/message/d;

    array-length v2, v0

    invoke-virtual {v1, v0, v2}, Lcom/baidu/android/pushservice/message/d;->a([BI)Lcom/baidu/android/pushservice/message/e;
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_ed} :catch_1b6

    move-result-object v0

    if-eqz v0, :cond_113

    :try_start_f0
    const-string v1, "PushConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReadThread receive msg :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/message/e;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/android/pushservice/i$a;->a:Lcom/baidu/android/pushservice/i;

    iget-object v1, v1, Lcom/baidu/android/pushservice/i;->c:Lcom/baidu/android/pushservice/message/d;

    invoke-virtual {v1, v0}, Lcom/baidu/android/pushservice/message/d;->b(Lcom/baidu/android/pushservice/message/e;)V

    :cond_113
    iget-object v0, p0, Lcom/baidu/android/pushservice/i$a;->a:Lcom/baidu/android/pushservice/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/i;->b(Lcom/baidu/android/pushservice/i;I)I
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_119} :catch_11b

    goto/16 :goto_1

    :catch_11b
    move-exception v0

    const-string v1, "PushConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handle message exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/android/pushservice/i$a;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v3}, Lcom/baidu/android/pushservice/i;->c(Lcom/baidu/android/pushservice/i;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/baidu/android/pushservice/h/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PushConnection Handle message exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/android/pushservice/i$a;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v2}, Lcom/baidu/android/pushservice/i;->c(Lcom/baidu/android/pushservice/i;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lastSocketError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/android/pushservice/jni/PushSocket;->getLastSocketError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " socketfd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/baidu/android/pushservice/i;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/android/pushservice/i$a;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v2}, Lcom/baidu/android/pushservice/i;->c(Lcom/baidu/android/pushservice/i;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/android/pushservice/b;->b()I

    move-result v1

    if-lez v1, :cond_1af

    iget-object v1, p0, Lcom/baidu/android/pushservice/i$a;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v1}, Lcom/baidu/android/pushservice/i;->c(Lcom/baidu/android/pushservice/i;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "039910"

    invoke-static {}, Lcom/baidu/android/pushservice/jni/PushSocket;->getLastSocketError()I

    move-result v3

    invoke-static {v0}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/baidu/android/pushservice/i/v;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)J

    :cond_1af
    iget-object v0, p0, Lcom/baidu/android/pushservice/i$a;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v0}, Lcom/baidu/android/pushservice/i;->e(Lcom/baidu/android/pushservice/i;)V

    goto/16 :goto_1

    :catch_1b6
    move-exception v0

    const-string v1, "PushConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read message exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/android/pushservice/i$a;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v3}, Lcom/baidu/android/pushservice/i;->c(Lcom/baidu/android/pushservice/i;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/baidu/android/pushservice/h/b;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/android/pushservice/b;->b()I

    move-result v1

    if-lez v1, :cond_1f6

    iget-object v1, p0, Lcom/baidu/android/pushservice/i$a;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v1}, Lcom/baidu/android/pushservice/i;->c(Lcom/baidu/android/pushservice/i;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "039909"

    invoke-static {}, Lcom/baidu/android/pushservice/jni/PushSocket;->getLastSocketError()I

    move-result v3

    invoke-static {v0}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/baidu/android/pushservice/i/v;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)J

    :cond_1f6
    iget-object v1, p0, Lcom/baidu/android/pushservice/i$a;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v1}, Lcom/baidu/android/pushservice/i;->e(Lcom/baidu/android/pushservice/i;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PushConnection Read message exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/android/pushservice/i$a;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v2}, Lcom/baidu/android/pushservice/i;->c(Lcom/baidu/android/pushservice/i;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lastSocketError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/baidu/android/pushservice/jni/PushSocket;->getLastSocketError()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " socketfd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/baidu/android/pushservice/i;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/i$a;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v1}, Lcom/baidu/android/pushservice/i;->c(Lcom/baidu/android/pushservice/i;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_251
    return-void
.end method
