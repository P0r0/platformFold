.class public Lcom/baidu/android/pushservice/i/o;
.super Ljava/lang/Object;


# direct methods
.method private static a(Landroid/content/Context;Lcom/baidu/android/pushservice/c/h;Lcom/baidu/android/pushservice/i/n;Lcom/baidu/android/pushservice/i/m;)V
    .registers 6

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/c/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/baidu/android/pushservice/i/m;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/c/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p0, v0}, Lcom/baidu/android/pushservice/util/q;->a(Lcom/baidu/android/pushservice/i/m;Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/android/pushservice/i/m;

    move-result-object p3

    :cond_11
    :try_start_11
    invoke-static {p0, p2}, Lcom/baidu/android/pushservice/i/v;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/n;)J

    invoke-static {p0, p3}, Lcom/baidu/android/pushservice/i/v;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/m;)J
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_17} :catch_18

    :goto_17
    return-void

    :catch_18
    move-exception v0

    const-string v0, "PushBehaviorHelper"

    const-string v1, "MH insert db exception"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[BII)V
    .registers 11

    new-instance v0, Lcom/baidu/android/pushservice/i/n;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/i/n;-><init>()V

    const-string v1, "010101"

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/n;->f:Ljava/lang/String;

    iput-object p2, v0, Lcom/baidu/android/pushservice/i/n;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/baidu/android/pushservice/i/n;->g:J

    invoke-static {p0}, Lcom/baidu/android/pushservice/i/a/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/n;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, v0, Lcom/baidu/android/pushservice/i/n;->b:I

    iput p5, v0, Lcom/baidu/android/pushservice/i/n;->i:I

    iput p3, v0, Lcom/baidu/android/pushservice/i/n;->c:I

    iput-object p1, v0, Lcom/baidu/android/pushservice/i/n;->j:Ljava/lang/String;

    new-instance v1, Lcom/baidu/android/pushservice/i/m;

    invoke-direct {v1, p1}, Lcom/baidu/android/pushservice/i/m;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p6}, Lcom/baidu/android/pushservice/i/m;->c(I)V

    invoke-static {p0}, Lcom/baidu/android/pushservice/c/b;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/b;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/baidu/android/pushservice/c/b;->d(Ljava/lang/String;)Lcom/baidu/android/pushservice/c/h;

    move-result-object v2

    if-eqz v2, :cond_53

    iget-object v3, v2, Lcom/baidu/android/pushservice/c/h;->e:Ljava/lang/String;

    invoke-static {v3}, Lcom/baidu/android/pushservice/util/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/baidu/android/pushservice/i/m;->c(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/baidu/android/pushservice/c/h;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/baidu/android/pushservice/i/m;->b(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/c/h;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/baidu/android/pushservice/i/m;->d(Ljava/lang/String;)V

    :goto_4f
    invoke-static {p0, v2, v0, v1}, Lcom/baidu/android/pushservice/i/o;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/c/h;Lcom/baidu/android/pushservice/i/n;Lcom/baidu/android/pushservice/i/m;)V

    return-void

    :cond_53
    const-string v3, "0"

    invoke-virtual {v1, v3}, Lcom/baidu/android/pushservice/i/m;->c(Ljava/lang/String;)V

    const-string v3, "0"

    invoke-virtual {v1, v3}, Lcom/baidu/android/pushservice/i/m;->b(Ljava/lang/String;)V

    const-string v3, "NP"

    invoke-virtual {v1, v3}, Lcom/baidu/android/pushservice/i/m;->d(Ljava/lang/String;)V

    goto :goto_4f
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    :try_start_d
    new-instance v1, Lcom/baidu/android/pushservice/i/n;

    invoke-direct {v1}, Lcom/baidu/android/pushservice/i/n;-><init>()V

    const/4 v0, 0x0

    const-string v2, "com.baidu.android.pushservice.action.passthrough.notification.CLICK"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    const-string v0, "010601"

    :cond_1d
    :goto_1d
    iput-object v0, v1, Lcom/baidu/android/pushservice/i/n;->f:Ljava/lang/String;

    iput-object p1, v1, Lcom/baidu/android/pushservice/i/n;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/baidu/android/pushservice/i/n;->g:J

    invoke-static {p0}, Lcom/baidu/android/pushservice/i/a/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/android/pushservice/i/n;->h:Ljava/lang/String;

    sget-object v0, Lcom/baidu/android/pushservice/message/a/m;->g:Lcom/baidu/android/pushservice/message/a/m;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/message/a/m;->a()I

    move-result v0

    iput v0, v1, Lcom/baidu/android/pushservice/i/n;->c:I

    iput-object p2, v1, Lcom/baidu/android/pushservice/i/n;->j:Ljava/lang/String;

    invoke-static {p0}, Lcom/baidu/android/pushservice/c/b;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/baidu/android/pushservice/c/b;->d(Ljava/lang/String;)Lcom/baidu/android/pushservice/c/h;

    move-result-object v0

    if-eqz v0, :cond_c

    new-instance v2, Lcom/baidu/android/pushservice/i/m;

    invoke-direct {v2, p2}, Lcom/baidu/android/pushservice/i/m;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v1, v2}, Lcom/baidu/android/pushservice/i/o;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/c/h;Lcom/baidu/android/pushservice/i/n;Lcom/baidu/android/pushservice/i/m;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_49} :catch_4a

    goto :goto_c

    :catch_4a
    move-exception v0

    const-string v1, "PushBehaviorHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_68
    :try_start_68
    const-string v2, "com.baidu.android.pushservice.action.passthrough.notification.DELETE"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    const-string v0, "010602"

    goto :goto_1d

    :cond_73
    const-string v2, "com.baidu.android.pushservice.action.passthrough.notification.NOTIFIED"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string v0, "010603"
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_7d} :catch_4a

    goto :goto_1d
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[BII)V
    .registers 11

    new-instance v0, Lcom/baidu/android/pushservice/i/n;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/i/n;-><init>()V

    const-string v1, "019901"

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/n;->f:Ljava/lang/String;

    iput-object p2, v0, Lcom/baidu/android/pushservice/i/n;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/baidu/android/pushservice/i/n;->g:J

    invoke-static {p0}, Lcom/baidu/android/pushservice/i/a/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/n;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, v0, Lcom/baidu/android/pushservice/i/n;->b:I

    iput p5, v0, Lcom/baidu/android/pushservice/i/n;->i:I

    iput p3, v0, Lcom/baidu/android/pushservice/i/n;->c:I

    iput-object p1, v0, Lcom/baidu/android/pushservice/i/n;->j:Ljava/lang/String;

    new-instance v1, Lcom/baidu/android/pushservice/i/m;

    invoke-direct {v1, p1}, Lcom/baidu/android/pushservice/i/m;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p6}, Lcom/baidu/android/pushservice/i/m;->c(I)V

    invoke-static {p0}, Lcom/baidu/android/pushservice/c/b;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/b;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/baidu/android/pushservice/c/b;->d(Ljava/lang/String;)Lcom/baidu/android/pushservice/c/h;

    move-result-object v2

    if-eqz v2, :cond_53

    iget-object v3, v2, Lcom/baidu/android/pushservice/c/h;->e:Ljava/lang/String;

    invoke-static {v3}, Lcom/baidu/android/pushservice/util/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/baidu/android/pushservice/i/m;->c(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/baidu/android/pushservice/c/h;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/baidu/android/pushservice/i/m;->b(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/c/h;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/baidu/android/pushservice/i/m;->d(Ljava/lang/String;)V

    :goto_4f
    invoke-static {p0, v2, v0, v1}, Lcom/baidu/android/pushservice/i/o;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/c/h;Lcom/baidu/android/pushservice/i/n;Lcom/baidu/android/pushservice/i/m;)V

    return-void

    :cond_53
    const-string v3, "0"

    invoke-virtual {v1, v3}, Lcom/baidu/android/pushservice/i/m;->c(Ljava/lang/String;)V

    const-string v3, "0"

    invoke-virtual {v1, v3}, Lcom/baidu/android/pushservice/i/m;->b(Ljava/lang/String;)V

    const-string v3, "NP"

    invoke-virtual {v1, v3}, Lcom/baidu/android/pushservice/i/m;->d(Ljava/lang/String;)V

    goto :goto_4f
.end method
