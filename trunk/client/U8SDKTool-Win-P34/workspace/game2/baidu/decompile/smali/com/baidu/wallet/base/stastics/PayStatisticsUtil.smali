.class public final Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field public static fromGroup:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->fromGroup:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final varargs getGroupStr([Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    const/4 v0, 0x0

    :goto_d
    array-length v3, p0

    if-ge v0, v3, :cond_29

    aget-object v3, p0, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_23

    aget-object v3, p0, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_23
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    :cond_29
    invoke-static {}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static getTime()Ljava/lang/String;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initMTJForOnce(Landroid/content/Context;)V
    .registers 3

    if-nez p0, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    :try_start_3
    sget-boolean v0, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->a:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->a:Z

    invoke-static {p0}, Lcom/baidu/wallet/core/utils/PhoneUtils;->getUA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/wallet/base/stastics/StatService;->setAppUa(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v0, 0xa

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/base/stastics/StatService;->setSendLogStrategy(Landroid/content/Context;IZ)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/baidu/wallet/base/stastics/StatService;->setOn(Landroid/content/Context;I)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1b} :catch_1c

    goto :goto_2

    :catch_1c
    move-exception v0

    goto :goto_2
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-nez p0, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_d

    const-string p2, ""

    :cond_d
    :try_start_d
    invoke-static {p0, p1, p2}, Lcom/baidu/wallet/base/stastics/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_2

    :catch_11
    move-exception v0

    goto :goto_2
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-nez p0, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_d

    const-string p2, ""

    :cond_d
    :try_start_d
    invoke-static {p0, p1, p2, p3}, Lcom/baidu/wallet/base/stastics/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_2

    :catch_11
    move-exception v0

    goto :goto_2
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 7

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_9

    :cond_19
    :try_start_19
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/baidu/wallet/base/stastics/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_20} :catch_21

    :goto_20
    return-void

    :catch_21
    move-exception v0

    goto :goto_20
.end method

.method public static onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-nez p0, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_d

    const-string p2, ""

    :cond_d
    :try_start_d
    invoke-static {p0, p1, p2, p3}, Lcom/baidu/wallet/base/stastics/StatService;->onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_2

    :catch_11
    move-exception v0

    goto :goto_2
.end method

.method public static onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-nez p0, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_d

    const-string p2, ""

    :cond_d
    :try_start_d
    invoke-static {p0, p1, p2}, Lcom/baidu/wallet/base/stastics/StatService;->onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_2

    :catch_11
    move-exception v0

    goto :goto_2
.end method

.method public static onPageEnd(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    :try_start_3
    invoke-static {p0, p1}, Lcom/baidu/wallet/base/stastics/StatService;->onPageEnd(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method public static onPageStart(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    :try_start_3
    invoke-static {p0, p1}, Lcom/baidu/wallet/base/stastics/StatService;->onPageStart(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method public static setExtOrder(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/baidu/wallet/base/stastics/BasicStoreTools;->getInstance()Lcom/baidu/wallet/base/stastics/BasicStoreTools;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/wallet/base/stastics/BasicStoreTools;->setOrderID(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/wallet/base/stastics/p;->a:Z

    return-void
.end method

.method public static setIterOrder(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/baidu/wallet/base/stastics/BasicStoreTools;->getInstance()Lcom/baidu/wallet/base/stastics/BasicStoreTools;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/wallet/base/stastics/BasicStoreTools;->setInternalID(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static transToJsonArrayString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, ""

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2e

    if-eqz p0, :cond_2e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2e

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_2e

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_1f
    array-length v3, v1

    if-ge v0, v3, :cond_2a

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_2a
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2e
    return-object v0
.end method
