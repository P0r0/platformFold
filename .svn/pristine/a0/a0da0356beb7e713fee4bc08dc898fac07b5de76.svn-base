.class public Lcom/huanju/data/content/raw/info/f;
.super Lcom/huanju/data/content/raw/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huanju/data/content/raw/b",
        "<",
        "Lcom/huanju/data/content/raw/info/r;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/huanju/data/content/raw/b;-><init>()V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;)Lcom/huanju/data/content/raw/info/HjAlbumListItem;
    .registers 3

    new-instance v0, Lcom/huanju/data/content/raw/info/HjAlbumListItem;

    invoke-direct {v0}, Lcom/huanju/data/content/raw/info/HjAlbumListItem;-><init>()V

    :try_start_5
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huanju/data/content/raw/info/HjAlbumListItem;->setId(Ljava/lang/String;)V

    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huanju/data/content/raw/info/HjAlbumListItem;->setName(Ljava/lang/String;)V

    const-string v1, "cover"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huanju/data/content/raw/info/HjAlbumListItem;->setCover(Ljava/lang/String;)V

    const-string v1, "is_list"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huanju/data/content/raw/info/HjAlbumListItem;->setIs_list(Ljava/lang/String;)V

    const-string v1, "module_type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huanju/data/content/raw/info/HjAlbumListItem;->setModule_type(Ljava/lang/String;)V

    const-string v1, "module_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huanju/data/content/raw/info/HjAlbumListItem;->setModule_id(Ljava/lang/String;)V

    const-string v1, "item_cnt"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huanju/data/content/raw/info/HjAlbumListItem;->setItem_cnt(Ljava/lang/String;)V

    const-string v1, "desc"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huanju/data/content/raw/info/HjAlbumListItem;->setDesc(Ljava/lang/String;)V
    :try_end_4d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_4d} :catch_5c

    :try_start_4d
    const-string v1, "package_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huanju/data/content/raw/info/HjAlbumListItem;->setPackage_name(Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_56} :catch_57
    .catch Lorg/json/JSONException; {:try_start_4d .. :try_end_56} :catch_5c

    :goto_56
    return-object v0

    :catch_57
    move-exception v1

    :try_start_58
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5b
    .catch Lorg/json/JSONException; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_56

    :catch_5c
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_56
.end method


# virtual methods
.method public a(Lorg/apache/http/HttpResponse;)Lcom/huanju/data/content/raw/info/r;
    .registers 11

    const/4 v0, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/huanju/data/a/h;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_d
    :goto_d
    return-object v0

    :cond_e
    :try_start_e
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "total_cnt"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, Lcom/huanju/data/content/raw/info/r;

    invoke-direct {v1}, Lcom/huanju/data/content/raw/info/r;-><init>()V

    const-string v4, "total_cnt"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/huanju/data/content/raw/info/r;->a(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_35

    move-object v0, v1

    goto :goto_d

    :cond_35
    const-string v4, "has_more"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v8, :cond_79

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/huanju/data/content/raw/info/r;->a(I)V

    :goto_41
    const-string v4, "list"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    :goto_4b
    if-ge v2, v4, :cond_83

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/data/content/raw/info/f;->a(Lorg/json/JSONObject;)Lcom/huanju/data/content/raw/info/HjAlbumListItem;

    move-result-object v5

    if-eqz v5, :cond_76

    const-string v6, "gallery"

    invoke-virtual {v5}, Lcom/huanju/data/content/raw/info/HjAlbumListItem;->getModule_type()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_76

    const-string v6, "game"

    invoke-virtual {v5}, Lcom/huanju/data/content/raw/info/HjAlbumListItem;->getModule_type()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_76

    invoke-virtual {v1}, Lcom/huanju/data/content/raw/info/r;->c()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_76
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    :cond_79
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/huanju/data/content/raw/info/r;->a(I)V
    :try_end_7d
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_7d} :catch_7e

    goto :goto_41

    :catch_7e
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_d

    :cond_83
    move-object v0, v1

    goto :goto_d
.end method

.method public bridge synthetic parseSuccessResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/huanju/data/content/raw/info/f;->a(Lorg/apache/http/HttpResponse;)Lcom/huanju/data/content/raw/info/r;

    move-result-object v0

    return-object v0
.end method
