.class public final Lcom/alipay/android/phone/mrpc/core/q;
.super Lcom/alipay/android/phone/mrpc/core/d;


# instance fields
.field private g:Lcom/alipay/android/phone/mrpc/core/n;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/mrpc/core/n;Ljava/lang/reflect/Method;ILjava/lang/String;[BZ)V
    .registers 14

    const-string v5, "application/x-www-form-urlencoded"

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/phone/mrpc/core/d;-><init>(Ljava/lang/reflect/Method;ILjava/lang/String;[BLjava/lang/String;Z)V

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/q;->g:Lcom/alipay/android/phone/mrpc/core/n;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 7

    const/16 v5, 0xd

    const/16 v4, 0x9

    new-instance v1, Lcom/alipay/android/phone/mrpc/core/v;

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/q;->g:Lcom/alipay/android/phone/mrpc/core/n;

    invoke-interface {v0}, Lcom/alipay/android/phone/mrpc/core/n;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/android/phone/mrpc/core/v;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/q;->b:[B

    iput-object v0, v1, Lcom/alipay/android/phone/mrpc/core/v;->b:[B

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/q;->e:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/android/phone/mrpc/core/v;->c:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/alipay/android/phone/mrpc/core/q;->f:Z

    iput-boolean v0, v1, Lcom/alipay/android/phone/mrpc/core/v;->e:Z

    const-string v0, "id"

    iget v2, p0, Lcom/alipay/android/phone/mrpc/core/q;->d:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/phone/mrpc/core/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "operationType"

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/q;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/phone/mrpc/core/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "gzip"

    iget-object v2, p0, Lcom/alipay/android/phone/mrpc/core/q;->g:Lcom/alipay/android/phone/mrpc/core/n;

    invoke-interface {v2}, Lcom/alipay/android/phone/mrpc/core/n;->d()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/phone/mrpc/core/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v2, "uuid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/mrpc/core/v;->a(Lorg/apache/http/Header;)V

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/q;->g:Lcom/alipay/android/phone/mrpc/core/n;

    invoke-interface {v0}, Lcom/alipay/android/phone/mrpc/core/n;->c()Lcom/alipay/android/phone/mrpc/core/e;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/android/phone/mrpc/core/e;->b:Ljava/util/List;

    if-eqz v0, :cond_72

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_72

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_62
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/mrpc/core/v;->a(Lorg/apache/http/Header;)V

    goto :goto_62

    :cond_72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "threadid = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/alipay/android/phone/mrpc/core/v;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_92
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/q;->g:Lcom/alipay/android/phone/mrpc/core/n;

    invoke-interface {v0}, Lcom/alipay/android/phone/mrpc/core/n;->b()Lcom/alipay/android/phone/mrpc/core/f;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alipay/android/phone/mrpc/core/f;->a(Lcom/alipay/android/phone/mrpc/core/aa;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mrpc/core/ab;

    if-nez v0, :cond_bf

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/c;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "response is null"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/mrpc/core/c;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0
    :try_end_b2
    .catch Ljava/lang/InterruptedException; {:try_start_92 .. :try_end_b2} :catch_b2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_92 .. :try_end_b2} :catch_c4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_92 .. :try_end_b2} :catch_108

    :catch_b2
    move-exception v0

    new-instance v1, Lcom/alipay/android/phone/mrpc/core/c;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v1, v2, v3, v0}, Lcom/alipay/android/phone/mrpc/core/c;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_bf
    :try_start_bf
    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/ab;->a()[B
    :try_end_c2
    .catch Ljava/lang/InterruptedException; {:try_start_bf .. :try_end_c2} :catch_b2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_bf .. :try_end_c2} :catch_c4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_bf .. :try_end_c2} :catch_108

    move-result-object v0

    return-object v0

    :catch_c4
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_fc

    instance-of v2, v0, Lcom/alipay/android/phone/mrpc/core/a;

    if-eqz v2, :cond_fc

    check-cast v0, Lcom/alipay/android/phone/mrpc/core/a;

    new-instance v2, Lcom/alipay/android/phone/mrpc/core/c;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/a;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_116

    :goto_db
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/alipay/android/phone/mrpc/core/c;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v2

    :pswitch_e7
    const/4 v1, 0x4

    goto :goto_db

    :pswitch_e9
    const/4 v1, 0x7

    goto :goto_db

    :pswitch_eb
    const/16 v1, 0x8

    goto :goto_db

    :pswitch_ee
    const/4 v1, 0x6

    goto :goto_db

    :pswitch_f0
    const/4 v1, 0x5

    goto :goto_db

    :pswitch_f2
    const/4 v1, 0x3

    goto :goto_db

    :pswitch_f4
    const/4 v1, 0x2

    goto :goto_db

    :pswitch_f6
    const/16 v1, 0x10

    goto :goto_db

    :pswitch_f9
    const/16 v1, 0xf

    goto :goto_db

    :cond_fc
    new-instance v0, Lcom/alipay/android/phone/mrpc/core/c;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v0, v2, v3, v1}, Lcom/alipay/android/phone/mrpc/core/c;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_108
    move-exception v0

    new-instance v1, Lcom/alipay/android/phone/mrpc/core/c;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v1, v2, v3, v0}, Lcom/alipay/android/phone/mrpc/core/c;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_116
    .packed-switch 0x1
        :pswitch_f4
        :pswitch_f2
        :pswitch_e7
        :pswitch_f0
        :pswitch_ee
        :pswitch_e9
        :pswitch_eb
        :pswitch_f9
        :pswitch_f6
    .end packed-switch
.end method
