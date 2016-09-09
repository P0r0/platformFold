.class Lcom/duoku/platform/download/utils/FileHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/utils/FileHelper;->getFromCache(Lcom/duoku/platform/download/listener/OnCacheLoadedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Lcom/duoku/platform/download/listener/OnCacheLoadedListener;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/duoku/platform/download/listener/OnCacheLoadedListener;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/download/utils/FileHelper$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/duoku/platform/download/utils/FileHelper$1;->b:Lcom/duoku/platform/download/listener/OnCacheLoadedListener;

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 365
    :try_start_0
    invoke-static {}, Lcom/duoku/platform/download/utils/AppSimpleCache;->Instance()Lcom/duoku/platform/download/utils/AppSimpleCache;

    move-result-object v2

    monitor-enter v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_63

    .line 367
    :try_start_5
    new-instance v3, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/duoku/platform/download/utils/FileHelper$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/duoku/platform/download/utils/FileHelper;->getJsonStringFromJsonFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 370
    :cond_14
    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_33

    .line 428
    iget-object v0, p0, Lcom/duoku/platform/download/utils/FileHelper$1;->b:Lcom/duoku/platform/download/listener/OnCacheLoadedListener;

    if-eqz v0, :cond_31

    .line 430
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/duoku/platform/download/utils/FileHelper$1$1;

    iget-object v3, p0, Lcom/duoku/platform/download/utils/FileHelper$1;->b:Lcom/duoku/platform/download/listener/OnCacheLoadedListener;

    invoke-direct {v1, p0, v3}, Lcom/duoku/platform/download/utils/FileHelper$1$1;-><init>(Lcom/duoku/platform/download/utils/FileHelper$1;Lcom/duoku/platform/download/listener/OnCacheLoadedListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 365
    :cond_31
    monitor-exit v2

    .line 460
    :cond_32
    :goto_32
    return-void

    .line 372
    :cond_33
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 373
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 375
    if-eqz v5, :cond_14

    .line 377
    invoke-static {}, Lcom/duoku/platform/download/utils/DownloadTasks;->instance()Landroid/content/Context;

    move-result-object v1

    const-string v6, "dk_key_type"

    invoke-static {v1, v6}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/duoku/platform/download/utils/AppUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 378
    const/4 v1, 0x0

    .line 382
    packed-switch v6, :pswitch_data_f0

    .line 418
    :goto_55
    if-eqz v1, :cond_14

    .line 420
    invoke-static {}, Lcom/duoku/platform/download/utils/AppSimpleCache;->Instance()Lcom/duoku/platform/download/utils/AppSimpleCache;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v0, v1, v6}, Lcom/duoku/platform/download/utils/AppSimpleCache;->saveCache(Ljava/lang/String;Ljava/lang/Object;Z)Z

    goto :goto_14

    .line 365
    :catchall_60
    move-exception v0

    monitor-exit v2
    :try_end_62
    .catchall {:try_start_5 .. :try_end_62} :catchall_60

    :try_start_62
    throw v0
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_63} :catch_63

    .line 443
    :catch_63
    move-exception v0

    .line 445
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 447
    iget-object v0, p0, Lcom/duoku/platform/download/utils/FileHelper$1;->b:Lcom/duoku/platform/download/listener/OnCacheLoadedListener;

    if-eqz v0, :cond_32

    .line 449
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/duoku/platform/download/utils/FileHelper$1$2;

    iget-object v2, p0, Lcom/duoku/platform/download/utils/FileHelper$1;->b:Lcom/duoku/platform/download/listener/OnCacheLoadedListener;

    invoke-direct {v1, p0, v2}, Lcom/duoku/platform/download/utils/FileHelper$1$2;-><init>(Lcom/duoku/platform/download/utils/FileHelper$1;Lcom/duoku/platform/download/listener/OnCacheLoadedListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_32

    .line 386
    :pswitch_7f
    :try_start_7f
    invoke-static {}, Lcom/duoku/platform/download/utils/DownloadTasks;->instance()Landroid/content/Context;

    move-result-object v1

    const-string v6, "dk_key_data"

    invoke-static {v1, v6}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/duoku/platform/download/utils/AppUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_55

    .line 392
    :pswitch_96
    invoke-static {}, Lcom/duoku/platform/download/utils/DownloadTasks;->instance()Landroid/content/Context;

    move-result-object v1

    const-string v6, "dk_key_data"

    invoke-static {v1, v6}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/duoku/platform/download/utils/AppUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_55

    .line 398
    :pswitch_ad
    invoke-static {}, Lcom/duoku/platform/download/utils/DownloadTasks;->instance()Landroid/content/Context;

    move-result-object v1

    const-string v6, "dk_key_data"

    invoke-static {v1, v6}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/duoku/platform/download/utils/AppUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_55

    .line 404
    :pswitch_c0
    invoke-static {}, Lcom/duoku/platform/download/utils/DownloadTasks;->instance()Landroid/content/Context;

    move-result-object v1

    const-string v6, "dk_key_data"

    invoke-static {v1, v6}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/duoku/platform/download/utils/AppUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto/16 :goto_55

    .line 410
    :pswitch_d8
    invoke-static {}, Lcom/duoku/platform/download/utils/DownloadTasks;->instance()Landroid/content/Context;

    move-result-object v1

    const-string v6, "dk_key_data"

    invoke-static {v1, v6}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/duoku/platform/download/utils/AppUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_ed
    .catchall {:try_start_7f .. :try_end_ed} :catchall_60

    move-result-object v1

    goto/16 :goto_55

    .line 382
    :pswitch_data_f0
    .packed-switch 0x1
        :pswitch_7f
        :pswitch_c0
        :pswitch_d8
        :pswitch_96
        :pswitch_ad
    .end packed-switch
.end method
