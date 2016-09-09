.class Lcom/baidu/mtjstatsdk/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/baidu/mtjstatsdk/z;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    new-instance v0, Lcom/baidu/mtjstatsdk/z;

    invoke-direct {v0}, Lcom/baidu/mtjstatsdk/z;-><init>()V

    sput-object v0, Lcom/baidu/mtjstatsdk/z;->a:Lcom/baidu/mtjstatsdk/z;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/z;->b:Ljava/util/List;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 86
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/j;->c([B)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 91
    :goto_8
    return-object v0

    .line 87
    :catch_9
    move-exception v0

    .line 88
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    .line 91
    const-string v0, ""

    goto :goto_8
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 101
    invoke-direct {p0, p2}, Lcom/baidu/mtjstatsdk/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 103
    sget-object v1, Lcom/baidu/mtjstatsdk/af;->b:Lcom/baidu/mtjstatsdk/af;

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/baidu/mtjstatsdk/af;->a(Landroid/content/Context;JLjava/lang/String;)J

    .line 104
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 52
    if-nez v0, :cond_7

    .line 73
    :cond_6
    return-void

    .line 56
    :cond_7
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 57
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 58
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 59
    if-eqz v2, :cond_10

    .line 63
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_10

    .line 67
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 68
    const-string v3, "n"

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v3, "v"

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/z;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 5

    .prologue
    .line 112
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 113
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/z;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 114
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 115
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 117
    :cond_24
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized a(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 35
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/z;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 36
    invoke-direct {p0, p1}, Lcom/baidu/mtjstatsdk/z;->b(Landroid/content/Context;)V

    .line 37
    invoke-virtual {p0}, Lcom/baidu/mtjstatsdk/z;->a()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/baidu/mtjstatsdk/z;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 39
    monitor-exit p0

    return-void

    .line 35
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/z;->b:Ljava/util/List;

    return-object v0
.end method
