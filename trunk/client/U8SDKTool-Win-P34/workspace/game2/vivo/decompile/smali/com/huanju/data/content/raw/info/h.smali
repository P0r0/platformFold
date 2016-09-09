.class public Lcom/huanju/data/content/raw/info/h;
.super Lcom/huanju/data/content/raw/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huanju/data/content/raw/b",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/huanju/data/content/raw/info/HjInfoListItem;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/huanju/data/content/raw/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/http/HttpResponse;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huanju/data/content/raw/info/HjInfoListItem;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/huanju/data/a/h;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    :goto_b
    return-object v1

    :cond_c
    :try_start_c
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "list"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "list"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_24} :catch_4a

    const/4 v1, 0x0

    :goto_25
    :try_start_25
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_51

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lcom/huanju/data/content/raw/info/HjInfoListItem;

    invoke-direct {v4}, Lcom/huanju/data/content/raw/info/HjInfoListItem;-><init>()V

    const-string v5, "title"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/huanju/data/content/raw/info/HjInfoListItem;->title:Ljava/lang/String;

    const-string v5, "id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/huanju/data/content/raw/info/HjInfoListItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_47
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_47} :catch_53

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :catch_4a
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_4e
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_51
    :goto_51
    move-object v1, v0

    goto :goto_b

    :catch_53
    move-exception v1

    goto :goto_4e

    :cond_55
    move-object v0, v1

    goto :goto_51
.end method

.method public bridge synthetic parseSuccessResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/huanju/data/content/raw/info/h;->a(Lorg/apache/http/HttpResponse;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
