.class Lcom/baidu/mtjstatsdk/y;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field static a:Lcom/baidu/mtjstatsdk/y;


# instance fields
.field private b:Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    new-instance v0, Lcom/baidu/mtjstatsdk/y;

    invoke-direct {v0}, Lcom/baidu/mtjstatsdk/y;-><init>()V

    sput-object v0, Lcom/baidu/mtjstatsdk/y;->a:Lcom/baidu/mtjstatsdk/y;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 44
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/baidu/mtjstatsdk/y;->b(Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 45
    monitor-exit p0

    return-void

    .line 44
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 66
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/y;->b:Landroid/content/IntentFilter;

    .line 67
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/y;->b:Landroid/content/IntentFilter;

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/y;->b:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/y;->b:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/y;->b:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/baidu/mtjstatsdk/y;->a:Lcom/baidu/mtjstatsdk/y;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/y;->b:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    .prologue
    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 92
    const-string v0, ""

    .line 93
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 94
    if-eqz v1, :cond_98

    .line 95
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 98
    :goto_11
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 99
    const-string v3, "unkown"

    .line 101
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 103
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 105
    sget-object v0, Lcom/baidu/mtjstatsdk/z;->a:Lcom/baidu/mtjstatsdk/z;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/z;->b()Ljava/util/List;

    move-result-object v0

    .line 106
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 107
    const-string v1, "n"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 109
    const-string v1, "v"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    :goto_50
    :try_start_50
    const-string v1, "name"

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string v1, "action"

    invoke-virtual {v5, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string v1, "version"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5f
    .catch Lorg/json/JSONException; {:try_start_50 .. :try_end_5f} :catch_84

    .line 130
    :goto_5f
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/j;->c([B)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 134
    sget-object v1, Lcom/baidu/mtjstatsdk/af;->d:Lcom/baidu/mtjstatsdk/af;

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/baidu/mtjstatsdk/af;->a(Landroid/content/Context;JLjava/lang/String;)J

    .line 135
    return-void

    .line 115
    :cond_75
    const/16 v1, 0x2000

    :try_start_77
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 116
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_7d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_77 .. :try_end_7d} :catch_7e

    goto :goto_50

    .line 117
    :catch_7e
    move-exception v0

    .line 118
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    :cond_82
    move-object v0, v3

    goto :goto_50

    .line 126
    :catch_84
    move-exception v0

    .line 127
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "BPlus"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/o;->c([Ljava/lang/Object;)I

    goto :goto_5f

    :cond_98
    move-object v2, v0

    goto/16 :goto_11
.end method
