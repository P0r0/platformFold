.class public Lcom/huanju/data/content/raw/info/m;
.super Lcom/huanju/data/content/raw/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huanju/data/content/raw/a",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/huanju/data/content/raw/info/HjBatchInfoItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lcom/huanju/data/content/raw/listener/HjRequestBatchListListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huanju/data/content/raw/listener/HjRequestBatchListListener",
            "<",
            "Lcom/huanju/data/content/raw/info/HjBatchInfoItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/huanju/data/content/raw/a;-><init>()V

    iput-object p1, p0, Lcom/huanju/data/content/raw/info/m;->a:Landroid/content/Context;

    iput p2, p0, Lcom/huanju/data/content/raw/info/m;->b:I

    iput p3, p0, Lcom/huanju/data/content/raw/info/m;->c:I

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_12

    :cond_27
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v2, 0x2c

    if-ne v0, v2, :cond_3e

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_3e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/content/raw/info/m;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/huanju/data/content/raw/listener/HjRequestBatchListListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/HjRequestBatchListListener",
            "<",
            "Lcom/huanju/data/content/raw/info/HjBatchInfoItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/huanju/data/content/raw/info/m;->e:Lcom/huanju/data/content/raw/listener/HjRequestBatchListListener;

    return-void
.end method

.method protected createNetTask()Lcom/huanju/data/net/AbstractNetTask;
    .registers 6

    new-instance v0, Lcom/huanju/data/content/raw/info/t;

    iget-object v1, p0, Lcom/huanju/data/content/raw/info/m;->a:Landroid/content/Context;

    iget v2, p0, Lcom/huanju/data/content/raw/info/m;->b:I

    iget v3, p0, Lcom/huanju/data/content/raw/info/m;->c:I

    iget-object v4, p0, Lcom/huanju/data/content/raw/info/m;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/huanju/data/content/raw/info/t;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    return-object v0
.end method

.method protected createParser()Lcom/huanju/data/content/raw/b;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDataReceived(Lorg/apache/http/HttpResponse;)V
    .registers 16

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/huanju/data/a/h;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    :try_start_5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "list"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-nez v3, :cond_13

    :goto_12
    return-void

    :cond_13
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v2, v1

    :goto_1d
    if-ge v2, v5, :cond_b6

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v6, Lcom/huanju/data/content/raw/info/HjBatchInfoItem;

    invoke-direct {v6}, Lcom/huanju/data/content/raw/info/HjBatchInfoItem;-><init>()V

    const-string v7, "package_name"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/huanju/data/content/raw/info/HjBatchInfoItem;->setPackage_name(Ljava/lang/String;)V

    const-string v7, "list"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_41
    if-ge v0, v8, :cond_ab

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    new-instance v11, Lcom/huanju/data/content/raw/info/HjInfoItem;

    invoke-direct {v11}, Lcom/huanju/data/content/raw/info/HjInfoItem;-><init>()V

    const-string v12, "ctime"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/huanju/data/content/raw/info/HjInfoItem;->setCtime(J)V

    const-string v12, "game_id"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/huanju/data/content/raw/info/HjInfoItem;->setGame_id(Ljava/lang/String;)V

    const-string v12, "id"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/huanju/data/content/raw/info/HjInfoItem;->setId(Ljava/lang/String;)V

    const-string v12, "keywords"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/huanju/data/content/raw/info/HjInfoItem;->setKeywords(Ljava/lang/String;)V

    const-string v12, "title"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/huanju/data/content/raw/info/HjInfoItem;->setTitle(Ljava/lang/String;)V

    const-string v12, "source"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/huanju/data/content/raw/info/HjInfoItem;->setSource(Ljava/lang/String;)V

    const-string v12, "type_tag"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/huanju/data/content/raw/info/HjInfoItem;->setType_tag(Ljava/lang/String;)V

    const-string v12, "v_cnt"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/huanju/data/content/raw/info/HjInfoItem;->setV_cnt(Ljava/lang/String;)V

    const-string v12, "thumb_image_list"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/huanju/data/content/raw/info/HjInfoItem;->setThumb_image_list(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_ab
    invoke-virtual {v6, v9}, Lcom/huanju/data/content/raw/info/HjBatchInfoItem;->setList(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1d

    :cond_b6
    iget-object v0, p0, Lcom/huanju/data/content/raw/info/m;->e:Lcom/huanju/data/content/raw/listener/HjRequestBatchListListener;

    invoke-interface {v0, v4}, Lcom/huanju/data/content/raw/listener/HjRequestBatchListListener;->onSuccess(Ljava/util/ArrayList;)V
    :try_end_bb
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_bb} :catch_bd

    goto/16 :goto_12

    :catch_bd
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_12
.end method

.method public onErrorReceived(Lorg/apache/http/HttpResponse;)V
    .registers 4

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/m;->e:Lcom/huanju/data/content/raw/listener/HjRequestBatchListListener;

    const-string v1, "onErrorReceived"

    invoke-interface {v0, v1}, Lcom/huanju/data/content/raw/listener/HjRequestBatchListListener;->onFailed(Ljava/lang/String;)V

    return-void
.end method

.method public onNetworkError()V
    .registers 3

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/m;->e:Lcom/huanju/data/content/raw/listener/HjRequestBatchListListener;

    const-string v1, "onNetworkError"

    invoke-interface {v0, v1}, Lcom/huanju/data/content/raw/listener/HjRequestBatchListListener;->onFailed(Ljava/lang/String;)V

    return-void
.end method
