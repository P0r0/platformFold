.class public Lcom/baidu/mtjstatsdk/DataCore;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/mtjstatsdk/DataCoreObject;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lcom/baidu/mtjstatsdk/DataCore;


# instance fields
.field b:Lcom/baidu/mtjstatsdk/GameSDKListener;

.field c:Lcom/baidu/mtjstatsdk/GameExceptionListener;

.field private e:Z

.field private f:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mtjstatsdk/DataCore;->e:Z

    .line 41
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/DataCore;->f:Lorg/json/JSONArray;

    .line 47
    return-void
.end method

.method static a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 58
    if-eqz p0, :cond_a

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 59
    :cond_a
    invoke-static {p0}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "statsdk"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "AppKey can not be null"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->c([Ljava/lang/Object;)I

    .line 63
    :cond_20
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 69
    :goto_28
    return-void

    .line 66
    :cond_29
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/baidu/mtjstatsdk/DataCoreObject;

    invoke-direct {v1}, Lcom/baidu/mtjstatsdk/DataCoreObject;-><init>()V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28
.end method

.method private a(ZLjava/lang/String;)V
    .registers 4

    .prologue
    .line 608
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iput-boolean p1, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->g:Z

    .line 609
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 612
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-boolean v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->g:Z

    return v0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;
    .registers 2

    .prologue
    .line 50
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->d:Lcom/baidu/mtjstatsdk/DataCore;

    if-nez v0, :cond_b

    .line 51
    new-instance v0, Lcom/baidu/mtjstatsdk/DataCore;

    invoke-direct {v0}, Lcom/baidu/mtjstatsdk/DataCore;-><init>()V

    sput-object v0, Lcom/baidu/mtjstatsdk/DataCore;->d:Lcom/baidu/mtjstatsdk/DataCore;

    .line 53
    :cond_b
    invoke-static {p0}, Lcom/baidu/mtjstatsdk/DataCore;->a(Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->d:Lcom/baidu/mtjstatsdk/DataCore;

    return-object v0
.end method

.method public static getVersionName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 72
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    .line 73
    if-eqz v0, :cond_15

    iget-object v1, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->h:Lcom/baidu/mtjstatsdk/HeadObject;

    if-eqz v1, :cond_15

    .line 74
    iget-object v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->h:Lcom/baidu/mtjstatsdk/HeadObject;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/HeadObject;->getAppVersionName()Ljava/lang/String;

    move-result-object v0

    .line 76
    :goto_14
    return-object v0

    :cond_15
    const-string v0, "0.1"

    goto :goto_14
.end method


# virtual methods
.method public flush(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 548
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 549
    const-string v0, "statsdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flush cache to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "__local_stat_cache.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_25
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 555
    :try_start_2a
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v2, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->c:Lorg/json/JSONArray;

    monitor-enter v2
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_35} :catch_b3

    .line 557
    :try_start_35
    new-instance v3, Lorg/json/JSONArray;

    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->c:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 558
    const-string v0, "pr"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 559
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_35 .. :try_end_4e} :catchall_b0

    .line 561
    :try_start_4e
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v2, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->d:Lorg/json/JSONArray;

    monitor-enter v2
    :try_end_59
    .catch Lorg/json/JSONException; {:try_start_4e .. :try_end_59} :catch_b3

    .line 562
    :try_start_59
    new-instance v3, Lorg/json/JSONArray;

    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->d:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 563
    const-string v0, "ev"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 564
    monitor-exit v2
    :try_end_72
    .catchall {:try_start_59 .. :try_end_72} :catchall_c2

    .line 566
    :try_start_72
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v2, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->f:Lorg/json/JSONArray;

    monitor-enter v2
    :try_end_7d
    .catch Lorg/json/JSONException; {:try_start_72 .. :try_end_7d} :catch_b3

    .line 567
    :try_start_7d
    new-instance v3, Lorg/json/JSONArray;

    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->f:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 568
    const-string v0, "ex"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 569
    monitor-exit v2
    :try_end_96
    .catchall {:try_start_7d .. :try_end_96} :catchall_c5

    .line 580
    :cond_96
    :goto_96
    const-string v0, "{}"

    .line 582
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 584
    invoke-direct {p0, p2}, Lcom/baidu/mtjstatsdk/DataCore;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 585
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 586
    const-string v0, "statsdk"

    const-string v1, "cache.json exceed 204800B,stop flush."

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_af
    :goto_af
    return-void

    .line 559
    :catchall_b0
    move-exception v0

    :try_start_b1
    monitor-exit v2
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    :try_start_b2
    throw v0
    :try_end_b3
    .catch Lorg/json/JSONException; {:try_start_b2 .. :try_end_b3} :catch_b3

    .line 571
    :catch_b3
    move-exception v0

    .line 574
    const-string v0, "flushLogWithoutHeader() construct cache error"

    .line 575
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_96

    .line 576
    const-string v2, "statsdk"

    invoke-static {v2, v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_96

    .line 564
    :catchall_c2
    move-exception v0

    :try_start_c3
    monitor-exit v2
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c2

    :try_start_c4
    throw v0
    :try_end_c5
    .catch Lorg/json/JSONException; {:try_start_c4 .. :try_end_c5} :catch_b3

    .line 569
    :catchall_c5
    move-exception v0

    :try_start_c6
    monitor-exit v2
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_c5

    :try_start_c7
    throw v0
    :try_end_c8
    .catch Lorg/json/JSONException; {:try_start_c7 .. :try_end_c8} :catch_b3

    .line 592
    :cond_c8
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v2, v0

    .line 593
    const v0, 0x32000

    if-lt v2, v0, :cond_d7

    .line 594
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/baidu/mtjstatsdk/DataCore;->a(ZLjava/lang/String;)V

    goto :goto_af

    .line 598
    :cond_d7
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iput v2, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->a:I

    .line 599
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_109

    .line 600
    const-string v2, "statsdk"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flush:cacheFileSize is:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->a:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "__local_stat_cache.json"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, p1, v0, v1, v4}, Lcom/baidu/mtjstatsdk/ct;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_af
.end method

.method public getGameExceptionOperation()Lcom/baidu/mtjstatsdk/GameExceptionListener;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/DataCore;->c:Lcom/baidu/mtjstatsdk/GameExceptionListener;

    return-object v0
.end method

.method public getMemInfo(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 540
    return-void
.end method

.method public haveSetExceptionListener()Z
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/DataCore;->c:Lcom/baidu/mtjstatsdk/GameExceptionListener;

    if-nez v0, :cond_6

    .line 102
    const/4 v0, 0x0

    .line 104
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public isPartEmpty(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 978
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->c:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_30

    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->d:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_30

    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->f:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_32

    .line 980
    :cond_30
    const/4 v0, 0x0

    .line 982
    :goto_31
    return v0

    :cond_32
    const/4 v0, 0x1

    goto :goto_31
.end method

.method public loadLastSession(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 619
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 620
    const-string v0, "statsdk"

    const-string v1, "LoadLastSession()"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_e
    if-nez p1, :cond_11

    .line 651
    :cond_10
    :goto_10
    return-void

    .line 628
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "__local_last_session.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, p1, v0}, Lcom/baidu/mtjstatsdk/ct;->b(ZLandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "__local_last_session.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, p1, v0}, Lcom/baidu/mtjstatsdk/ct;->a(ZLandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 635
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 636
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 637
    const-string v0, "statsdk"

    const-string v1, "loadLastSession(): last_session.json file not found."

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 642
    :cond_57
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 643
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 644
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "__local_last_session.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, p1, v2, v1, v4}, Lcom/baidu/mtjstatsdk/ct;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 648
    invoke-virtual {p0, v0, p2}, Lcom/baidu/mtjstatsdk/DataCore;->putSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    invoke-virtual {p0, p1, p2}, Lcom/baidu/mtjstatsdk/DataCore;->flush(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public loadStatData(Landroid/content/Context;Ljava/lang/String;)V
    .registers 15

    .prologue
    const-wide/32 v10, 0x240c8400

    const/4 v1, 0x0

    .line 705
    if-nez p1, :cond_7

    .line 809
    :cond_6
    :goto_6
    return-void

    .line 715
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "__local_stat_cache.json"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/baidu/mtjstatsdk/ct;->b(ZLandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "__local_stat_cache.json"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/baidu/mtjstatsdk/ct;->a(ZLandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 722
    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 723
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 724
    const-string v0, "statsdk"

    const-string v1, "stat_cache file not found."

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 728
    :cond_4d
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 729
    const-string v0, "statsdk"

    const-string v3, "loadStatData, "

    invoke-static {v0, v3}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_5a
    :try_start_5a
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    iput v3, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->a:I

    .line 733
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 734
    const-string v3, "statsdk"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load Stat Data:cacheFileSize is:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->a:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_91
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 737
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 738
    const-string v0, "statsdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Load cache:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_b4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 745
    const-string v0, "pr"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v0, v1

    .line 746
    :goto_bf
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_fe

    .line 748
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 751
    const-string v7, "s"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long v8, v4, v8

    cmp-long v7, v8, v10

    if-lez v7, :cond_d8

    .line 746
    :goto_d5
    add-int/lit8 v0, v0, 0x1

    goto :goto_bf

    .line 755
    :cond_d8
    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7, p2}, Lcom/baidu/mtjstatsdk/DataCore;->putSession(Lorg/json/JSONObject;ZLjava/lang/String;)V
    :try_end_dc
    .catch Lorg/json/JSONException; {:try_start_5a .. :try_end_dc} :catch_dd

    goto :goto_d5

    .line 803
    :catch_dd
    move-exception v0

    .line 804
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 805
    const-string v1, "statsdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load stat data error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 762
    :cond_fe
    :try_start_fe
    const-string v0, "ev"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v0, v1

    .line 763
    :goto_105
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_123

    .line 765
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 767
    const-string v7, "t"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long v8, v4, v8

    cmp-long v7, v8, v10

    if-lez v7, :cond_11e

    .line 763
    :goto_11b
    add-int/lit8 v0, v0, 0x1

    goto :goto_105

    .line 770
    :cond_11e
    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7, p2}, Lcom/baidu/mtjstatsdk/DataCore;->putEvent(Lorg/json/JSONObject;ZLjava/lang/String;)V

    goto :goto_11b

    .line 777
    :cond_123
    const-string v0, "ex"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v0, v1

    .line 778
    :goto_12a
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 780
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 782
    const-string v3, "t"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    sub-long v6, v4, v6

    cmp-long v3, v6, v10

    if-lez v3, :cond_143

    .line 778
    :goto_140
    add-int/lit8 v0, v0, 0x1

    goto :goto_12a

    .line 785
    :cond_143
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3, p2}, Lcom/baidu/mtjstatsdk/DataCore;->putException(Lorg/json/JSONObject;ZLjava/lang/String;)V
    :try_end_147
    .catch Lorg/json/JSONException; {:try_start_fe .. :try_end_147} :catch_dd

    goto :goto_140
.end method

.method public loadWifiData(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 661
    return-void
.end method

.method public putEvent(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;)V
    .registers 13

    .prologue
    .line 412
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 416
    :try_start_5
    const-string v1, "i"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 417
    const-string v1, "l"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 418
    const-string v1, "c"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 419
    const-string v1, "t"

    invoke-virtual {v0, v1, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 420
    const-string v1, "d"

    invoke-virtual {v0, v1, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 423
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p8}, Lcom/baidu/mtjstatsdk/DataCore;->putEvent(Lorg/json/JSONObject;ZLjava/lang/String;)V

    .line 426
    invoke-static {p8}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 427
    const-string v1, "statsdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "put event:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_44} :catch_45

    .line 436
    :cond_44
    :goto_44
    return-void

    .line 430
    :catch_45
    move-exception v0

    .line 432
    invoke-static {p8}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 433
    const-string v1, "statsdk"

    invoke-static {v1, v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_44
.end method

.method public putEvent(Lorg/json/JSONObject;ZLjava/lang/String;)V
    .registers 23

    .prologue
    .line 241
    if-eqz p1, :cond_4a

    if-nez p2, :cond_4a

    .line 242
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v3, v2

    .line 243
    invoke-static/range {p3 .. p3}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 244
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "statsdk"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "putEvent:eventSize is:"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v2}, Lcom/baidu/mtjstatsdk/cw;->a([Ljava/lang/Object;)I

    .line 246
    :cond_2a
    sget-object v2, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget v2, v2, Lcom/baidu/mtjstatsdk/DataCoreObject;->a:I

    add-int/2addr v2, v3

    const v3, 0x32000

    if-le v2, v3, :cond_4a

    .line 247
    invoke-static/range {p3 .. p3}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 248
    const-string v2, "statsdk"

    const-string v3, "putEvent: size is full!"

    invoke-static {v2, v3}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_49
    :goto_49
    return-void

    .line 258
    :cond_4a
    const/4 v2, 0x0

    .line 262
    :try_start_4b
    const-string v3, "i"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 263
    const-string v3, "l"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 264
    const-string v3, "t"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/32 v8, 0x36ee80

    div-long v8, v4, v8

    .line 265
    const-string v3, "s"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6f
    .catch Lorg/json/JSONException; {:try_start_4b .. :try_end_6f} :catch_e9

    move-result-object v3

    .line 274
    :try_start_70
    const-string v4, "d"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_77
    .catch Lorg/json/JSONException; {:try_start_70 .. :try_end_77} :catch_f7

    move-result v2

    .line 281
    :cond_78
    :goto_78
    if-nez v2, :cond_1c6

    .line 282
    sget-object v2, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v10, v2, Lcom/baidu/mtjstatsdk/DataCoreObject;->d:Lorg/json/JSONArray;

    monitor-enter v10

    .line 284
    :try_start_87
    sget-object v2, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v2, v2, Lcom/baidu/mtjstatsdk/DataCoreObject;->d:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_96
    .catchall {:try_start_87 .. :try_end_96} :catchall_116

    move-result v5

    .line 287
    if-eqz v3, :cond_a1

    :try_start_99
    const-string v2, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 288
    :cond_a1
    const-string v2, "s"

    const-string v3, "0|"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_aa
    .catch Lorg/json/JSONException; {:try_start_99 .. :try_end_aa} :catch_107
    .catchall {:try_start_99 .. :try_end_aa} :catchall_116

    .line 299
    :cond_aa
    :goto_aa
    const/4 v4, 0x0

    move v3, v5

    :goto_ac
    if-ge v4, v5, :cond_215

    .line 303
    :try_start_ae
    sget-object v2, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v2, v2, Lcom/baidu/mtjstatsdk/DataCoreObject;->d:Lorg/json/JSONArray;

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 305
    const-string v2, "i"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 306
    const-string v2, "l"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 307
    const-string v2, "t"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    const-wide/32 v16, 0x36ee80

    div-long v14, v14, v16
    :try_end_d5
    .catch Lorg/json/JSONException; {:try_start_ae .. :try_end_d5} :catch_128
    .catchall {:try_start_ae .. :try_end_d5} :catchall_116

    .line 308
    const/4 v2, 0x0

    .line 310
    :try_start_d6
    const-string v16, "d"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_dd
    .catch Lorg/json/JSONException; {:try_start_d6 .. :try_end_dd} :catch_119
    .catchall {:try_start_d6 .. :try_end_dd} :catchall_116

    move-result v2

    .line 318
    :cond_de
    :goto_de
    cmp-long v14, v14, v8

    if-nez v14, :cond_e4

    if-eqz v2, :cond_13a

    :cond_e4
    move v2, v3

    .line 299
    :cond_e5
    :goto_e5
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    goto :goto_ac

    .line 266
    :catch_e9
    move-exception v2

    .line 267
    invoke-static/range {p3 .. p3}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 268
    const-string v3, "statsdk"

    invoke-static {v3, v2}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_49

    .line 275
    :catch_f7
    move-exception v4

    .line 276
    invoke-static/range {p3 .. p3}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 277
    const-string v4, "statsdk"

    const-string v5, "old version data, No duration Tag"

    invoke-static {v4, v5}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_78

    .line 291
    :catch_107
    move-exception v2

    .line 293
    :try_start_108
    invoke-static/range {p3 .. p3}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 294
    const-string v2, "statsdk"

    const-string v3, "event put s fail"

    invoke-static {v2, v3}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_aa

    .line 372
    :catchall_116
    move-exception v2

    monitor-exit v10
    :try_end_118
    .catchall {:try_start_108 .. :try_end_118} :catchall_116

    throw v2

    .line 311
    :catch_119
    move-exception v16

    .line 312
    :try_start_11a
    invoke-static/range {p3 .. p3}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_de

    .line 313
    const-string v16, "statsdk"

    const-string v17, "old version data, No duration Tag"

    invoke-static/range {v16 .. v17}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_127
    .catch Lorg/json/JSONException; {:try_start_11a .. :try_end_127} :catch_128
    .catchall {:try_start_11a .. :try_end_127} :catchall_116

    goto :goto_de

    .line 349
    :catch_128
    move-exception v2

    move-object/from16 v18, v2

    move v2, v3

    move-object/from16 v3, v18

    .line 350
    :goto_12e
    :try_start_12e
    invoke-static/range {p3 .. p3}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e5

    .line 351
    const-string v11, "statsdk"

    invoke-static {v11, v3}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_139
    .catchall {:try_start_12e .. :try_end_139} :catchall_116

    goto :goto_e5

    .line 323
    :cond_13a
    :try_start_13a
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a2

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a2

    .line 326
    const-string v2, "c"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v12, "c"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    add-int/2addr v12, v2

    .line 327
    const-string v2, "s"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 328
    if-eqz v2, :cond_165

    const-string v13, ""

    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_167

    .line 329
    :cond_165
    const-string v2, "0|"

    .line 332
    :cond_167
    const-string v13, "t"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 333
    const-string v13, "t"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 334
    sub-long v14, v14, v16

    .line 336
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, "|"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_18d
    .catch Lorg/json/JSONException; {:try_start_13a .. :try_end_18d} :catch_128
    .catchall {:try_start_13a .. :try_end_18d} :catchall_116

    move-result-object v2

    .line 340
    :try_start_18e
    const-string v3, "c"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 341
    const-string v3, "c"

    invoke-virtual {v11, v3, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 343
    const-string v3, "s"

    invoke-virtual {v11, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_19d
    .catch Lorg/json/JSONException; {:try_start_18e .. :try_end_19d} :catch_210
    .catchall {:try_start_18e .. :try_end_19d} :catchall_116

    .line 357
    :goto_19d
    if-ge v4, v5, :cond_1a5

    .line 358
    :try_start_19f
    monitor-exit v10
    :try_end_1a0
    .catchall {:try_start_19f .. :try_end_1a0} :catchall_116

    goto/16 :goto_49

    :cond_1a2
    move v2, v3

    .line 353
    goto/16 :goto_e5

    .line 363
    :cond_1a5
    :try_start_1a5
    sget-object v2, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v2, v2, Lcom/baidu/mtjstatsdk/DataCoreObject;->d:Lorg/json/JSONArray;

    move-object/from16 v0, p1

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1b6
    .catch Lorg/json/JSONException; {:try_start_1a5 .. :try_end_1b6} :catch_1b9
    .catchall {:try_start_1a5 .. :try_end_1b6} :catchall_116

    .line 372
    :cond_1b6
    :goto_1b6
    :try_start_1b6
    monitor-exit v10

    goto/16 :goto_49

    .line 364
    :catch_1b9
    move-exception v2

    .line 367
    invoke-static/range {p3 .. p3}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b6

    .line 368
    const-string v3, "statsdk"

    invoke-static {v3, v2}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c5
    .catchall {:try_start_1b6 .. :try_end_1c5} :catchall_116

    goto :goto_1b6

    .line 374
    :cond_1c6
    sget-object v2, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v3, v2, Lcom/baidu/mtjstatsdk/DataCoreObject;->d:Lorg/json/JSONArray;

    monitor-enter v3

    .line 375
    :try_start_1d3
    sget-object v2, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v2, v2, Lcom/baidu/mtjstatsdk/DataCoreObject;->d:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_1e2
    .catchall {:try_start_1d3 .. :try_end_1e2} :catchall_200

    move-result v4

    .line 377
    :try_start_1e3
    const-string v2, "s"

    const-string v5, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 378
    sget-object v2, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v2, v2, Lcom/baidu/mtjstatsdk/DataCoreObject;->d:Lorg/json/JSONArray;

    move-object/from16 v0, p1

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1fd
    .catch Lorg/json/JSONException; {:try_start_1e3 .. :try_end_1fd} :catch_203
    .catchall {:try_start_1e3 .. :try_end_1fd} :catchall_200

    .line 386
    :cond_1fd
    :goto_1fd
    :try_start_1fd
    monitor-exit v3

    goto/16 :goto_49

    :catchall_200
    move-exception v2

    monitor-exit v3
    :try_end_202
    .catchall {:try_start_1fd .. :try_end_202} :catchall_200

    throw v2

    .line 379
    :catch_203
    move-exception v2

    .line 382
    :try_start_204
    invoke-static/range {p3 .. p3}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1fd

    .line 383
    const-string v4, "statsdk"

    invoke-static {v4, v2}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20f
    .catchall {:try_start_204 .. :try_end_20f} :catchall_200

    goto :goto_1fd

    .line 349
    :catch_210
    move-exception v2

    move-object v3, v2

    move v2, v4

    goto/16 :goto_12e

    :cond_215
    move v4, v3

    goto :goto_19d
.end method

.method public putException(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    .prologue
    const/16 v2, 0x1400

    const/4 v5, 0x0

    .line 484
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 487
    :try_start_8
    const-string v0, "t"

    invoke-virtual {v1, v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 488
    const-string v0, "y"

    invoke-virtual {v1, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 489
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    .line 490
    if-le v0, v2, :cond_4f

    .line 491
    const/16 v0, 0x1400

    new-array v0, v0, [B

    .line 492
    const/4 v2, 0x0

    const/16 v3, 0x1400

    const/4 v4, 0x0

    invoke-virtual {p3, v2, v3, v0, v4}, Ljava/lang/String;->getBytes(II[BI)V

    .line 493
    array-length v2, v0

    .line 494
    invoke-static {p5}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 495
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;)I

    .line 497
    :cond_41
    const-string v2, "c"

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4b
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_4b} :catch_55

    .line 510
    :cond_4b
    :goto_4b
    invoke-virtual {p0, v1, v5, p5}, Lcom/baidu/mtjstatsdk/DataCore;->putException(Lorg/json/JSONObject;ZLjava/lang/String;)V

    .line 512
    return-void

    .line 499
    :cond_4f
    :try_start_4f
    const-string v0, "c"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_54
    .catch Lorg/json/JSONException; {:try_start_4f .. :try_end_54} :catch_55

    goto :goto_4b

    .line 502
    :catch_55
    move-exception v0

    .line 505
    invoke-static {p5}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 506
    const-string v2, "statsdk"

    invoke-static {v2, v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4b
.end method

.method public putException(Lorg/json/JSONObject;ZLjava/lang/String;)V
    .registers 8

    .prologue
    .line 444
    if-eqz p1, :cond_48

    if-nez p2, :cond_48

    .line 445
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    .line 446
    invoke-static {p3}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 447
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "statsdk"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "putException:addSize is:"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->a([Ljava/lang/Object;)I

    .line 449
    :cond_2a
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->a:I

    add-int/2addr v0, v1

    const v1, 0x32000

    if-le v0, v1, :cond_48

    .line 450
    invoke-static {p3}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 451
    const-string v0, "statsdk"

    const-string v1, "putException: size is full!"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_47
    :goto_47
    return-void

    .line 457
    :cond_48
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v1, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->f:Lorg/json/JSONArray;

    monitor-enter v1

    .line 459
    :try_start_53
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->f:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_60
    .catchall {:try_start_53 .. :try_end_60} :catchall_70

    move-result v2

    .line 463
    :try_start_61
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->f:Lorg/json/JSONArray;

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_6e
    .catch Lorg/json/JSONException; {:try_start_61 .. :try_end_6e} :catch_73
    .catchall {:try_start_61 .. :try_end_6e} :catchall_70

    .line 472
    :cond_6e
    :goto_6e
    :try_start_6e
    monitor-exit v1

    goto :goto_47

    :catchall_70
    move-exception v0

    monitor-exit v1
    :try_end_72
    .catchall {:try_start_6e .. :try_end_72} :catchall_70

    throw v0

    .line 465
    :catch_73
    move-exception v0

    .line 468
    :try_start_74
    invoke-static {p3}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 469
    const-string v2, "statsdk"

    invoke-static {v2, v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7f
    .catchall {:try_start_74 .. :try_end_7f} :catchall_70

    goto :goto_6e
.end method

.method public putExceptionToCache(Landroid/content/Context;Ljava/lang/String;)V
    .registers 12

    .prologue
    .line 515
    invoke-static {}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/BasicStoreTools;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->loadExceptionTurn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/mtjstatsdk/DataCore;->e:Z

    .line 516
    const-string v0, "statsdk"

    const-string v1, "putExceptionToCache in"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-boolean v0, p0, Lcom/baidu/mtjstatsdk/DataCore;->e:Z

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/DataCore;->c:Lcom/baidu/mtjstatsdk/GameExceptionListener;

    if-eqz v0, :cond_72

    .line 519
    const-string v0, "statsdk"

    const-string v1, "putExceptionToCache in in"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/DataCore;->c:Lcom/baidu/mtjstatsdk/GameExceptionListener;

    invoke-interface {v0, p1, p2}, Lcom/baidu/mtjstatsdk/GameExceptionListener;->exceptonAnalysis(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 521
    const-string v0, "statsdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putExceptionToCache in inexceptArray="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    if-eqz v8, :cond_72

    .line 524
    const/4 v0, 0x0

    move v7, v0

    :goto_42
    :try_start_42
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_72

    .line 525
    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 526
    const-string v1, "t"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v1, "c"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "y"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/baidu/mtjstatsdk/DataCore;->putException(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-virtual {p0, p1, p2}, Lcom/baidu/mtjstatsdk/DataCore;->flush(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_68} :catch_6c

    .line 524
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_42

    .line 532
    :catch_6c
    move-exception v0

    .line 533
    const-string v1, "statsdk"

    invoke-static {v1, v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 537
    :cond_72
    return-void
.end method

.method public putSession(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 217
    const-string v0, "{}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 232
    :cond_10
    :goto_10
    return-void

    .line 222
    :cond_11
    :try_start_11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 223
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/baidu/mtjstatsdk/DataCore;->putSession(Lorg/json/JSONObject;ZLjava/lang/String;)V

    .line 224
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 225
    const-string v1, "statsdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load last session:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_38} :catch_39

    goto :goto_10

    .line 227
    :catch_39
    move-exception v0

    .line 228
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 229
    const-string v1, "statsdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putSession()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public putSession(Lorg/json/JSONObject;ZLjava/lang/String;)V
    .registers 8

    .prologue
    .line 191
    if-eqz p1, :cond_48

    if-nez p2, :cond_48

    .line 192
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    .line 193
    invoke-static {p3}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 194
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "statsdk"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "putSession:addSize is:"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->a([Ljava/lang/Object;)I

    .line 196
    :cond_2a
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->a:I

    add-int/2addr v0, v1

    const v1, 0x32000

    if-le v0, v1, :cond_48

    .line 197
    invoke-static {p3}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 198
    const-string v0, "statsdk"

    const-string v1, "putSession: size is full!"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_47
    :goto_47
    return-void

    .line 203
    :cond_48
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v1, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->c:Lorg/json/JSONArray;

    monitor-enter v1

    .line 204
    :try_start_53
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->c:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_60
    .catchall {:try_start_53 .. :try_end_60} :catchall_70

    move-result v2

    .line 206
    :try_start_61
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->c:Lorg/json/JSONArray;

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_6e
    .catch Lorg/json/JSONException; {:try_start_61 .. :try_end_6e} :catch_73
    .catchall {:try_start_61 .. :try_end_6e} :catchall_70

    .line 213
    :cond_6e
    :goto_6e
    :try_start_6e
    monitor-exit v1

    goto :goto_47

    :catchall_70
    move-exception v0

    monitor-exit v1
    :try_end_72
    .catchall {:try_start_6e .. :try_end_72} :catchall_70

    throw v0

    .line 207
    :catch_73
    move-exception v0

    .line 209
    :try_start_74
    invoke-static {p3}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 210
    const-string v2, "statsdk"

    invoke-static {v2, v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7f
    .catchall {:try_start_74 .. :try_end_7f} :catchall_70

    goto :goto_6e
.end method

.method public declared-synchronized sendLogData(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 13

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 817
    monitor-enter p0

    :try_start_3
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v3, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->h:Lcom/baidu/mtjstatsdk/HeadObject;

    .line 818
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 819
    const-string v0, "statsdk"

    const-string v4, "sendLogData() begin."

    invoke-static {v0, v4}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const-string v0, "statsdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendLogData appkey= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const-string v0, "statsdk"

    const-string v4, "start installHeader begin."

    invoke-static {v0, v4}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_39
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->b:Lorg/json/JSONObject;

    invoke-virtual {v3, p1, v0, p2}, Lcom/baidu/mtjstatsdk/HeadObject;->installHeader(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 825
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 826
    const-string v0, "statsdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAppKey appkey= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :cond_64
    if-eqz v3, :cond_a5

    invoke-virtual {v3}, Lcom/baidu/mtjstatsdk/HeadObject;->getAppKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_78

    const-string v0, ""

    invoke-virtual {v3}, Lcom/baidu/mtjstatsdk/HeadObject;->getAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 830
    :cond_78
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->b:Lorg/json/JSONObject;

    invoke-virtual {v3, p1, v0, p2}, Lcom/baidu/mtjstatsdk/HeadObject;->installHeader(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 831
    invoke-virtual {v3}, Lcom/baidu/mtjstatsdk/HeadObject;->getAppKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_97

    const-string v0, ""

    invoke-virtual {v3}, Lcom/baidu/mtjstatsdk/HeadObject;->getAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 832
    :cond_97
    const-string v0, "APP Key\u4e22\u5931||can\'t find app key."

    .line 833
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 834
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->c(Ljava/lang/String;)I
    :try_end_a2
    .catchall {:try_start_3 .. :try_end_a2} :catchall_2ac

    :cond_a2
    move v0, v1

    .line 974
    :goto_a3
    monitor-exit p0

    return v0

    .line 839
    :cond_a5
    :try_start_a5
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iput-object v3, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->h:Lcom/baidu/mtjstatsdk/HeadObject;

    .line 840
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 841
    const-string v0, "statsdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "end setAppKey appkey= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/baidu/mtjstatsdk/HeadObject;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :cond_d1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 846
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    .line 847
    if-nez v0, :cond_e7

    .line 848
    const-string v0, "Log"

    const-string v4, ""

    invoke-static {v0, v4}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_e7
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v4, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->b:Lorg/json/JSONObject;

    .line 852
    monitor-enter v4
    :try_end_f2
    .catchall {:try_start_a5 .. :try_end_f2} :catchall_2ac

    .line 855
    :try_start_f2
    const-string v0, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 857
    const-string v5, "ss"

    invoke-static {p2}, Lcom/baidu/mtjstatsdk/bk;->a(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/bk;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->getSessionStartTime()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 860
    const-string v0, "wl2"

    iget-object v5, p0, Lcom/baidu/mtjstatsdk/DataCore;->f:Lorg/json/JSONArray;

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 862
    const-string v0, "he"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11e
    .catch Lorg/json/JSONException; {:try_start_f2 .. :try_end_11e} :catch_22c
    .catchall {:try_start_f2 .. :try_end_11e} :catchall_2a9

    .line 870
    :try_start_11e
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v5, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->c:Lorg/json/JSONArray;

    monitor-enter v5
    :try_end_129
    .catchall {:try_start_11e .. :try_end_129} :catchall_2a9

    .line 874
    :try_start_129
    const-string v6, "pr"

    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->c:Lorg/json/JSONArray;

    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_138
    .catch Lorg/json/JSONException; {:try_start_129 .. :try_end_138} :catch_23c
    .catchall {:try_start_129 .. :try_end_138} :catchall_2a6

    .line 886
    :try_start_138
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v6, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->d:Lorg/json/JSONArray;

    monitor-enter v6
    :try_end_143
    .catchall {:try_start_138 .. :try_end_143} :catchall_2a6

    .line 890
    :try_start_143
    const-string v7, "ev"

    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->d:Lorg/json/JSONArray;

    invoke-virtual {v3, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_152
    .catch Lorg/json/JSONException; {:try_start_143 .. :try_end_152} :catch_251
    .catchall {:try_start_143 .. :try_end_152} :catchall_2a3

    .line 900
    :try_start_152
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v7, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->f:Lorg/json/JSONArray;

    monitor-enter v7
    :try_end_15d
    .catchall {:try_start_152 .. :try_end_15d} :catchall_2a3

    .line 904
    :try_start_15d
    const-string v8, "ex"

    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->f:Lorg/json/JSONArray;

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_16c
    .catch Lorg/json/JSONException; {:try_start_15d .. :try_end_16c} :catch_263
    .catchall {:try_start_15d .. :try_end_16c} :catchall_2a0

    .line 914
    :try_start_16c
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/DataCore;->b:Lcom/baidu/mtjstatsdk/GameSDKListener;

    if-eqz v0, :cond_175

    .line 915
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/DataCore;->b:Lcom/baidu/mtjstatsdk/GameSDKListener;

    invoke-interface {v0, p1, p2}, Lcom/baidu/mtjstatsdk/GameSDKListener;->onSendLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 917
    :cond_175
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_178
    .catchall {:try_start_16c .. :try_end_178} :catchall_2a0

    move-result-object v0

    .line 932
    :try_start_179
    const-string v3, "http://hmma.baidu.com/app.gif"

    const v8, 0xc350

    const v9, 0xc350

    invoke-static {p1, v3, v0, v8, v9}, Lcom/baidu/mtjstatsdk/cx;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    .line 935
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a2

    .line 936
    const-string v3, "statsdk"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendLogData() send_sucess.data="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a2
    .catch Ljava/lang/Exception; {:try_start_179 .. :try_end_1a2} :catch_276
    .catchall {:try_start_179 .. :try_end_1a2} :catchall_2a0

    :cond_1a2
    move v1, v2

    .line 944
    :cond_1a3
    :goto_1a3
    :try_start_1a3
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ca

    .line 945
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "statsdk"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "send log data over. result="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->b([Ljava/lang/Object;)I

    .line 948
    :cond_1ca
    if-eqz v1, :cond_218

    .line 951
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/baidu/mtjstatsdk/DataCore;->a(ZLjava/lang/String;)V

    .line 953
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iput-object v2, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->f:Lorg/json/JSONArray;

    .line 956
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iput-object v2, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->d:Lorg/json/JSONArray;

    .line 957
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iput-object v2, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->c:Lorg/json/JSONArray;

    .line 959
    invoke-virtual {p0, p1, p2}, Lcom/baidu/mtjstatsdk/DataCore;->flush(Landroid/content/Context;Ljava/lang/String;)V

    .line 962
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/bk;->a(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/bk;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->setSessionCounted()V

    .line 965
    invoke-static {}, Lcom/baidu/mtjstatsdk/bg;->a()Lcom/baidu/mtjstatsdk/bg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mtjstatsdk/bg;->a(Landroid/content/Context;)V

    .line 967
    :cond_218
    monitor-exit v7
    :try_end_219
    .catchall {:try_start_1a3 .. :try_end_219} :catchall_2a0

    .line 968
    :try_start_219
    monitor-exit v6
    :try_end_21a
    .catchall {:try_start_219 .. :try_end_21a} :catchall_2a3

    .line 969
    :try_start_21a
    monitor-exit v5
    :try_end_21b
    .catchall {:try_start_21a .. :try_end_21b} :catchall_2a6

    .line 970
    :try_start_21b
    monitor-exit v4
    :try_end_21c
    .catchall {:try_start_21b .. :try_end_21c} :catchall_2a9

    .line 971
    :try_start_21c
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_229

    .line 972
    const-string v0, "statsdk"

    const-string v2, "sendLogData() end."

    invoke-static {v0, v2}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_229
    .catchall {:try_start_21c .. :try_end_229} :catchall_2ac

    :cond_229
    move v0, v1

    .line 974
    goto/16 :goto_a3

    .line 863
    :catch_22c
    move-exception v0

    .line 864
    :try_start_22d
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_238

    .line 865
    const-string v2, "statsdk"

    invoke-static {v2, v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 867
    :cond_238
    monitor-exit v4
    :try_end_239
    .catchall {:try_start_22d .. :try_end_239} :catchall_2a9

    move v0, v1

    goto/16 :goto_a3

    .line 876
    :catch_23c
    move-exception v0

    .line 879
    :try_start_23d
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24c

    .line 880
    const-string v2, "statsdk"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_24c
    monitor-exit v5
    :try_end_24d
    .catchall {:try_start_23d .. :try_end_24d} :catchall_2a6

    :try_start_24d
    monitor-exit v4
    :try_end_24e
    .catchall {:try_start_24d .. :try_end_24e} :catchall_2a9

    move v0, v1

    goto/16 :goto_a3

    .line 892
    :catch_251
    move-exception v0

    .line 893
    :try_start_252
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25d

    .line 894
    const-string v2, "statsdk"

    invoke-static {v2, v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 896
    :cond_25d
    monitor-exit v6
    :try_end_25e
    .catchall {:try_start_252 .. :try_end_25e} :catchall_2a3

    :try_start_25e
    monitor-exit v5
    :try_end_25f
    .catchall {:try_start_25e .. :try_end_25f} :catchall_2a6

    :try_start_25f
    monitor-exit v4
    :try_end_260
    .catchall {:try_start_25f .. :try_end_260} :catchall_2a9

    move v0, v1

    goto/16 :goto_a3

    .line 906
    :catch_263
    move-exception v0

    .line 907
    :try_start_264
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26f

    .line 908
    const-string v2, "statsdk"

    invoke-static {v2, v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 910
    :cond_26f
    monitor-exit v7
    :try_end_270
    .catchall {:try_start_264 .. :try_end_270} :catchall_2a0

    :try_start_270
    monitor-exit v6
    :try_end_271
    .catchall {:try_start_270 .. :try_end_271} :catchall_2a3

    :try_start_271
    monitor-exit v5
    :try_end_272
    .catchall {:try_start_271 .. :try_end_272} :catchall_2a6

    :try_start_272
    monitor-exit v4
    :try_end_273
    .catchall {:try_start_272 .. :try_end_273} :catchall_2a9

    move v0, v1

    goto/16 :goto_a3

    .line 938
    :catch_276
    move-exception v0

    .line 939
    :try_start_277
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a3

    .line 940
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v8, "statsdk"

    aput-object v8, v2, v3

    const/4 v3, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "httpPost:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/baidu/mtjstatsdk/cw;->b([Ljava/lang/Object;)I

    goto/16 :goto_1a3

    .line 967
    :catchall_2a0
    move-exception v0

    monitor-exit v7
    :try_end_2a2
    .catchall {:try_start_277 .. :try_end_2a2} :catchall_2a0

    :try_start_2a2
    throw v0

    .line 968
    :catchall_2a3
    move-exception v0

    monitor-exit v6
    :try_end_2a5
    .catchall {:try_start_2a2 .. :try_end_2a5} :catchall_2a3

    :try_start_2a5
    throw v0

    .line 969
    :catchall_2a6
    move-exception v0

    monitor-exit v5
    :try_end_2a8
    .catchall {:try_start_2a5 .. :try_end_2a8} :catchall_2a6

    :try_start_2a8
    throw v0

    .line 970
    :catchall_2a9
    move-exception v0

    monitor-exit v4
    :try_end_2ab
    .catchall {:try_start_2a8 .. :try_end_2ab} :catchall_2a9

    :try_start_2ab
    throw v0
    :try_end_2ac
    .catchall {:try_start_2ab .. :try_end_2ac} :catchall_2ac

    .line 817
    :catchall_2ac
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAppChannel(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 140
    if-eqz p2, :cond_c

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 141
    :cond_c
    invoke-static {p4}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 142
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "statsdk"

    aput-object v1, v0, v2

    const-string v1, "\u8bbe\u7f6e\u7684\u6e20\u9053\u4e0d\u80fd\u4e3a\u7a7a\u6216\u8005\u4e3anull || The channel that you have been set is null or empty, please check it."

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->c([Ljava/lang/Object;)I

    .line 146
    :cond_20
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->h:Lcom/baidu/mtjstatsdk/HeadObject;

    invoke-virtual {v0, p2}, Lcom/baidu/mtjstatsdk/HeadObject;->setAppChannel(Ljava/lang/String;)V

    .line 147
    if-eqz p3, :cond_40

    if-eqz p2, :cond_40

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 152
    invoke-static {}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/BasicStoreTools;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p4, v3}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->setAppChannelWithPreferenceAndAppKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 155
    :cond_40
    if-nez p3, :cond_4b

    .line 163
    invoke-static {}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/BasicStoreTools;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v1, p4, v2}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->setAppChannelWithPreferenceAndAppKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 166
    :cond_4b
    return-void
.end method

.method public setAppChannel(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 125
    if-eqz p1, :cond_a

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 126
    :cond_a
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "statsdk"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u8bbe\u7f6e\u7684\u6e20\u9053\u4e0d\u80fd\u4e3a\u7a7a\u6216\u8005\u4e3anull || The channel that you have been set is null or empty, please check it."

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->c([Ljava/lang/Object;)I

    .line 128
    :cond_1a
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->h:Lcom/baidu/mtjstatsdk/HeadObject;

    invoke-virtual {v0, p1}, Lcom/baidu/mtjstatsdk/HeadObject;->setAppChannel(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public setAppVersionName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 178
    if-eqz p1, :cond_a

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 179
    :cond_a
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 180
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "statsdk"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u8bbe\u7f6e\u7684\u7248\u672c\u4e0d\u80fd\u4e3a\u7a7a\u6216\u8005\u4e3anull || The versionName that you have been set is null or empty, please check it."

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->c([Ljava/lang/Object;)I

    .line 184
    :cond_20
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->h:Lcom/baidu/mtjstatsdk/HeadObject;

    invoke-virtual {v0, p1}, Lcom/baidu/mtjstatsdk/HeadObject;->setAppVersionName(Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public setGameExceptionOperation(Lcom/baidu/mtjstatsdk/GameExceptionListener;)V
    .registers 2

    .prologue
    .line 93
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/DataCore;->c:Lcom/baidu/mtjstatsdk/GameExceptionListener;

    .line 94
    return-void
.end method

.method public setGameSDKListener(Lcom/baidu/mtjstatsdk/GameSDKListener;)V
    .registers 2

    .prologue
    .line 89
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/DataCore;->b:Lcom/baidu/mtjstatsdk/GameSDKListener;

    .line 90
    return-void
.end method

.method public setLogSenderDelayed(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 109
    if-ltz p1, :cond_11

    const/16 v0, 0x1e

    if-gt p1, v0, :cond_11

    .line 110
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    invoke-virtual {v0, p1}, Lcom/baidu/mtjstatsdk/DataCoreObject;->a(I)V

    .line 112
    :cond_11
    return-void
.end method

.method public setSDKType(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 82
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    .line 83
    if-eqz v0, :cond_13

    iget-object v1, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->h:Lcom/baidu/mtjstatsdk/HeadObject;

    if-eqz v1, :cond_13

    .line 84
    iget-object v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->h:Lcom/baidu/mtjstatsdk/HeadObject;

    invoke-virtual {v0, p2}, Lcom/baidu/mtjstatsdk/HeadObject;->setSDKType(Ljava/lang/String;)V

    .line 86
    :cond_13
    return-void
.end method
