.class public final Lcom/alipay/sdk/tid/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/alipay/sdk/tid/b;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static declared-synchronized a()Lcom/alipay/sdk/tid/b;
    .registers 8

    .prologue
    .line 74
    const-class v1, Lcom/alipay/sdk/tid/b;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/alipay/sdk/tid/b;->c:Lcom/alipay/sdk/tid/b;

    if-nez v0, :cond_6c

    .line 75
    new-instance v0, Lcom/alipay/sdk/tid/b;

    invoke-direct {v0}, Lcom/alipay/sdk/tid/b;-><init>()V

    sput-object v0, Lcom/alipay/sdk/tid/b;->c:Lcom/alipay/sdk/tid/b;

    .line 76
    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/sdk/sys/b;->a:Landroid/content/Context;

    .line 77
    new-instance v2, Lcom/alipay/sdk/tid/a;

    invoke-direct {v2, v0}, Lcom/alipay/sdk/tid/a;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-static {v0}, Lcom/alipay/sdk/util/a;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/sdk/util/a;->a()Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-static {v0}, Lcom/alipay/sdk/util/a;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/util/a;->b()Ljava/lang/String;

    move-result-object v4

    .line 81
    sget-object v0, Lcom/alipay/sdk/tid/b;->c:Lcom/alipay/sdk/tid/b;

    invoke-virtual {v2, v3, v4}, Lcom/alipay/sdk/tid/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alipay/sdk/tid/b;->a:Ljava/lang/String;

    .line 82
    sget-object v0, Lcom/alipay/sdk/tid/b;->c:Lcom/alipay/sdk/tid/b;

    invoke-virtual {v2, v3, v4}, Lcom/alipay/sdk/tid/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alipay/sdk/tid/b;->b:Ljava/lang/String;

    .line 83
    sget-object v0, Lcom/alipay/sdk/tid/b;->c:Lcom/alipay/sdk/tid/b;

    iget-object v0, v0, Lcom/alipay/sdk/tid/b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 84
    sget-object v5, Lcom/alipay/sdk/tid/b;->c:Lcom/alipay/sdk/tid/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xa

    if-le v6, v7, :cond_5f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0xa

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_5f
    iput-object v0, v5, Lcom/alipay/sdk/tid/b;->b:Ljava/lang/String;

    .line 86
    :cond_61
    sget-object v0, Lcom/alipay/sdk/tid/b;->c:Lcom/alipay/sdk/tid/b;

    iget-object v0, v0, Lcom/alipay/sdk/tid/b;->a:Ljava/lang/String;

    sget-object v5, Lcom/alipay/sdk/tid/b;->c:Lcom/alipay/sdk/tid/b;

    iget-object v5, v5, Lcom/alipay/sdk/tid/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/alipay/sdk/tid/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_6c
    sget-object v0, Lcom/alipay/sdk/tid/b;->c:Lcom/alipay/sdk/tid/b;
    :try_end_6e
    .catchall {:try_start_3 .. :try_end_6e} :catchall_70

    monitor-exit v1

    return-object v0

    .line 74
    :catchall_70
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 58
    new-instance v1, Lcom/alipay/sdk/tid/a;

    invoke-direct {v1, p1}, Lcom/alipay/sdk/tid/a;-><init>(Landroid/content/Context;)V

    .line 60
    :try_start_5
    invoke-static {p1}, Lcom/alipay/sdk/util/a;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/util/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {p1}, Lcom/alipay/sdk/util/a;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/sdk/util/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 62
    iget-object v3, p0, Lcom/alipay/sdk/tid/b;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/sdk/tid/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/alipay/sdk/tid/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1c} :catch_20
    .catchall {:try_start_5 .. :try_end_1c} :catchall_25

    .line 65
    invoke-virtual {v1}, Lcom/alipay/sdk/tid/a;->close()V

    .line 66
    :goto_1f
    return-void

    .line 65
    :catch_20
    move-exception v0

    invoke-virtual {v1}, Lcom/alipay/sdk/tid/a;->close()V

    goto :goto_1f

    :catchall_25
    move-exception v0

    invoke-virtual {v1}, Lcom/alipay/sdk/tid/a;->close()V

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/sdk/tid/b;->a:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/sdk/tid/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alipay/sdk/tid/b;->b:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/sdk/tid/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method private d()Z
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/sdk/tid/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static e()V
    .registers 4

    .prologue
    .line 92
    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/sdk/sys/b;->a:Landroid/content/Context;

    .line 93
    invoke-static {v0}, Lcom/alipay/sdk/util/a;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/sdk/util/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-static {v0}, Lcom/alipay/sdk/util/a;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/sdk/util/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 96
    new-instance v3, Lcom/alipay/sdk/tid/a;

    invoke-direct {v3, v0}, Lcom/alipay/sdk/tid/a;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-virtual {v3, v1, v2}, Lcom/alipay/sdk/tid/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v3}, Lcom/alipay/sdk/tid/a;->close()V

    .line 100
    return-void
.end method

.method private static f()Ljava/lang/String;
    .registers 3

    .prologue
    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_1a

    .line 105
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    :cond_1a
    return-object v0
.end method
