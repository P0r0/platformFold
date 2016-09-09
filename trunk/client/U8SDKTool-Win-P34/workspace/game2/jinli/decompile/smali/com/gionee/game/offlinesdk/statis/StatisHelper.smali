.class public Lcom/gionee/game/offlinesdk/statis/StatisHelper;
.super Ljava/lang/Object;
.source "StatisHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StatisHelper"

.field private static volatile sInstance:Lcom/gionee/game/offlinesdk/statis/StatisHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/gionee/game/offlinesdk/statis/StatisHelper;->sInstance:Lcom/gionee/game/offlinesdk/statis/StatisHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method private createAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 9
    .param p1, "moduleTag"    # Ljava/lang/String;
    .param p2, "eventTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 80
    .local p3, "extraInfoTagMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 81
    .local v3, "stringBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    invoke-static {p3}, Lcom/gionee/game/offlinesdk/utils/Utils;->isMapValid(Ljava/util/Map;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 85
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 100
    :goto_1a
    return-object v4

    .line 88
    :cond_1b
    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    const/4 v2, 0x0

    .line 90
    .local v2, "index":I
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 91
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-lez v2, :cond_3c

    .line 92
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    :cond_3c
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 99
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_54
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1a
.end method

.method private createCommonParamsMap()Ljava/util/HashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 112
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "GameAPP"

    invoke-static {}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v1, "timeStamp"

    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/statis/StatisHelper;->getCurrentTimeStamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-object v0
.end method

.method private createParamsMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 105
    .local v0, "finalMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 106
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/statis/StatisHelper;->createCommonParamsMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 107
    return-object v0
.end method

.method private getCurrentTimeStamp()Ljava/lang/String;
    .registers 5

    .prologue
    .line 118
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 119
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 120
    .local v1, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getInstance()Lcom/gionee/game/offlinesdk/statis/StatisHelper;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/gionee/game/offlinesdk/statis/StatisHelper;->sInstance:Lcom/gionee/game/offlinesdk/statis/StatisHelper;

    if-nez v0, :cond_b

    .line 31
    new-instance v0, Lcom/gionee/game/offlinesdk/statis/StatisHelper;

    invoke-direct {v0}, Lcom/gionee/game/offlinesdk/statis/StatisHelper;-><init>()V

    sput-object v0, Lcom/gionee/game/offlinesdk/statis/StatisHelper;->sInstance:Lcom/gionee/game/offlinesdk/statis/StatisHelper;

    .line 33
    :cond_b
    sget-object v0, Lcom/gionee/game/offlinesdk/statis/StatisHelper;->sInstance:Lcom/gionee/game/offlinesdk/statis/StatisHelper;

    return-object v0
.end method

.method private printStatisLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 11
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p3, "extraInfoIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 67
    .local v1, "eventIdMapBuffer":Ljava/lang/StringBuffer;
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 68
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, " key = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v4, " value = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_d

    .line 74
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_34
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_63

    const-string v3, ""

    .line 76
    .local v3, "suffixStr":Ljava/lang/String;
    :goto_3c
    const-string v4, "StatisHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "statis send eventId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " *** action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void

    .line 74
    .end local v3    # "suffixStr":Ljava/lang/String;
    :cond_63
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " *** extraInfoIdMap elements is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3c
.end method


# virtual methods
.method public send(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "moduleTag"    # Ljava/lang/String;
    .param p2, "eventTag"    # Ljava/lang/String;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/gionee/game/offlinesdk/statis/StatisHelper;->send(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 38
    return-void
.end method

.method public send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "moduleTag"    # Ljava/lang/String;
    .param p2, "eventTag"    # Ljava/lang/String;
    .param p3, "extraInforKey"    # Ljava/lang/String;
    .param p4, "extraInforValue"    # Ljava/lang/String;

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    .local v0, "extraInfoTagMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {p0, p1, p2, v0}, Lcom/gionee/game/offlinesdk/statis/StatisHelper;->send(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 44
    return-void
.end method

.method public send(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 12
    .param p1, "moduleTag"    # Ljava/lang/String;
    .param p2, "eventTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p3, "extraInfoTagMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v6, Lcom/gionee/gsp/common/GnCommonConfig;->sIsInitSuccess:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_10

    .line 48
    const-string v6, "StatisHelper"

    const-string v7, "YouJuAgent is not initialized yet!"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :goto_f
    return-void

    .line 52
    :cond_10
    invoke-static {p2}, Lcom/gionee/game/offlinesdk/statis/StatisConst;->getIdByTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "eventId":Ljava/lang/String;
    invoke-direct {p0, p1, p2, p3}, Lcom/gionee/game/offlinesdk/statis/StatisHelper;->createAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "action":Ljava/lang/String;
    invoke-static {p3}, Lcom/gionee/game/offlinesdk/statis/StatisConst;->getIdMapByTagMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 56
    .local v4, "extraInfoIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_1c
    invoke-static {}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 57
    .local v1, "context":Landroid/content/Context;
    invoke-direct {p0, v4}, Lcom/gionee/game/offlinesdk/statis/StatisHelper;->createParamsMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    .line 58
    .local v5, "finalIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v1, v3, v0, v5}, Lcom/youju/statistics/YouJuAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 59
    invoke-direct {p0, v3, v0, v5}, Lcom/gionee/game/offlinesdk/statis/StatisHelper;->printStatisLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2a} :catch_2b

    goto :goto_f

    .line 60
    .end local v1    # "context":Landroid/content/Context;
    .end local v5    # "finalIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_2b
    move-exception v2

    .line 61
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "test"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method
