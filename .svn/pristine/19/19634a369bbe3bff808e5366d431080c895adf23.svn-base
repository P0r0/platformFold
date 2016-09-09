.class Lcom/baidu/android/pushservice/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/android/pushservice/v;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/v;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/w;->a:Lcom/baidu/android/pushservice/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    invoke-static {}, Lcom/baidu/android/pushservice/v;->e()Lcom/baidu/android/pushservice/v;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-static {}, Lcom/baidu/android/pushservice/v;->e()Lcom/baidu/android/pushservice/v;

    move-result-object v1

    monitor-enter v1

    :try_start_c
    iget-object v0, p0, Lcom/baidu/android/pushservice/w;->a:Lcom/baidu/android/pushservice/v;

    invoke-static {v0}, Lcom/baidu/android/pushservice/v;->a(Lcom/baidu/android/pushservice/v;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/android/pushservice/f/a;->b(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/baidu/android/pushservice/v;->f()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tryConnect networkConnected :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/android/pushservice/w;->a:Lcom/baidu/android/pushservice/v;

    invoke-static {v4}, Lcom/baidu/android/pushservice/v;->a(Lcom/baidu/android/pushservice/v;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    if-nez v0, :cond_4e

    invoke-static {}, Lcom/baidu/android/pushservice/b;->b()I

    move-result v0

    if-lez v0, :cond_49

    iget-object v0, p0, Lcom/baidu/android/pushservice/w;->a:Lcom/baidu/android/pushservice/v;

    invoke-static {v0}, Lcom/baidu/android/pushservice/v;->a(Lcom/baidu/android/pushservice/v;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "039912"

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/i/v;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_49
    monitor-exit v1

    goto :goto_6

    :catchall_4b
    move-exception v0

    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_c .. :try_end_4d} :catchall_4b

    throw v0

    :cond_4e
    :try_start_4e
    invoke-static {}, Lcom/baidu/android/pushservice/b;->b()I

    move-result v0

    if-lez v0, :cond_5f

    iget-object v0, p0, Lcom/baidu/android/pushservice/w;->a:Lcom/baidu/android/pushservice/v;

    invoke-static {v0}, Lcom/baidu/android/pushservice/v;->a(Lcom/baidu/android/pushservice/v;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "039914"

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/i/v;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5f
    sget-object v0, Lcom/baidu/android/pushservice/v;->a:Lcom/baidu/android/pushservice/i;

    if-eqz v0, :cond_8f

    sget-object v0, Lcom/baidu/android/pushservice/v;->a:Lcom/baidu/android/pushservice/i;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i;->a()Z

    move-result v0

    if-nez v0, :cond_8f

    iget-object v0, p0, Lcom/baidu/android/pushservice/w;->a:Lcom/baidu/android/pushservice/v;

    invoke-static {v0}, Lcom/baidu/android/pushservice/v;->a(Lcom/baidu/android/pushservice/v;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/android/pushservice/al;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/al;->d()Z

    move-result v0

    if-nez v0, :cond_92

    invoke-static {}, Lcom/baidu/android/pushservice/v;->f()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Channel token is not available, start NETWORK REGISTER SERVICE ."

    iget-object v3, p0, Lcom/baidu/android/pushservice/w;->a:Lcom/baidu/android/pushservice/v;

    invoke-static {v3}, Lcom/baidu/android/pushservice/v;->a(Lcom/baidu/android/pushservice/v;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/baidu/android/pushservice/h/b;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/w;->a:Lcom/baidu/android/pushservice/v;

    invoke-static {v0}, Lcom/baidu/android/pushservice/v;->b(Lcom/baidu/android/pushservice/v;)V

    :cond_8f
    :goto_8f
    monitor-exit v1

    goto/16 :goto_6

    :cond_92
    iget-object v0, p0, Lcom/baidu/android/pushservice/w;->a:Lcom/baidu/android/pushservice/v;

    invoke-static {v0}, Lcom/baidu/android/pushservice/v;->c(Lcom/baidu/android/pushservice/v;)V
    :try_end_97
    .catchall {:try_start_4e .. :try_end_97} :catchall_4b

    goto :goto_8f
.end method
