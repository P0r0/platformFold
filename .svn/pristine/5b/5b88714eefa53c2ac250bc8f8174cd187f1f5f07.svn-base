.class Lcom/baidu/android/pushservice/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/android/pushservice/i;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/i;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v0}, Lcom/baidu/android/pushservice/i;->a(Lcom/baidu/android/pushservice/i;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v1}, Lcom/baidu/android/pushservice/i;->b(Lcom/baidu/android/pushservice/i;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/jni/PushSocket;->createSocket(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/baidu/android/pushservice/i;->a:I

    invoke-static {}, Lcom/baidu/android/pushservice/b;->b()I

    move-result v0

    if-lez v0, :cond_46

    new-instance v0, Lcom/baidu/android/pushservice/i/j;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/i/j;-><init>()V

    const-string v1, "039907"

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/j;->f:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/baidu/android/pushservice/i/j;->g:J

    iget-object v1, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v1}, Lcom/baidu/android/pushservice/i;->c(Lcom/baidu/android/pushservice/i;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/android/pushservice/i/a/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/j;->h:Ljava/lang/String;

    sget v1, Lcom/baidu/android/pushservice/i;->a:I

    if-ltz v1, :cond_11f

    iput v4, v0, Lcom/baidu/android/pushservice/i/j;->i:I

    :goto_3d
    iget-object v1, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v1}, Lcom/baidu/android/pushservice/i;->c(Lcom/baidu/android/pushservice/i;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/i/v;->b(Landroid/content/Context;Lcom/baidu/android/pushservice/i/j;)J

    :cond_46
    sget v0, Lcom/baidu/android/pushservice/i;->a:I

    if-eq v0, v6, :cond_4e

    sget v0, Lcom/baidu/android/pushservice/i;->a:I

    if-ne v0, v5, :cond_130

    :cond_4e
    invoke-static {}, Lcom/baidu/android/pushservice/jni/PushSocket;->getLastSocketError()I

    move-result v0

    const-string v1, "PushConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create socket err, errno: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "socketfd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/baidu/android/pushservice/i;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v3}, Lcom/baidu/android/pushservice/i;->c(Lcom/baidu/android/pushservice/i;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/baidu/android/pushservice/h/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/android/pushservice/ah;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v2}, Lcom/baidu/android/pushservice/i;->a(Lcom/baidu/android/pushservice/i;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_125

    iget-object v1, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    const-string v2, "030301"

    invoke-static {v1, v2, v0}, Lcom/baidu/android/pushservice/i;->a(Lcom/baidu/android/pushservice/i;Ljava/lang/String;I)V

    :goto_97
    sget v1, Lcom/baidu/android/pushservice/i;->a:I

    if-ne v1, v5, :cond_bb

    iget-object v1, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v1}, Lcom/baidu/android/pushservice/i;->c(Lcom/baidu/android/pushservice/i;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v2}, Lcom/baidu/android/pushservice/i;->d(Lcom/baidu/android/pushservice/i;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/ah;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v2, v4}, Lcom/baidu/android/pushservice/i;->a(Lcom/baidu/android/pushservice/i;Z)Z

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_bb

    iget-object v2, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/i;->a(Lcom/baidu/android/pushservice/i;Ljava/lang/String;)Ljava/lang/String;

    :cond_bb
    sget v1, Lcom/baidu/android/pushservice/i;->a:I

    if-ne v1, v6, :cond_ca

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_ca

    iget-object v1, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    const/16 v2, 0x50

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/i;->a(Lcom/baidu/android/pushservice/i;I)I

    :cond_ca
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/android/pushservice/i;->a(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v1}, Lcom/baidu/android/pushservice/i;->e(Lcom/baidu/android/pushservice/i;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PushConnection Create socket err "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

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

    iget-object v1, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v1}, Lcom/baidu/android/pushservice/i;->c(Lcom/baidu/android/pushservice/i;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    :goto_11e
    return-void

    :cond_11f
    sget v1, Lcom/baidu/android/pushservice/i;->a:I

    iput v1, v0, Lcom/baidu/android/pushservice/i/j;->i:I

    goto/16 :goto_3d

    :cond_125
    iget-object v1, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    const-string v2, "030303"

    const/16 v3, 0x2712

    invoke-static {v1, v2, v3}, Lcom/baidu/android/pushservice/i;->a(Lcom/baidu/android/pushservice/i;Ljava/lang/String;I)V

    goto/16 :goto_97

    :cond_130
    const-string v0, "PushConnection"

    const-string v1, "create Socket ok"

    iget-object v2, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v2}, Lcom/baidu/android/pushservice/i;->c(Lcom/baidu/android/pushservice/i;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create Socket ok socketfd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/baidu/android/pushservice/i;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v1}, Lcom/baidu/android/pushservice/i;->c(Lcom/baidu/android/pushservice/i;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    new-instance v1, Lcom/baidu/android/pushservice/message/f;

    iget-object v2, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v2}, Lcom/baidu/android/pushservice/i;->c(Lcom/baidu/android/pushservice/i;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/baidu/android/pushservice/message/f;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/baidu/android/pushservice/i;->c:Lcom/baidu/android/pushservice/message/d;

    iget-object v0, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v0, v7}, Lcom/baidu/android/pushservice/i;->b(Lcom/baidu/android/pushservice/i;Z)Z

    iget-object v0, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v0}, Lcom/baidu/android/pushservice/i;->f(Lcom/baidu/android/pushservice/i;)Lcom/baidu/android/pushservice/i$a;

    move-result-object v0

    if-eqz v0, :cond_188

    iget-object v0, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v0}, Lcom/baidu/android/pushservice/i;->f(Lcom/baidu/android/pushservice/i;)Lcom/baidu/android/pushservice/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i$a;->interrupt()V

    :cond_188
    iget-object v0, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v0}, Lcom/baidu/android/pushservice/i;->g(Lcom/baidu/android/pushservice/i;)Lcom/baidu/android/pushservice/i$b;

    move-result-object v0

    if-eqz v0, :cond_199

    iget-object v0, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v0}, Lcom/baidu/android/pushservice/i;->g(Lcom/baidu/android/pushservice/i;)Lcom/baidu/android/pushservice/i$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i$b;->interrupt()V

    :cond_199
    iget-object v0, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v0, v4}, Lcom/baidu/android/pushservice/i;->c(Lcom/baidu/android/pushservice/i;Z)Z

    iget-object v0, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    new-instance v1, Lcom/baidu/android/pushservice/i$a;

    iget-object v2, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    invoke-direct {v1, v2}, Lcom/baidu/android/pushservice/i$a;-><init>(Lcom/baidu/android/pushservice/i;)V

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/i;->a(Lcom/baidu/android/pushservice/i;Lcom/baidu/android/pushservice/i$a;)Lcom/baidu/android/pushservice/i$a;

    iget-object v0, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v0}, Lcom/baidu/android/pushservice/i;->f(Lcom/baidu/android/pushservice/i;)Lcom/baidu/android/pushservice/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i$a;->start()V

    iget-object v0, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    new-instance v1, Lcom/baidu/android/pushservice/i$b;

    iget-object v2, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    invoke-direct {v1, v2}, Lcom/baidu/android/pushservice/i$b;-><init>(Lcom/baidu/android/pushservice/i;)V

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/i;->a(Lcom/baidu/android/pushservice/i;Lcom/baidu/android/pushservice/i$b;)Lcom/baidu/android/pushservice/i$b;

    iget-object v0, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v0}, Lcom/baidu/android/pushservice/i;->g(Lcom/baidu/android/pushservice/i;)Lcom/baidu/android/pushservice/i$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i$b;->start()V

    iget-object v0, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    iget-object v0, v0, Lcom/baidu/android/pushservice/i;->c:Lcom/baidu/android/pushservice/message/d;

    sget v1, Lcom/baidu/android/pushservice/i;->a:I

    invoke-virtual {v0, v1}, Lcom/baidu/android/pushservice/message/d;->a(I)V

    invoke-static {}, Lcom/baidu/android/pushservice/ah;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v1}, Lcom/baidu/android/pushservice/i;->a(Lcom/baidu/android/pushservice/i;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e8

    iget-object v0, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    const-string v1, "030302"

    invoke-static {v0, v1, v4}, Lcom/baidu/android/pushservice/i;->a(Lcom/baidu/android/pushservice/i;Ljava/lang/String;I)V

    :cond_1e8
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/android/pushservice/i;->a(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v0, v7}, Lcom/baidu/android/pushservice/i;->a(Lcom/baidu/android/pushservice/i;Z)Z

    iget-object v0, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {}, Lcom/baidu/android/pushservice/ah;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/i;->a(Lcom/baidu/android/pushservice/i;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v0}, Lcom/baidu/android/pushservice/i;->c(Lcom/baidu/android/pushservice/i;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/android/pushservice/ah;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v0}, Lcom/baidu/android/pushservice/i;->c(Lcom/baidu/android/pushservice/i;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/android/pushservice/v;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/v;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v1}, Lcom/baidu/android/pushservice/i;->h(Lcom/baidu/android/pushservice/i;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/android/pushservice/j;->a:Lcom/baidu/android/pushservice/i;

    invoke-static {v2}, Lcom/baidu/android/pushservice/i;->i(Lcom/baidu/android/pushservice/i;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/baidu/android/pushservice/v;->a(I)V

    goto/16 :goto_11e
.end method
