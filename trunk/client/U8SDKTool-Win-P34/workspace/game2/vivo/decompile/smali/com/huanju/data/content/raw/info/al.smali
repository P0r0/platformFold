.class Lcom/huanju/data/content/raw/info/al;
.super Lcom/huanju/data/content/raw/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huanju/data/content/raw/b",
        "<",
        "Lcom/huanju/data/content/raw/info/HjInfoDetail;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/huanju/data/content/raw/b;-><init>()V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;)Lcom/huanju/data/content/raw/info/HjInfoDetail;
    .registers 9

    const/4 v1, 0x0

    new-instance v3, Lcom/huanju/data/content/raw/info/HjInfoDetail;

    invoke-direct {v3}, Lcom/huanju/data/content/raw/info/HjInfoDetail;-><init>()V

    :try_start_6
    const-string v0, "info"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "title"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/huanju/data/content/raw/info/HjInfoDetail;->title:Ljava/lang/String;

    const-string v2, "content"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/huanju/data/content/raw/info/HjInfoDetail;->content:Ljava/lang/String;

    const-string v2, "source"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/huanju/data/content/raw/info/HjInfoDetail;->source:Ljava/lang/String;

    const-string v2, "source_url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/huanju/data/content/raw/info/HjInfoDetail;->source_url:Ljava/lang/String;

    const-string v2, "type_tag"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/huanju/data/content/raw/info/HjInfoDetail;->tag:Ljava/lang/String;

    const-string v2, "keywords"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\\|"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/huanju/data/content/raw/info/HjInfoDetail;->keywords:[Ljava/lang/String;

    const-string v2, "ctime"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iput-wide v4, v3, Lcom/huanju/data/content/raw/info/HjInfoDetail;->ctime:J

    const-string v2, "v_cnt"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/huanju/data/content/raw/info/HjInfoDetail;->v_cnt:I

    const-string v2, "approval_cnt"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/huanju/data/content/raw/info/HjInfoDetail;->approval_cnt:I

    const-string v0, "rec"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v3, Lcom/huanju/data/content/raw/info/HjInfoDetail;->recItems:Ljava/util/ArrayList;

    move v2, v1

    :goto_6b
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_a5

    new-instance v5, Lcom/huanju/data/content/raw/info/HjInfoListItem;

    invoke-direct {v5}, Lcom/huanju/data/content/raw/info/HjInfoListItem;-><init>()V

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v6, "id"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/huanju/data/content/raw/info/HjInfoListItem;->id:Ljava/lang/String;

    const-string v6, "title"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/huanju/data/content/raw/info/HjInfoListItem;->title:Ljava/lang/String;
    :try_end_8a
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_8a} :catch_a0

    :try_start_8a
    const-string v6, "package_name"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/huanju/data/content/raw/info/HjInfoListItem;->package_name:Ljava/lang/String;
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_92} :catch_9b
    .catch Lorg/json/JSONException; {:try_start_8a .. :try_end_92} :catch_a0

    :goto_92
    :try_start_92
    iget-object v0, v3, Lcom/huanju/data/content/raw/info/HjInfoDetail;->recItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6b

    :catch_9b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9f
    .catch Lorg/json/JSONException; {:try_start_92 .. :try_end_9f} :catch_a0

    goto :goto_92

    :catch_a0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_a4
    return-object v3

    :cond_a5
    :try_start_a5
    const-string v0, "videoRec"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v3, Lcom/huanju/data/content/raw/info/HjInfoDetail;->videoRecItems:Ljava/util/ArrayList;

    :goto_b2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_a4

    new-instance v4, Lcom/huanju/data/content/raw/info/HjInfoListItem;

    invoke-direct {v4}, Lcom/huanju/data/content/raw/info/HjInfoListItem;-><init>()V

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v5, "id"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/huanju/data/content/raw/info/HjInfoListItem;->id:Ljava/lang/String;

    const-string v5, "title"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/huanju/data/content/raw/info/HjInfoListItem;->title:Ljava/lang/String;
    :try_end_d1
    .catch Lorg/json/JSONException; {:try_start_a5 .. :try_end_d1} :catch_a0

    :try_start_d1
    const-string v5, "preview"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/huanju/data/content/raw/info/HjInfoListItem;->preview:Ljava/lang/String;
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_d9} :catch_e2
    .catch Lorg/json/JSONException; {:try_start_d1 .. :try_end_d9} :catch_a0

    :goto_d9
    :try_start_d9
    iget-object v0, v3, Lcom/huanju/data/content/raw/info/HjInfoDetail;->videoRecItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b2

    :catch_e2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e6
    .catch Lorg/json/JSONException; {:try_start_d9 .. :try_end_e6} :catch_a0

    goto :goto_d9
.end method


# virtual methods
.method public a(Lorg/apache/http/HttpResponse;)Lcom/huanju/data/content/raw/info/HjInfoDetail;
    .registers 5

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/huanju/data/a/h;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    :goto_b
    return-object v0

    :cond_c
    :try_start_c
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "info"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {v2}, Lcom/huanju/data/content/raw/info/al;->a(Lorg/json/JSONObject;)Lcom/huanju/data/content/raw/info/HjInfoDetail;
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_1c} :catch_1e

    move-result-object v0

    goto :goto_b

    :catch_1e
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_b
.end method

.method public bridge synthetic parseSuccessResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/huanju/data/content/raw/info/al;->a(Lorg/apache/http/HttpResponse;)Lcom/huanju/data/content/raw/info/HjInfoDetail;

    move-result-object v0

    return-object v0
.end method
