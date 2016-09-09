.class Lcom/baidu/android/pushservice/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/android/pushservice/i;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/i;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/l;->a:Lcom/baidu/android/pushservice/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v3, 0x0

    const-string v0, "PushConnection"

    const-string v1, " -- Send Timeout --"

    iget-object v2, p0, Lcom/baidu/android/pushservice/l;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v2}, Lcom/baidu/android/pushservice/i;->c(Lcom/baidu/android/pushservice/i;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/h/b;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/l;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v0}, Lcom/baidu/android/pushservice/i;->k(Lcom/baidu/android/pushservice/i;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/baidu/android/pushservice/l;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v0, v3}, Lcom/baidu/android/pushservice/i;->d(Lcom/baidu/android/pushservice/i;Z)Z

    iget-object v0, p0, Lcom/baidu/android/pushservice/l;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v0, v3}, Lcom/baidu/android/pushservice/i;->e(Lcom/baidu/android/pushservice/i;Z)V

    :cond_24
    iget-object v0, p0, Lcom/baidu/android/pushservice/l;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v0}, Lcom/baidu/android/pushservice/i;->e(Lcom/baidu/android/pushservice/i;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PushConnection Send Timeout "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/l;->a:Lcom/baidu/android/pushservice/i;

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

    iget-object v1, p0, Lcom/baidu/android/pushservice/l;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v1}, Lcom/baidu/android/pushservice/i;->c(Lcom/baidu/android/pushservice/i;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/android/pushservice/b;->b()I

    move-result v0

    if-lez v0, :cond_a3

    new-instance v0, Lcom/baidu/android/pushservice/i/j;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/i/j;-><init>()V

    const-string v1, "039911"

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/j;->f:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/baidu/android/pushservice/i/j;->g:J

    iget-object v1, p0, Lcom/baidu/android/pushservice/l;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v1}, Lcom/baidu/android/pushservice/i;->c(Lcom/baidu/android/pushservice/i;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/android/pushservice/i/a/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/j;->h:Ljava/lang/String;

    sget v1, Lcom/baidu/android/pushservice/i;->a:I

    iput v1, v0, Lcom/baidu/android/pushservice/i/j;->i:I

    iget-object v1, p0, Lcom/baidu/android/pushservice/l;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v1}, Lcom/baidu/android/pushservice/i;->c(Lcom/baidu/android/pushservice/i;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/i/v;->b(Landroid/content/Context;Lcom/baidu/android/pushservice/i/j;)J

    :cond_a3
    return-void
.end method
