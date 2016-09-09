.class public Lcom/gionee/gsp/common/GnLocalConfig;
.super Ljava/lang/Object;
.source "GnLocalConfig.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContextClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getComponentConfig(Landroid/content/Context;)Ljava/util/Map;
    .registers 8
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
    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v0, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    :try_start_5
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "gionee/gn_component_config.json"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 50
    .local v2, "is":Ljava/io/InputStream;
    new-instance v3, Ljava/lang/String;

    invoke-static {v2}, Lcom/gionee/gsp/util/GnCommonUtil;->readInputStream(Ljava/io/InputStream;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 52
    .local v3, "result":Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/gionee/gsp/util/GnJsonUtil;->parserComponentConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1b} :catch_2f

    move-result-object v0

    .line 57
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "result":Ljava/lang/String;
    :goto_1c
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u83b7\u53d6\u5b50\u90e8\u4ef6\u7684\u914d\u7f6e\u4fe1\u606f\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gionee/gsp/util/GnLogUtil;->i(Ljava/lang/String;)V

    .line 58
    return-object v0

    .line 53
    :catch_2f
    move-exception v1

    .line 55
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/gionee/gsp/util/GnCommonUtil;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1c
.end method

.method public getDependConfig(Landroid/app/Activity;)Ljava/util/Map;
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/gionee/gsp/data/GnDependConfigData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    .local v0, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/gionee/gsp/data/GnDependConfigData;>;"
    :try_start_5
    invoke-virtual {p1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "gionee/gn_depend_config.json"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 70
    .local v2, "is":Ljava/io/InputStream;
    new-instance v3, Ljava/lang/String;

    invoke-static {v2}, Lcom/gionee/gsp/util/GnCommonUtil;->readInputStream(Ljava/io/InputStream;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 72
    .local v3, "result":Ljava/lang/String;
    invoke-static {v3}, Lcom/gionee/gsp/util/GnJsonUtil;->parserDependConfig(Ljava/lang/String;)Ljava/util/Map;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1b} :catch_2f

    move-result-object v0

    .line 77
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "result":Ljava/lang/String;
    :goto_1c
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u83b7\u53d6\u5b50\u90e8\u4ef6\u4e4b\u95f4\u7684\u4f9d\u8d56\u5173\u7cfb\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gionee/gsp/util/GnLogUtil;->i(Ljava/lang/String;)V

    .line 78
    return-object v0

    .line 73
    :catch_2f
    move-exception v1

    .line 75
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/gionee/gsp/util/GnCommonUtil;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1c
.end method

.method public init()V
    .registers 1

    .prologue
    .line 27
    return-void
.end method

.method public parser(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    return-void
.end method
