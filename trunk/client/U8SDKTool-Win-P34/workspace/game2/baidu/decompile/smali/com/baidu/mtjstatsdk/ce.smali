.class public Lcom/baidu/mtjstatsdk/ce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mtjstatsdk/cf;


# instance fields
.field final synthetic a:Lcom/baidu/mtjstatsdk/game/BDGameDataObject;


# direct methods
.method public constructor <init>(Lcom/baidu/mtjstatsdk/game/BDGameDataObject;)V
    .registers 2

    .prologue
    .line 29
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/ce;->a:Lcom/baidu/mtjstatsdk/game/BDGameDataObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/mtjstatsdk/cj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "charge_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/ce;->a:Lcom/baidu/mtjstatsdk/game/BDGameDataObject;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->a(Lcom/baidu/mtjstatsdk/game/BDGameDataObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/baidu/mtjstatsdk/game/BDGameUtil;->generateMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/ce;->a:Lcom/baidu/mtjstatsdk/game/BDGameDataObject;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->b(Lcom/baidu/mtjstatsdk/game/BDGameDataObject;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/baidu/mtjstatsdk/game/BDGameUtil;->readData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    :try_start_31
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    :goto_37
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_55

    .line 39
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 40
    invoke-static {v2}, Lcom/baidu/mtjstatsdk/cj;->a(Lorg/json/JSONObject;)Lcom/baidu/mtjstatsdk/cj;

    move-result-object v2

    .line 41
    if-eqz v2, :cond_4e

    .line 42
    invoke-virtual {v2}, Lcom/baidu/mtjstatsdk/cj;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4e
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_4e} :catch_51

    .line 38
    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 46
    :catch_51
    move-exception v0

    .line 47
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 49
    :cond_55
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONArray;)V
    .registers 7

    .prologue
    .line 72
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/ce;->a:Lcom/baidu/mtjstatsdk/game/BDGameDataObject;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->b(Lcom/baidu/mtjstatsdk/game/BDGameDataObject;)Landroid/content/Context;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/ce;->a:Lcom/baidu/mtjstatsdk/game/BDGameDataObject;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->a(Lcom/baidu/mtjstatsdk/game/BDGameDataObject;)Ljava/lang/String;

    move-result-object v1

    .line 74
    if-eqz v0, :cond_3d

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "charge_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/baidu/mtjstatsdk/game/BDGameUtil;->generateMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/mtjstatsdk/game/BDGameUtil;->writeData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 79
    :cond_3d
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 7

    .prologue
    .line 92
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/ce;->a:Lcom/baidu/mtjstatsdk/game/BDGameDataObject;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->b(Lcom/baidu/mtjstatsdk/game/BDGameDataObject;)Landroid/content/Context;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/ce;->a:Lcom/baidu/mtjstatsdk/game/BDGameDataObject;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->a(Lcom/baidu/mtjstatsdk/game/BDGameDataObject;)Ljava/lang/String;

    move-result-object v1

    .line 94
    if-eqz v0, :cond_3d

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/baidu/mtjstatsdk/game/BDGameUtil;->generateMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/mtjstatsdk/game/BDGameUtil;->writeData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 99
    :cond_3d
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 7

    .prologue
    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/ce;->a:Lcom/baidu/mtjstatsdk/game/BDGameDataObject;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->b(Lcom/baidu/mtjstatsdk/game/BDGameDataObject;)Landroid/content/Context;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/ce;->a:Lcom/baidu/mtjstatsdk/game/BDGameDataObject;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->a(Lcom/baidu/mtjstatsdk/game/BDGameDataObject;)Ljava/lang/String;

    move-result-object v1

    .line 106
    if-eqz v0, :cond_53

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_53

    .line 107
    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/game/BDGameUtil;->generateLogId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 108
    const-string v3, "lid"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "senddata_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/baidu/mtjstatsdk/game/BDGameUtil;->writeData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 112
    invoke-static {}, Lcom/baidu/mtjstatsdk/game/BDGameLogSender;->instance()Lcom/baidu/mtjstatsdk/game/BDGameLogSender;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/baidu/mtjstatsdk/game/BDGameLogSender;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_53
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_53} :catch_54

    .line 117
    :cond_53
    :goto_53
    return-void

    .line 114
    :catch_54
    move-exception v0

    .line 115
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_53
.end method

.method public b(Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/mtjstatsdk/cn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "task_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/ce;->a:Lcom/baidu/mtjstatsdk/game/BDGameDataObject;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->a(Lcom/baidu/mtjstatsdk/game/BDGameDataObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/baidu/mtjstatsdk/game/BDGameUtil;->generateMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/ce;->a:Lcom/baidu/mtjstatsdk/game/BDGameDataObject;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->b(Lcom/baidu/mtjstatsdk/game/BDGameDataObject;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/baidu/mtjstatsdk/game/BDGameUtil;->readData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    :try_start_31
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x0

    :goto_37
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_55

    .line 59
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 60
    invoke-static {v2}, Lcom/baidu/mtjstatsdk/cn;->a(Lorg/json/JSONObject;)Lcom/baidu/mtjstatsdk/cn;

    move-result-object v2

    .line 61
    if-eqz v2, :cond_4e

    .line 62
    invoke-virtual {v2}, Lcom/baidu/mtjstatsdk/cn;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4e
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_4e} :catch_51

    .line 58
    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 66
    :catch_51
    move-exception v0

    .line 67
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 69
    :cond_55
    return-void
.end method

.method public b(Ljava/lang/String;Lorg/json/JSONArray;)V
    .registers 7

    .prologue
    .line 82
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/ce;->a:Lcom/baidu/mtjstatsdk/game/BDGameDataObject;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->b(Lcom/baidu/mtjstatsdk/game/BDGameDataObject;)Landroid/content/Context;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/ce;->a:Lcom/baidu/mtjstatsdk/game/BDGameDataObject;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->a(Lcom/baidu/mtjstatsdk/game/BDGameDataObject;)Ljava/lang/String;

    move-result-object v1

    .line 84
    if-eqz v0, :cond_3d

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "task_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/baidu/mtjstatsdk/game/BDGameUtil;->generateMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/mtjstatsdk/game/BDGameUtil;->writeData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 89
    :cond_3d
    return-void
.end method
