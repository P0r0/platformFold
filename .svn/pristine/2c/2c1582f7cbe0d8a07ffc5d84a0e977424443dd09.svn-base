.class Lcom/duoku/platform/download/utils/FileHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/utils/FileHelper;->saveToCache(Ljava/lang/Object;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/download/utils/FileHelper$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/duoku/platform/download/utils/FileHelper$2;->b:Ljava/lang/Object;

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v0, 0x5

    .line 474
    :try_start_1
    invoke-static {}, Lcom/duoku/platform/download/utils/AppSimpleCache;->Instance()Lcom/duoku/platform/download/utils/AppSimpleCache;

    move-result-object v3

    monitor-enter v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_af

    .line 476
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data.cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 477
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 479
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 481
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 484
    :cond_3b
    invoke-static {v1}, Lcom/duoku/platform/download/utils/FileHelper;->getJsonStringFromJsonFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 487
    invoke-static {v2}, Lcom/duoku/platform/download/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 489
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v1

    .line 499
    :goto_4b
    new-instance v5, Ljava/io/FileWriter;

    const/4 v1, 0x0

    invoke-direct {v5, v4, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 502
    iget-object v1, p0, Lcom/duoku/platform/download/utils/FileHelper$2;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 504
    iget-object v1, p0, Lcom/duoku/platform/download/utils/FileHelper$2;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 513
    :goto_5f
    invoke-static {}, Lcom/duoku/platform/download/utils/DownloadTasks;->instance()Landroid/content/Context;

    move-result-object v4

    const-string v6, "dk_key_data"

    invoke-static {v4, v6}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/duoku/platform/download/utils/AppUtil;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/duoku/platform/download/utils/FileHelper$2;->b:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 514
    iget-object v4, p0, Lcom/duoku/platform/download/utils/FileHelper$2;->b:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_b4

    .line 516
    const/4 v0, 0x1

    .line 539
    :cond_7d
    :goto_7d
    invoke-static {}, Lcom/duoku/platform/download/utils/DownloadTasks;->instance()Landroid/content/Context;

    move-result-object v4

    const-string v6, "dk_key_type"

    invoke-static {v4, v6}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/duoku/platform/download/utils/AppUtil;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 541
    iget-object v0, p0, Lcom/duoku/platform/download/utils/FileHelper$2;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 546
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 547
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V

    .line 474
    monitor-exit v3

    .line 554
    :goto_9e
    return-void

    .line 493
    :cond_9f
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_4b

    .line 508
    :cond_a6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_5f

    .line 474
    :catchall_ac
    move-exception v0

    monitor-exit v3
    :try_end_ae
    .catchall {:try_start_6 .. :try_end_ae} :catchall_ac

    :try_start_ae
    throw v0
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_af} :catch_af

    .line 550
    :catch_af
    move-exception v0

    .line 552
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9e

    .line 518
    :cond_b4
    :try_start_b4
    iget-object v4, p0, Lcom/duoku/platform/download/utils/FileHelper$2;->b:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_bc

    .line 520
    const/4 v0, 0x4

    .line 521
    goto :goto_7d

    .line 522
    :cond_bc
    iget-object v4, p0, Lcom/duoku/platform/download/utils/FileHelper$2;->b:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/String;

    if-nez v4, :cond_7d

    .line 526
    iget-object v4, p0, Lcom/duoku/platform/download/utils/FileHelper$2;->b:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Long;

    if-eqz v4, :cond_ca

    .line 528
    const/4 v0, 0x2

    .line 529
    goto :goto_7d

    .line 530
    :cond_ca
    iget-object v4, p0, Lcom/duoku/platform/download/utils/FileHelper$2;->b:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Float;

    if-eqz v4, :cond_d2

    .line 532
    const/4 v0, 0x3

    .line 533
    goto :goto_7d

    .line 536
    :cond_d2
    invoke-static {}, Lcom/duoku/platform/download/utils/DownloadTasks;->instance()Landroid/content/Context;

    move-result-object v4

    const-string v6, "dk_key_data"

    invoke-static {v4, v6}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/duoku/platform/download/utils/AppUtil;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_e3
    .catchall {:try_start_b4 .. :try_end_e3} :catchall_ac

    goto :goto_7d
.end method
