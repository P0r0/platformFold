.class Lcom/baidu/android/pushservice/i$b;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/android/pushservice/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/android/pushservice/i;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/i;)V
    .registers 3

    iput-object p1, p0, Lcom/baidu/android/pushservice/i$b;->a:Lcom/baidu/android/pushservice/i;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, "PushService-PushConnection-SendThread"

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/i$b;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/i$b;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v0}, Lcom/baidu/android/pushservice/i;->l(Lcom/baidu/android/pushservice/i;)Z

    move-result v0

    if-nez v0, :cond_50

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/android/pushservice/i$b;->a:Lcom/baidu/android/pushservice/i;

    iget-object v0, v0, Lcom/baidu/android/pushservice/i;->c:Lcom/baidu/android/pushservice/message/d;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/message/d;->a()Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2

    :try_start_12
    iget-object v0, p0, Lcom/baidu/android/pushservice/i$b;->a:Lcom/baidu/android/pushservice/i;

    iget-object v0, v0, Lcom/baidu/android/pushservice/i;->c:Lcom/baidu/android/pushservice/message/d;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/message/d;->a()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_6f

    move-result v0

    if-nez v0, :cond_2b

    :try_start_20
    iget-object v0, p0, Lcom/baidu/android/pushservice/i$b;->a:Lcom/baidu/android/pushservice/i;

    iget-object v0, v0, Lcom/baidu/android/pushservice/i;->c:Lcom/baidu/android/pushservice/message/d;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/message/d;->a()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_2b} :catch_51
    .catchall {:try_start_20 .. :try_end_2b} :catchall_6f

    :cond_2b
    :goto_2b
    :try_start_2b
    iget-object v0, p0, Lcom/baidu/android/pushservice/i$b;->a:Lcom/baidu/android/pushservice/i;

    iget-object v0, v0, Lcom/baidu/android/pushservice/i;->c:Lcom/baidu/android/pushservice/message/d;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/message/d;->a()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_14e

    iget-object v0, p0, Lcom/baidu/android/pushservice/i$b;->a:Lcom/baidu/android/pushservice/i;

    iget-object v0, v0, Lcom/baidu/android/pushservice/i;->c:Lcom/baidu/android/pushservice/message/d;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/message/d;->a()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/message/e;

    :goto_47
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_2b .. :try_end_48} :catchall_6f

    iget-object v1, p0, Lcom/baidu/android/pushservice/i$b;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v1}, Lcom/baidu/android/pushservice/i;->l(Lcom/baidu/android/pushservice/i;)Z

    move-result v1

    if-eqz v1, :cond_72

    :cond_50
    return-void

    :catch_51
    move-exception v0

    :try_start_52
    const-string v3, "PushConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SendThread wait exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    :catchall_6f
    move-exception v0

    monitor-exit v2
    :try_end_71
    .catchall {:try_start_52 .. :try_end_71} :catchall_6f

    throw v0

    :cond_72
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/message/e;->a()[B

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "PushConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SendThread send msg :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/message/e;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/message/e;->b()Z

    move-result v1

    if-eqz v1, :cond_c5

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/message/e;->c()Z

    move-result v1

    if-eqz v1, :cond_146

    iget-object v1, p0, Lcom/baidu/android/pushservice/i$b;->a:Lcom/baidu/android/pushservice/i;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/i;->d(Lcom/baidu/android/pushservice/i;Z)Z

    :goto_a8
    iget-object v1, p0, Lcom/baidu/android/pushservice/i$b;->a:Lcom/baidu/android/pushservice/i;

    iget-object v1, v1, Lcom/baidu/android/pushservice/i;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/baidu/android/pushservice/i$b;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v2}, Lcom/baidu/android/pushservice/i;->m(Lcom/baidu/android/pushservice/i;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/baidu/android/pushservice/i$b;->a:Lcom/baidu/android/pushservice/i;

    iget-object v1, v1, Lcom/baidu/android/pushservice/i;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/baidu/android/pushservice/i$b;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v2}, Lcom/baidu/android/pushservice/i;->m(Lcom/baidu/android/pushservice/i;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c5
    sget v1, Lcom/baidu/android/pushservice/i;->a:I

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/message/e;->a()[B

    move-result-object v2

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/message/e;->a()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v1, v2, v0}, Lcom/baidu/android/pushservice/jni/PushSocket;->sendMsg(I[BI)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "PushConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMsg err, errno:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/android/pushservice/jni/PushSocket;->getLastSocketError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/i$b;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v0}, Lcom/baidu/android/pushservice/i;->e(Lcom/baidu/android/pushservice/i;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PushConnection sendMsg err "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/i$b;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v1}, Lcom/baidu/android/pushservice/i;->c(Lcom/baidu/android/pushservice/i;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget-object v1, p0, Lcom/baidu/android/pushservice/i$b;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v1}, Lcom/baidu/android/pushservice/i;->c(Lcom/baidu/android/pushservice/i;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_146
    iget-object v1, p0, Lcom/baidu/android/pushservice/i$b;->a:Lcom/baidu/android/pushservice/i;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/i;->d(Lcom/baidu/android/pushservice/i;Z)Z

    goto/16 :goto_a8

    :cond_14e
    move-object v0, v1

    goto/16 :goto_47
.end method
