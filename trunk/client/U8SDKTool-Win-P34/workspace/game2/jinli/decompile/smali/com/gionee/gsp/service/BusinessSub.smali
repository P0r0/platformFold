.class public Lcom/gionee/gsp/service/BusinessSub;
.super Ljava/lang/Object;
.source "BusinessSub.java"


# instance fields
.field mGnCommplatformImpl:Lcom/gionee/gsp/service/GnCommplatformImplForBase;


# direct methods
.method public constructor <init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase;)V
    .registers 2
    .param p1, "gnCommplatformImpl"    # Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/gionee/gsp/service/BusinessSub;->mGnCommplatformImpl:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    .line 25
    return-void
.end method

.method private checkDependIdIsRight(Ljava/util/Map;Ljava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/gionee/gsp/data/GnDependConfigData;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/gionee/gsp/data/GnComponentConfigData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "dependConfigMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/gionee/gsp/data/GnDependConfigData;>;"
    .local p2, "componentConfigMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 189
    .local v5, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/gionee/gsp/data/GnDependConfigData;>;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 190
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/gionee/gsp/data/GnDependConfigData;>;>;"
    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_f

    .line 209
    return-void

    .line 191
    :cond_f
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 192
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/gionee/gsp/data/GnDependConfigData;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 193
    .local v3, "id":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gionee/gsp/data/GnDependConfigData;

    .line 195
    .local v0, "dependConfigData":Lcom/gionee/gsp/data/GnDependConfigData;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4a

    .line 196
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "gn_depend_config.json\u91cc\u9762\u7684id"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u5728gn_component_config.json\u6587\u4ef6\u6ca1\u6709\u627e\u5230\uff0c\u8bf7\u786e\u8ba4gn_depend_config.json\u91cc\u9762\u7684id\u662f\u5426\u6b63\u786e\uff1f"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 199
    :cond_4a
    iget-object v6, v0, Lcom/gionee/gsp/data/GnDependConfigData;->depend:[I

    invoke-static {v6}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 200
    iget-object v7, v0, Lcom/gionee/gsp/data/GnDependConfigData;->depend:[I

    array-length v8, v7

    const/4 v6, 0x0

    :goto_56
    if-ge v6, v8, :cond_8

    aget v1, v7, v6

    .line 201
    .local v1, "dependId":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {p2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7f

    .line 202
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "gn_depend_config.json\u91cc\u9762\u7684id"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 203
    const-string v8, "\u5728gn_component_config.json\u6587\u4ef6\u6ca1\u6709\u627e\u5230\uff0c\u8bf7\u786e\u8ba4gn_depend_config.json\u91cc\u9762\u7684id\u662f\u5426\u6b63\u786e\uff1f"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 202
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 200
    :cond_7f
    add-int/lit8 v6, v6, 0x1

    goto :goto_56
.end method


# virtual methods
.method public checkAccountReference(Landroid/content/Context;Ljava/util/Map;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/gionee/gsp/data/GnComponentConfigData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p2, "componentConfigMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    sget-object v9, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->sNeedCheckComponentMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 144
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/gionee/gsp/data/GnComponentConfigData;>;>;"
    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_11

    .line 175
    :cond_10
    :goto_10
    return-void

    .line 145
    :cond_11
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 146
    .local v0, "entery":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gionee/gsp/data/GnComponentConfigData;

    .line 147
    .local v1, "gnComponentConfigData":Lcom/gionee/gsp/data/GnComponentConfigData;
    iget v2, v1, Lcom/gionee/gsp/data/GnComponentConfigData;->id:I

    .line 148
    .local v2, "id":I
    sget-object v9, Lcom/gionee/gsp/GnEDependComponent;->ACCOUNT:Lcom/gionee/gsp/GnEDependComponent;

    invoke-virtual {v9}, Lcom/gionee/gsp/GnEDependComponent;->getValue()I

    move-result v9

    if-ne v2, v9, :cond_a

    .line 150
    iget-object v6, v1, Lcom/gionee/gsp/data/GnComponentConfigData;->packageName:Ljava/lang/String;

    .line 151
    .local v6, "packageName":Ljava/lang/String;
    const-string v5, "1.6.0"

    .line 152
    .local v5, "minVersion":Ljava/lang/String;
    const-string v3, "2.0.0"

    .line 156
    .local v3, "independentApkVersion":Ljava/lang/String;
    invoke-static {p1, v6}, Lcom/gionee/gsp/util/GnCommonUtil;->getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/gionee/gsp/util/GnUtils;->isNull(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 160
    invoke-static {p1, v6}, Lcom/gionee/gsp/util/GnCommonUtil;->getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 161
    .local v8, "versionName":Ljava/lang/String;
    invoke-virtual {v8, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_6b

    .line 162
    sget-object v9, Lcom/gionee/gsp/GnELocalDependComponent;->GNSERVICE:Lcom/gionee/gsp/GnELocalDependComponent;

    invoke-virtual {v9}, Lcom/gionee/gsp/GnELocalDependComponent;->getValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/gionee/gsp/data/GnComponentConfigData;

    .line 163
    .local v7, "service":Lcom/gionee/gsp/data/GnComponentConfigData;
    invoke-static {v7}, Lcom/gionee/gsp/util/GnUtils;->isNull(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5f

    .line 164
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "\u6ca1\u6709\u68c0\u67e5\u5230\u4f1a\u5458\u4e2d\u5fc3\u7684\u914d\u7f6e\u4fe1\u606f\uff0c\u8bf7\u68c0\u67e5gn_component_config.json\u6587\u4ef6"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 166
    :cond_5f
    sget-object v9, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->sNeedCheckComponentMap:Ljava/util/Map;

    iget v10, v7, Lcom/gionee/gsp/data/GnComponentConfigData;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 170
    .end local v7    # "service":Lcom/gionee/gsp/data/GnComponentConfigData;
    :cond_6b
    invoke-virtual {v8, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_a

    goto :goto_10
.end method

.method public checkReference(Ljava/util/Map;Ljava/util/Map;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/gionee/gsp/data/GnDependConfigData;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/gionee/gsp/data/GnComponentConfigData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "dependConfigMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/gionee/gsp/data/GnDependConfigData;>;"
    .local p2, "componentConfigMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    const/4 v6, 0x0

    .line 100
    .local v6, "tempMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    :cond_1
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "tempMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 101
    .restart local v6    # "tempMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 102
    sget-object v7, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->sNeedCheckComponentMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 103
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/gionee/gsp/data/GnComponentConfigData;>;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 104
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/gionee/gsp/data/GnComponentConfigData;>;>;"
    :cond_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2b

    .line 123
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_24

    .line 124
    sget-object v7, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->sNeedCheckComponentMap:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 127
    :cond_24
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v7

    .line 99
    if-gtz v7, :cond_1

    .line 128
    return-void

    .line 105
    :cond_2b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 106
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 108
    .local v2, "id":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 110
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/gionee/gsp/data/GnDependConfigData;

    iget-object v0, v7, Lcom/gionee/gsp/data/GnDependConfigData;->depend:[I

    .line 111
    .local v0, "dependId":[I
    invoke-static {v0}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    array-length v7, v0

    if-lez v7, :cond_13

    .line 112
    array-length v9, v0

    const/4 v7, 0x0

    move v8, v7

    :goto_5d
    if-ge v8, v9, :cond_13

    aget v5, v0, v8

    .line 114
    .local v5, "tempId":I
    sget-object v7, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->sNeedCheckComponentMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7e

    .line 116
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/gionee/gsp/data/GnComponentConfigData;

    invoke-interface {v6, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_7e
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_5d
.end method

.method public readGnComponentConfig(Landroid/app/Activity;Ljava/util/Map;)Ljava/util/Map;
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/gionee/gsp/data/GnComponentConfigData;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/gionee/gsp/data/GnDependConfigData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    .local p2, "componentConfigMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    iget-object v2, p0, Lcom/gionee/gsp/service/BusinessSub;->mGnCommplatformImpl:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    iget-object v2, v2, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->mGnLocalConfig:Lcom/gionee/gsp/common/GnLocalConfig;

    invoke-virtual {v2, p1}, Lcom/gionee/gsp/common/GnLocalConfig;->getDependConfig(Landroid/app/Activity;)Ljava/util/Map;

    move-result-object v0

    .line 51
    .local v0, "dependConfigMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/gionee/gsp/data/GnDependConfigData;>;"
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_19

    .line 52
    const-string v1, "\u89e3\u6790gn_depend_config.json\u6570\u636e\u4e3a\u7a7a\uff0c\u8fd4\u56de\uff0c\u4e0d\u505a\u5904\u7406\u3002"

    .line 53
    .local v1, "message":Ljava/lang/String;
    invoke-static {v1}, Lcom/gionee/gsp/util/GnLogUtil;->w(Ljava/lang/String;)V

    .line 55
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    .end local v1    # "message":Ljava/lang/String;
    :cond_19
    invoke-direct {p0, v0, p2}, Lcom/gionee/gsp/service/BusinessSub;->checkDependIdIsRight(Ljava/util/Map;Ljava/util/Map;)V

    .line 60
    return-object v0
.end method

.method public readGnComponentConfig(Landroid/content/Context;)Ljava/util/Map;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/gionee/gsp/data/GnComponentConfigData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v2, p0, Lcom/gionee/gsp/service/BusinessSub;->mGnCommplatformImpl:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    iget-object v2, v2, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->mGnLocalConfig:Lcom/gionee/gsp/common/GnLocalConfig;

    invoke-virtual {v2, p1}, Lcom/gionee/gsp/common/GnLocalConfig;->getComponentConfig(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 34
    .local v0, "componentConfigMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_19

    .line 35
    const-string v1, "\u89e3\u6790gn_component_config.json\u6570\u636e\u4e3a\u7a7a\uff0c\u8fd4\u56de\uff0c\u4e0d\u505a\u5904\u7406\u3002"

    .line 36
    .local v1, "message":Ljava/lang/String;
    invoke-static {v1}, Lcom/gionee/gsp/util/GnLogUtil;->w(Ljava/lang/String;)V

    .line 38
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 40
    .end local v1    # "message":Ljava/lang/String;
    :cond_19
    return-object v0
.end method
