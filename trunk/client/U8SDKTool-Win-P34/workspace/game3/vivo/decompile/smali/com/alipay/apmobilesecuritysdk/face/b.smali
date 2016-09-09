.class final Lcom/alipay/apmobilesecuritysdk/face/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/apmobilesecuritysdk/face/a;


# direct methods
.method constructor <init>(Lcom/alipay/apmobilesecuritysdk/face/a;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/face/b;->a:Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/b;->a:Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/face/a;->a(Lcom/alipay/apmobilesecuritysdk/face/a;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_112

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/b;->a:Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/face/a;->a(Lcom/alipay/apmobilesecuritysdk/face/a;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/apmobilesecuritysdk/face/a$b;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->f:Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/face/a;->d(Lcom/alipay/apmobilesecuritysdk/face/a;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->f:Lcom/alipay/apmobilesecuritysdk/face/a;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alipay/apmobilesecuritysdk/face/a;->a(Lcom/alipay/apmobilesecuritysdk/face/a;Z)Z
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_28} :catch_f3
    .catchall {:try_start_0 .. :try_end_28} :catchall_103

    :try_start_28
    iget-object v1, v0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->f:Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/face/a;->c(Lcom/alipay/apmobilesecuritysdk/face/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/d/a;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/d/a;

    iget v1, v0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->a:I

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/d/a;->b()Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "tid"

    iget-object v3, v0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "utdid"

    iget-object v3, v0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "umid"

    iget-object v3, v0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->f:Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/face/a;->c(Lcom/alipay/apmobilesecuritysdk/face/a;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/d/a;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/d/a;

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/d/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "userId"

    iget-object v3, v0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->f:Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/face/a;->c(Lcom/alipay/apmobilesecuritysdk/face/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/apmobilesecuritysdk/face/e;->a(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    iget-object v1, v0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->e:Lcom/alipay/apmobilesecuritysdk/face/a$a;

    if-eqz v1, :cond_eb

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/face/a$c;

    iget-object v2, v0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->f:Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-direct {v1, v2}, Lcom/alipay/apmobilesecuritysdk/face/a$c;-><init>(Lcom/alipay/apmobilesecuritysdk/face/a;)V

    iget-object v2, v0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->f:Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/face/a;->c(Lcom/alipay/apmobilesecuritysdk/face/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/apmobilesecuritysdk/face/a$c;->c:Ljava/lang/String;

    iget-object v2, v0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->f:Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/face/a;->c(Lcom/alipay/apmobilesecuritysdk/face/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/apmobilesecuritysdk/face/a$c;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->f:Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/face/a;->c(Lcom/alipay/apmobilesecuritysdk/face/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/d/a;->a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/d/a;

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/d/a;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/apmobilesecuritysdk/face/a$c;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->f:Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/face/a;->c(Lcom/alipay/apmobilesecuritysdk/face/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/f/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/apmobilesecuritysdk/face/a$c;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[*]result.apdid     = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/alipay/apmobilesecuritysdk/face/a$c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[*]result.token     = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/alipay/apmobilesecuritysdk/face/a$c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[*]result.umid      = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/alipay/apmobilesecuritysdk/face/a$c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[*]result.clientKey = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/alipay/apmobilesecuritysdk/face/a$c;->d:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, v0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->e:Lcom/alipay/apmobilesecuritysdk/face/a$a;
    :try_end_eb
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_eb} :catch_fa
    .catchall {:try_start_28 .. :try_end_eb} :catchall_10a

    :cond_eb
    :try_start_eb
    iget-object v0, v0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->f:Lcom/alipay/apmobilesecuritysdk/face/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/apmobilesecuritysdk/face/a;->a(Lcom/alipay/apmobilesecuritysdk/face/a;Z)Z
    :try_end_f1
    .catch Ljava/lang/Throwable; {:try_start_eb .. :try_end_f1} :catch_f3
    .catchall {:try_start_eb .. :try_end_f1} :catchall_103

    goto/16 :goto_0

    :catch_f3
    move-exception v0

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/b;->a:Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/face/a;->b(Lcom/alipay/apmobilesecuritysdk/face/a;)Ljava/lang/Thread;

    :goto_f9
    return-void

    :catch_fa
    move-exception v1

    :try_start_fb
    iget-object v0, v0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->f:Lcom/alipay/apmobilesecuritysdk/face/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/apmobilesecuritysdk/face/a;->a(Lcom/alipay/apmobilesecuritysdk/face/a;Z)Z
    :try_end_101
    .catch Ljava/lang/Throwable; {:try_start_fb .. :try_end_101} :catch_f3
    .catchall {:try_start_fb .. :try_end_101} :catchall_103

    goto/16 :goto_0

    :catchall_103
    move-exception v0

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/b;->a:Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/face/a;->b(Lcom/alipay/apmobilesecuritysdk/face/a;)Ljava/lang/Thread;

    throw v0

    :catchall_10a
    move-exception v1

    :try_start_10b
    iget-object v0, v0, Lcom/alipay/apmobilesecuritysdk/face/a$b;->f:Lcom/alipay/apmobilesecuritysdk/face/a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/alipay/apmobilesecuritysdk/face/a;->a(Lcom/alipay/apmobilesecuritysdk/face/a;Z)Z

    throw v1
    :try_end_112
    .catch Ljava/lang/Throwable; {:try_start_10b .. :try_end_112} :catch_f3
    .catchall {:try_start_10b .. :try_end_112} :catchall_103

    :cond_112
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/b;->a:Lcom/alipay/apmobilesecuritysdk/face/a;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/face/a;->b(Lcom/alipay/apmobilesecuritysdk/face/a;)Ljava/lang/Thread;

    goto :goto_f9
.end method
