.class public final Lcom/alipay/apmobilesecuritysdk/b/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/io/File;

.field private b:Lcom/alipay/security/mobile/module/a/c/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alipay/security/mobile/module/a/c/a;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/b/b;->a:Ljava/io/File;

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/b/b;->b:Lcom/alipay/security/mobile/module/a/c/a;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/b/b;->a:Ljava/io/File;

    iput-object p2, p0, Lcom/alipay/apmobilesecuritysdk/b/b;->b:Lcom/alipay/security/mobile/module/a/c/a;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "type"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "error"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_11} :catch_16

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_15
    return-object v0

    :catch_16
    move-exception v0

    const-string v0, ""

    goto :goto_15
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    const/4 v1, 0x1

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_31

    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_36

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_36

    move v0, v1

    :goto_1b
    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/e/e;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v0, :cond_30

    if-eqz v1, :cond_30

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/b/c;

    invoke-direct {v1, p0}, Lcom/alipay/apmobilesecuritysdk/b/c;-><init>(Lcom/alipay/apmobilesecuritysdk/b/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_30
    return-void

    :cond_31
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_c

    :cond_36
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private static synthetic a(Lcom/alipay/apmobilesecuritysdk/b/b;)V
    .registers 1

    invoke-virtual {p0}, Lcom/alipay/apmobilesecuritysdk/b/b;->a()V

    return-void
.end method


# virtual methods
.method final declared-synchronized a()V
    .registers 9

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/b/b;->a:Ljava/io/File;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_be

    if-nez v0, :cond_8

    :cond_6
    monitor-exit p0

    return-void

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/b/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/b/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/b/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/b/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    move v0, v2

    :goto_2e
    if-ge v0, v4, :cond_38

    aget-object v5, v1, v0

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_38
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMdd"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 v1, v1, -0x1

    move v7, v1

    move-object v1, v0

    move v0, v7

    :goto_8f
    iget-object v4, p0, Lcom/alipay/apmobilesecuritysdk/b/b;->a:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/alipay/security/mobile/module/commonutils/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/alipay/apmobilesecuritysdk/b/b;->b:Lcom/alipay/security/mobile/module/a/c/a;

    invoke-interface {v4, v1}, Lcom/alipay/security/mobile/module/a/c/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c1

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_a8
    if-ge v2, v1, :cond_6

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/alipay/apmobilesecuritysdk/b/b;->a:Ljava/io/File;

    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_ba
    .catchall {:try_start_8 .. :try_end_ba} :catchall_be

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a8

    :catchall_be
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_c1
    move v1, v0

    goto :goto_a8

    :cond_c3
    move v7, v1

    move-object v1, v0

    move v0, v7

    goto :goto_8f
.end method
