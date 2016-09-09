.class public Lcom/huanju/data/content/raw/info/ac;
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


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Lcom/huanju/data/content/raw/b;-><init>()V

    sput-object p1, Lcom/huanju/data/content/raw/info/ac;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/http/HttpResponse;)Lcom/huanju/data/content/raw/info/HjInfoDetail;
    .registers 11

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

    const-string v0, "info"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a5

    const-string v0, "info"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v0, Lcom/huanju/data/content/raw/info/HjInfoDetail;

    invoke-direct {v0}, Lcom/huanju/data/content/raw/info/HjInfoDetail;-><init>()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_24} :catch_a0

    :try_start_24
    const-string v1, "id"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/huanju/data/content/raw/info/HjInfoDetail;->id:Ljava/lang/String;

    const-string v1, "title"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/huanju/data/content/raw/info/HjInfoDetail;->title:Ljava/lang/String;

    const-string v1, "approval_cnt"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/huanju/data/content/raw/info/HjInfoDetail;->approval_cnt:I

    const-string v1, "ctime"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iput-wide v4, v0, Lcom/huanju/data/content/raw/info/HjInfoDetail;->ctime:J

    const-string v1, "desc"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/huanju/data/content/raw/info/HjInfoDetail;->desc:Ljava/lang/String;

    const-string v1, "type_tag"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/huanju/data/content/raw/info/HjInfoDetail;->tag:Ljava/lang/String;

    const-string v1, "v_cnt"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/huanju/data/content/raw/info/HjInfoDetail;->v_cnt:I

    const-string v1, "url"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "&cuid="

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8e

    iput-object v1, v0, Lcom/huanju/data/content/raw/info/HjInfoDetail;->video_url:Ljava/lang/String;

    :goto_7b
    const-string v1, "source"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/huanju/data/content/raw/info/HjInfoDetail;->source:Ljava/lang/String;

    const-string v1, "preview"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/huanju/data/content/raw/info/HjInfoDetail;->preview:Ljava/lang/String;

    :goto_8b
    move-object v1, v0

    goto/16 :goto_b

    :cond_8e
    sget-object v3, Lcom/huanju/data/content/raw/info/ac;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/huanju/data/a/i;->a(Landroid/content/Context;)Lcom/huanju/data/a/i;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/huanju/data/a/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/huanju/data/content/raw/info/HjInfoDetail;->video_url:Ljava/lang/String;
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_9a} :catch_9b

    goto :goto_7b

    :catch_9b
    move-exception v1

    :goto_9c
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8b

    :catch_a0
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_9c

    :cond_a5
    move-object v0, v1

    goto :goto_8b
.end method

.method public bridge synthetic parseSuccessResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/huanju/data/content/raw/info/ac;->a(Lorg/apache/http/HttpResponse;)Lcom/huanju/data/content/raw/info/HjInfoDetail;

    move-result-object v0

    return-object v0
.end method
