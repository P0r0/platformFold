.class public abstract Lcom/baidu/android/pushservice/i/p;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/lang/String;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/baidu/android/pushservice/i/p;->c:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/i/p;->a:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/baidu/android/pushservice/i/p;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/baidu/android/pushservice/i/p;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/i/p;->c(Z)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/android/pushservice/i/p;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/android/pushservice/i/p;->c:Z

    return p1
.end method

.method private c(Z)V
    .registers 6

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/p;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "Statistics-BaseSender"

    const-string v1, "mUrl is null"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    :try_start_10
    invoke-virtual {p0, p1}, Lcom/baidu/android/pushservice/i/p;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/i/p;->b()Z

    move-result v1

    if-nez v1, :cond_3f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/android/pushservice/i/p;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/android/pushservice/i/p;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/android/pushservice/al;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/al;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/al;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/android/pushservice/i/p;->b:Ljava/lang/String;

    :cond_3f
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Lcom/baidu/android/pushservice/e/c;->b(Ljava/util/HashMap;)V

    invoke-virtual {p0, v0, v1}, Lcom/baidu/android/pushservice/i/p;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/p;->b:Ljava/lang/String;

    const-string v2, "POST"

    invoke-static {v0, v2, v1}, Lcom/baidu/android/pushservice/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/baidu/android/pushservice/f/b;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/i/p;->a(Lcom/baidu/android/pushservice/f/b;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_57} :catch_58

    goto :goto_f

    :catch_58
    move-exception v0

    const-string v1, "Statistics-BaseSender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startSendLoop Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method


# virtual methods
.method abstract a(Z)Ljava/lang/String;
.end method

.method public a(Lcom/baidu/android/pushservice/f/b;)V
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p1}, Lcom/baidu/android/pushservice/f/b;->a()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/f/b;->b()I

    move-result v0

    invoke-static {v1}, Lcom/baidu/android/pushservice/i/a/b;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Statistics-BaseSender"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "return conncection = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_36

    invoke-virtual {p0, v2}, Lcom/baidu/android/pushservice/i/p;->b(Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_3e

    :cond_2e
    :goto_2e
    new-array v0, v7, [Ljava/io/Closeable;

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/baidu/android/pushservice/f/c;->a([Ljava/io/Closeable;)V

    return-void

    :cond_36
    const/16 v3, 0xc9

    if-ne v0, v3, :cond_47

    :try_start_3a
    invoke-virtual {p0, v2}, Lcom/baidu/android/pushservice/i/p;->c(Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_2e

    :catchall_3e
    move-exception v0

    new-array v2, v7, [Ljava/io/Closeable;

    aput-object v1, v2, v6

    invoke-static {v2}, Lcom/baidu/android/pushservice/f/c;->a([Ljava/io/Closeable;)V

    throw v0

    :cond_47
    const/16 v3, 0x193

    if-ne v0, v3, :cond_2e

    :try_start_4b
    invoke-virtual {p0, v2}, Lcom/baidu/android/pushservice/i/p;->d(Ljava/lang/String;)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_3e

    goto :goto_2e
.end method

.method abstract a(Ljava/lang/String;)V
.end method

.method abstract a(Ljava/lang/String;Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract a()Z
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/baidu/android/pushservice/i/p;->a(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized b(Z)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/baidu/android/pushservice/i/p;->c:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/i/p;->a()Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "Statistics-BaseSender"

    const-string v1, "No new data producted, do nothing!"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_15

    goto :goto_5

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/baidu/android/pushservice/i/p;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/al;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/al;->d()Z

    move-result v0

    if-nez v0, :cond_2c

    const-string v0, "Statistics-BaseSender"

    const-string v1, "Fail Send Statistics. Token invalid!"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_2c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/i/p;->c:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/android/pushservice/i/q;

    invoke-direct {v1, p0, p1}, Lcom/baidu/android/pushservice/i/q;-><init>(Lcom/baidu/android/pushservice/i/p;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v1, "PushService-stats-sender"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_41
    .catchall {:try_start_18 .. :try_end_41} :catchall_15

    goto :goto_5
.end method

.method abstract b()Z
.end method

.method public c(Ljava/lang/String;)V
    .registers 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "config_type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "interval"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "Statistics-BaseSender"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lbs config_type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " interval = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_43

    if-lez v0, :cond_42

    iget-object v1, p0, Lcom/baidu/android/pushservice/i/p;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/PushSettings;->c(Landroid/content/Context;I)V
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_42} :catch_4a

    :cond_42
    :goto_42
    return-void

    :cond_43
    const/4 v0, 0x1

    if-eq v1, v0, :cond_42

    const/4 v0, 0x2

    if-ne v1, v0, :cond_42

    goto :goto_42

    :catch_4a
    move-exception v0

    const-string v1, "Statistics-BaseSender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse 201 exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/android/pushservice/i/p;->d:Z

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "error_msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Statistics-BaseSender"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " error_msg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0xc359

    if-ne v1, v0, :cond_43

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/p;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/PushSettings;->j(Landroid/content/Context;)V
    :try_end_43
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_43} :catch_44

    :cond_43
    :goto_43
    return-void

    :catch_44
    move-exception v0

    const-string v1, "Statistics-BaseSender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " parse 403 exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43
.end method
