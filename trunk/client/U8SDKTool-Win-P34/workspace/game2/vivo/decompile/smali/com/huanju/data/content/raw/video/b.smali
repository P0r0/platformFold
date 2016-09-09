.class Lcom/huanju/data/content/raw/video/b;
.super Lcom/huanju/data/content/raw/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huanju/data/content/raw/b",
        "<",
        "Lcom/huanju/data/content/raw/video/HjVideoDetail;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Lcom/huanju/data/content/raw/b;-><init>()V

    sput-object p1, Lcom/huanju/data/content/raw/video/b;->a:Landroid/content/Context;

    return-void
.end method

.method private static a(Lorg/json/JSONObject;)Lcom/huanju/data/content/raw/video/HjVideoDetail;
    .registers 9

    new-instance v2, Lcom/huanju/data/content/raw/video/HjVideoDetail;

    invoke-direct {v2}, Lcom/huanju/data/content/raw/video/HjVideoDetail;-><init>()V

    :try_start_5
    const-string v0, "info"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/huanju/data/content/raw/video/HjVideoDetail;->title:Ljava/lang/String;

    const-string v1, "approval_cnt"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/huanju/data/content/raw/video/HjVideoDetail;->approval_cnt:Ljava/lang/String;

    const-string v1, "desc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/huanju/data/content/raw/video/HjVideoDetail;->desc:Ljava/lang/String;

    const-string v1, "preview"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/huanju/data/content/raw/video/HjVideoDetail;->preview:Ljava/lang/String;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "&cuid="

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_aa

    iput-object v1, v2, Lcom/huanju/data/content/raw/video/HjVideoDetail;->url:Ljava/lang/String;

    :goto_3b
    const-string v1, "keywords"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4f

    const-string v3, "\\|"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/huanju/data/content/raw/video/HjVideoDetail;->keywords:[Ljava/lang/String;

    :cond_4f
    const-string v1, "type_tag"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/huanju/data/content/raw/video/HjVideoDetail;->tag:Ljava/lang/String;

    const-string v1, "ctime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iput-wide v4, v2, Lcom/huanju/data/content/raw/video/HjVideoDetail;->ctime:J

    const-string v1, "v_cnt"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/huanju/data/content/raw/video/HjVideoDetail;->v_cnt:Ljava/lang/String;

    const-string v0, "rec"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_76
    if-ge v1, v4, :cond_bb

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v5, Lcom/huanju/data/content/raw/video/HjVideoListItem;

    invoke-direct {v5}, Lcom/huanju/data/content/raw/video/HjVideoListItem;-><init>()V

    const-string v6, "title"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/huanju/data/content/raw/video/HjVideoListItem;->title:Ljava/lang/String;

    const-string v6, "id"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/huanju/data/content/raw/video/HjVideoListItem;->id:Ljava/lang/String;

    const-string v6, "preview"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/huanju/data/content/raw/video/HjVideoListItem;->previewUrl:Ljava/lang/String;
    :try_end_99
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_99} :catch_b7

    :try_start_99
    const-string v6, "package_name"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/huanju/data/content/raw/video/HjVideoListItem;->package_name:Ljava/lang/String;
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_a1} :catch_bc
    .catch Lorg/json/JSONException; {:try_start_99 .. :try_end_a1} :catch_b7

    :goto_a1
    :try_start_a1
    iget-object v0, v2, Lcom/huanju/data/content/raw/video/HjVideoDetail;->recList:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_76

    :cond_aa
    sget-object v3, Lcom/huanju/data/content/raw/video/b;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/huanju/data/a/i;->a(Landroid/content/Context;)Lcom/huanju/data/a/i;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/huanju/data/a/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/huanju/data/content/raw/video/HjVideoDetail;->url:Ljava/lang/String;
    :try_end_b6
    .catch Lorg/json/JSONException; {:try_start_a1 .. :try_end_b6} :catch_b7

    goto :goto_3b

    :catch_b7
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_bb
    return-object v2

    :catch_bc
    move-exception v0

    :try_start_bd
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c0
    .catch Lorg/json/JSONException; {:try_start_bd .. :try_end_c0} :catch_b7

    goto :goto_a1
.end method


# virtual methods
.method public a(Lorg/apache/http/HttpResponse;)Lcom/huanju/data/content/raw/video/HjVideoDetail;
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

    invoke-static {v2}, Lcom/huanju/data/content/raw/video/b;->a(Lorg/json/JSONObject;)Lcom/huanju/data/content/raw/video/HjVideoDetail;
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

    invoke-virtual {p0, p1}, Lcom/huanju/data/content/raw/video/b;->a(Lorg/apache/http/HttpResponse;)Lcom/huanju/data/content/raw/video/HjVideoDetail;

    move-result-object v0

    return-object v0
.end method
