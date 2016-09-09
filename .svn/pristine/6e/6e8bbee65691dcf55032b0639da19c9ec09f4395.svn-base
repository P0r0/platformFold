.class public final Lcom/baidu/android/pushservice/al;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/baidu/android/pushservice/al;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Thread;

.field private e:Z

.field private f:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/android/pushservice/al;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/android/pushservice/al;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/android/pushservice/al;->d:Ljava/lang/Thread;

    const-string v0, "com.baidu.pushservice.channel_token_rsa"

    invoke-static {p1, v0}, Lcom/baidu/android/pushservice/util/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/al;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/baidu/android/pushservice/PushSettings;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/al;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/al;->e:Z

    iput-object p1, p0, Lcom/baidu/android/pushservice/al;->f:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/baidu/android/pushservice/al;
    .registers 3

    const-class v1, Lcom/baidu/android/pushservice/al;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/android/pushservice/al;->a:Lcom/baidu/android/pushservice/al;

    if-nez v0, :cond_e

    new-instance v0, Lcom/baidu/android/pushservice/al;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/al;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/android/pushservice/al;->a:Lcom/baidu/android/pushservice/al;

    :cond_e
    sget-object v0, Lcom/baidu/android/pushservice/al;->a:Lcom/baidu/android/pushservice/al;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Z)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/android/pushservice/al;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/android/pushservice/al;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_23

    :cond_c
    new-instance v0, Lcom/baidu/android/pushservice/e/ac;

    invoke-direct {v0, p1}, Lcom/baidu/android/pushservice/e/ac;-><init>(Landroid/content/Context;)V

    if-nez p2, :cond_17

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/android/pushservice/e/ac;->a(I)V

    :cond_17
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/baidu/android/pushservice/al;->d:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/baidu/android/pushservice/al;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_23
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/baidu/android/pushservice/al;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/baidu/android/pushservice/al;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/android/pushservice/al;->f:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/baidu/android/pushservice/PushSettings;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/al;->f:Landroid/content/Context;

    const-string v1, "com.baidu.pushservice.channel_token_rsa"

    invoke-static {v0, v1, p2}, Lcom/baidu/android/pushservice/util/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/android/pushservice/al;->e:Z

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/android/pushservice/al;->e:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/al;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/al;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/al;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/baidu/android/pushservice/al;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method
