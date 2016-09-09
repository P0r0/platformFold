.class public Lcom/baidu/android/pushservice/i/v;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/baidu/android/pushservice/i/i;

.field private final c:Lcom/baidu/android/pushservice/i/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/android/pushservice/i/v;->a:Landroid/content/Context;

    new-instance v0, Lcom/baidu/android/pushservice/i/s;

    invoke-direct {v0, p1}, Lcom/baidu/android/pushservice/i/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/android/pushservice/i/v;->c:Lcom/baidu/android/pushservice/i/s;

    invoke-static {p1}, Lcom/baidu/android/pushservice/i/i;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/i/i;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/i/v;->b:Lcom/baidu/android/pushservice/i/i;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/b;)J
    .registers 4

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/util/n;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/b;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/c;)J
    .registers 4

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/util/n;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/c;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/g;)J
    .registers 4

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/util/n;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/g;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/j;)J
    .registers 4

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/util/n;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/j;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/m;)J
    .registers 4

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/util/n;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/m;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/n;)J
    .registers 4

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/util/n;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/n;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)J
    .registers 8

    new-instance v0, Lcom/baidu/android/pushservice/i/j;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/i/j;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/baidu/android/pushservice/i/j;->g:J

    invoke-static {p0}, Lcom/baidu/android/pushservice/i/a/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/j;->h:Ljava/lang/String;

    iput p2, v0, Lcom/baidu/android/pushservice/i/j;->i:I

    iput-object p3, v0, Lcom/baidu/android/pushservice/i/j;->l:Ljava/lang/String;

    iput-object p1, v0, Lcom/baidu/android/pushservice/i/j;->f:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/i/v;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/j;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/baidu/android/pushservice/i/w;

    invoke-direct {v0, p0, p1}, Lcom/baidu/android/pushservice/i/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/w;->start()V

    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/android/pushservice/i/j;)J
    .registers 4

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/util/n;->b(Landroid/content/Context;Lcom/baidu/android/pushservice/i/j;)J

    move-result-wide v0

    return-wide v0
.end method

.method private b()Z
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/android/pushservice/i/v;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/PushSettings;->i(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/baidu/android/pushservice/i/v;->b:Lcom/baidu/android/pushservice/i/i;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/i/i;->c()Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/baidu/android/pushservice/i/v;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/util/g;->c(Landroid/content/Context;)J

    move-result-wide v4

    sub-long v4, v2, v4

    iget-object v1, p0, Lcom/baidu/android/pushservice/i/v;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/PushSettings;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/baidu/android/pushservice/i/v;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/PushSettings;->g(Landroid/content/Context;)I

    move-result v1

    int-to-long v2, v1

    :goto_2d
    cmp-long v1, v4, v2

    if-lez v1, :cond_11

    const/4 v0, 0x1

    goto :goto_11

    :cond_33
    const-wide/32 v2, 0x2932e00

    goto :goto_2d
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/v;->c:Lcom/baidu/android/pushservice/i/s;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/v;->c:Lcom/baidu/android/pushservice/i/s;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/s;->b()V

    :cond_9
    return-void
.end method

.method public a(ZLcom/baidu/android/pushservice/util/f;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/v;->b:Lcom/baidu/android/pushservice/i/i;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/v;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/i/i;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/i/i;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/i/v;->b:Lcom/baidu/android/pushservice/i/i;

    :cond_c
    iget-object v0, p0, Lcom/baidu/android/pushservice/i/v;->b:Lcom/baidu/android/pushservice/i/i;

    invoke-virtual {v0, p2}, Lcom/baidu/android/pushservice/i/i;->a(Lcom/baidu/android/pushservice/util/f;)V

    if-nez p1, :cond_19

    invoke-direct {p0}, Lcom/baidu/android/pushservice/i/v;->b()Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_19
    iget-object v0, p0, Lcom/baidu/android/pushservice/i/v;->b:Lcom/baidu/android/pushservice/i/i;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/i/i;->b(Z)V

    :cond_1e
    return-void
.end method
