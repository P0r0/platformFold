.class public Lcom/huanju/data/content/raw/info/ad;
.super Lcom/huanju/data/content/raw/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huanju/data/content/raw/b",
        "<",
        "Lcom/huanju/data/content/raw/info/ab;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/huanju/data/content/raw/b;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v5, -0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_4c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x2

    if-le v1, v3, :cond_4c

    const-string v1, "\""

    const-string v3, ""

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\\\"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move v1, v0

    :goto_2c
    if-eq v0, v5, :cond_4c

    const-string v0, ","

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_40

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v0, 0x1

    goto :goto_2c

    :cond_40
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_4c
    return-object v2
.end method


# virtual methods
.method public a(Lorg/apache/http/HttpResponse;)Lcom/huanju/data/content/raw/info/ab;
    .registers 13

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/huanju/data/a/h;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    :goto_c
    return-object v1

    :cond_d
    :try_start_d
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "list"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a0

    new-instance v0, Lcom/huanju/data/content/raw/info/ab;

    invoke-direct {v0}, Lcom/huanju/data/content/raw/info/ab;-><init>()V
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_1f} :catch_94

    :try_start_1f
    const-string v1, "has_more"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_92

    const/4 v1, 0x1

    :goto_28
    iput-boolean v1, v0, Lcom/huanju/data/content/raw/info/ab;->a:Z

    const-string v1, "list"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/huanju/data/content/raw/info/ab;->c:Ljava/util/List;

    move v1, v2

    :goto_38
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_9b

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v4, Lcom/huanju/data/content/raw/info/HjInfoListItem;

    invoke-direct {v4}, Lcom/huanju/data/content/raw/info/HjInfoListItem;-><init>()V

    const-string v5, "ctime"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    iput-wide v6, v4, Lcom/huanju/data/content/raw/info/HjInfoListItem;->ctime:J

    const-string v5, "module_id"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/huanju/data/content/raw/info/HjInfoListItem;->id:Ljava/lang/String;

    const-string v5, "module_type"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/huanju/data/content/raw/info/HjInfoListItem;->type:Ljava/lang/String;

    const-string v5, "type_tag"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/huanju/data/content/raw/info/HjInfoListItem;->tag:Ljava/lang/String;

    const-string v5, "source"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/huanju/data/content/raw/info/HjInfoListItem;->source:Ljava/lang/String;

    const-string v5, "thumb_image_list"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/data/content/raw/info/ad;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, v4, Lcom/huanju/data/content/raw/info/HjInfoListItem;->images:Ljava/util/List;

    const-string v5, "title"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/huanju/data/content/raw/info/HjInfoListItem;->title:Ljava/lang/String;

    iget-object v2, v0, Lcom/huanju/data/content/raw/info/ab;->c:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8f
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_8f} :catch_9e

    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    :cond_92
    move v1, v2

    goto :goto_28

    :catch_94
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    :goto_98
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_9b
    :goto_9b
    move-object v1, v0

    goto/16 :goto_c

    :catch_9e
    move-exception v1

    goto :goto_98

    :cond_a0
    move-object v0, v1

    goto :goto_9b
.end method

.method public bridge synthetic parseSuccessResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/huanju/data/content/raw/info/ad;->a(Lorg/apache/http/HttpResponse;)Lcom/huanju/data/content/raw/info/ab;

    move-result-object v0

    return-object v0
.end method
