.class Lcom/baidu/android/pushservice/u;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:[B

.field final synthetic f:[B

.field final synthetic g:Lcom/baidu/android/pushservice/PushMessageReceiver$a;

.field final synthetic h:Lcom/baidu/android/pushservice/PushMessageReceiver;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/PushMessageReceiver;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;[B[BLcom/baidu/android/pushservice/PushMessageReceiver$a;)V
    .registers 9

    iput-object p1, p0, Lcom/baidu/android/pushservice/u;->h:Lcom/baidu/android/pushservice/PushMessageReceiver;

    iput-object p2, p0, Lcom/baidu/android/pushservice/u;->a:Landroid/content/Context;

    iput p3, p0, Lcom/baidu/android/pushservice/u;->b:I

    iput-object p4, p0, Lcom/baidu/android/pushservice/u;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/android/pushservice/u;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/baidu/android/pushservice/u;->e:[B

    iput-object p7, p0, Lcom/baidu/android/pushservice/u;->f:[B

    iput-object p8, p0, Lcom/baidu/android/pushservice/u;->g:Lcom/baidu/android/pushservice/PushMessageReceiver$a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/baidu/android/pushservice/u;->a:Landroid/content/Context;

    iget v1, p0, Lcom/baidu/android/pushservice/u;->b:I

    iget-object v2, p0, Lcom/baidu/android/pushservice/u;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/android/pushservice/u;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/android/pushservice/u;->e:[B

    iget-object v5, p0, Lcom/baidu/android/pushservice/u;->f:[B

    invoke-static/range {v0 .. v5}, Lcom/baidu/android/pushservice/message/a/i;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;[B[B)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_17

    array-length v0, v4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    :cond_17
    sget-object v0, Lcom/baidu/android/pushservice/PushMessageReceiver;->TAG:Ljava/lang/String;

    const-string v1, " check message error !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "message"

    aget-object v3, v4, v7

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "custom_content"

    const/4 v3, 0x1

    aget-object v3, v4, v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/baidu/android/pushservice/u;->g:Lcom/baidu/android/pushservice/PushMessageReceiver$a;

    invoke-virtual {v1, v0}, Lcom/baidu/android/pushservice/PushMessageReceiver$a;->sendMessage(Landroid/os/Message;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v4, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at time of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/u;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/android/pushservice/b;->b()I

    move-result v0

    if-lez v0, :cond_1e

    iget-object v0, p0, Lcom/baidu/android/pushservice/u;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/android/pushservice/u;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/android/pushservice/u;->d:Ljava/lang/String;

    iget v3, p0, Lcom/baidu/android/pushservice/u;->b:I

    aget-object v4, v4, v7

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    sget v6, Lcom/baidu/android/pushservice/i/m;->a:I

    move v5, v7

    invoke-static/range {v0 .. v6}, Lcom/baidu/android/pushservice/i/o;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[BII)V

    goto :goto_1e
.end method
