.class public Lcom/gionee/game/offlinesdk/statis/StatisConst;
.super Ljava/lang/Object;
.source "StatisConst.java"


# static fields
.field public static final ARROW:Ljava/lang/String; = "->"

.field public static final COLON:Ljava/lang/String; = ":"

.field private static final ID_CLICK_CANCEL_PAY:Ljava/lang/String; = "2_clickCancelPay"

.field private static final ID_CLICK_CONTINUE_PAY:Ljava/lang/String; = "2_clickContinuePay"

.field private static final ID_CLICK_FLOAT_WINDOWS:Ljava/lang/String; = "click"

.field private static final ID_CLICK_GIVEUP_UPDATE:Ljava/lang/String; = "2_clickGiveupUpdate"

.field private static final ID_CLICK_INSTALLATION:Ljava/lang/String; = "2_clickInstallation"

.field private static final ID_ENTER_CANCEL_PAY_DIALOG:Ljava/lang/String; = "2_enterCancelPayDialog"

.field private static final ID_ENTER_UPDATE_NOTICE:Ljava/lang/String; = "2_enterUpdateNotice"

.field public static final LEFT_BRACKET:Ljava/lang/String; = "("

.field public static final MODULE_PLUGIN_CANCEL_PAY_DIALOG:Ljava/lang/String; = "2_\u9000\u51fa\u652f\u4ed8\u4e8c\u6b21\u786e\u8ba4\u9875\u9762"

.field public static final MODULE_PLUGIN_FLOAT_WINDOWS:Ljava/lang/String; = "floatWindows"

.field public static final MODULE_PLUGIN_UPGRADE:Ljava/lang/String; = "2_\u66f4\u65b0\u9875\u9762"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "GameAPP"

.field public static final RIGHT_BRACKET:Ljava/lang/String; = ")"

.field public static final SEMICOLON:Ljava/lang/String; = ";"

.field public static final SOURCE:Ljava/lang/String; = "source"

.field public static final TAG_CLICK_CANCEL_PAY:Ljava/lang/String; = "\u70b9\u51fb\u53d6\u6d88\u652f\u4ed8"

.field public static final TAG_CLICK_CONTINUE_PAY:Ljava/lang/String; = "\u70b9\u51fb\u7ee7\u7eed\u652f\u4ed8"

.field public static final TAG_CLICK_FLOAT_WINDOWS:Ljava/lang/String; = "\u70b9\u51fb\u60ac\u6d6e\u7a97"

.field public static final TAG_CLICK_GIVEUP_UPDATE:Ljava/lang/String; = "\u70b9\u51fb\u6682\u4e0d\u66f4\u65b0"

.field public static final TAG_CLICK_INSTALLATION:Ljava/lang/String; = "\u70b9\u51fb\u5b89\u88c5"

.field public static final TAG_ENTER_CANCEL_PAY_DIALOG:Ljava/lang/String; = "\u51fa\u73b0\u4e8c\u6b21\u786e\u8ba4\u9875\u9762"

.field public static final TAG_ENTER_UPDATE_NOTICE:Ljava/lang/String; = "\u51fa\u73b0\u63d0\u793a\u9875\u9762"

.field public static final TIME_STAMP:Ljava/lang/String; = "timeStamp"

.field private static sTagIdDictionary:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gionee/game/offlinesdk/statis/StatisConst;->sTagIdDictionary:Ljava/util/Map;

    .line 56
    invoke-static {}, Lcom/gionee/game/offlinesdk/statis/StatisConst;->fillTagDictionary()V

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fillTagDictionary()V
    .registers 3

    .prologue
    .line 60
    sget-object v0, Lcom/gionee/game/offlinesdk/statis/StatisConst;->sTagIdDictionary:Ljava/util/Map;

    const-string v1, "\u51fa\u73b0\u63d0\u793a\u9875\u9762"

    const-string v2, "2_enterUpdateNotice"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/gionee/game/offlinesdk/statis/StatisConst;->sTagIdDictionary:Ljava/util/Map;

    const-string v1, "\u70b9\u51fb\u6682\u4e0d\u66f4\u65b0"

    const-string v2, "2_clickGiveupUpdate"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/gionee/game/offlinesdk/statis/StatisConst;->sTagIdDictionary:Ljava/util/Map;

    const-string v1, "\u70b9\u51fb\u5b89\u88c5"

    const-string v2, "2_clickInstallation"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/gionee/game/offlinesdk/statis/StatisConst;->sTagIdDictionary:Ljava/util/Map;

    const-string v1, "\u51fa\u73b0\u4e8c\u6b21\u786e\u8ba4\u9875\u9762"

    const-string v2, "2_enterCancelPayDialog"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/gionee/game/offlinesdk/statis/StatisConst;->sTagIdDictionary:Ljava/util/Map;

    const-string v1, "\u70b9\u51fb\u7ee7\u7eed\u652f\u4ed8"

    const-string v2, "2_clickContinuePay"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/gionee/game/offlinesdk/statis/StatisConst;->sTagIdDictionary:Ljava/util/Map;

    const-string v1, "\u70b9\u51fb\u53d6\u6d88\u652f\u4ed8"

    const-string v2, "2_clickCancelPay"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/gionee/game/offlinesdk/statis/StatisConst;->sTagIdDictionary:Ljava/util/Map;

    const-string v1, "\u70b9\u51fb\u60ac\u6d6e\u7a97"

    const-string v2, "click"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method

.method public static getIdByTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 70
    if-nez p0, :cond_5

    .line 71
    const-string v0, ""

    .line 73
    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Lcom/gionee/game/offlinesdk/statis/StatisConst;->sTagIdDictionary:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_4
.end method

.method public static getIdMapByTagMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 8
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
    .line 77
    .local p0, "tagMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 78
    .local v3, "idMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0}, Lcom/gionee/game/offlinesdk/utils/Utils;->isMapValid(Ljava/util/Map;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 87
    :cond_b
    return-object v3

    .line 81
    :cond_c
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 82
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v5, Lcom/gionee/game/offlinesdk/statis/StatisConst;->sTagIdDictionary:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 83
    .local v2, "idKey":Ljava/lang/String;
    sget-object v5, Lcom/gionee/game/offlinesdk/statis/StatisConst;->sTagIdDictionary:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 84
    .local v4, "idValue":Ljava/lang/String;
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14
.end method
