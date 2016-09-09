.class Lcom/huanju/data/content/raw/video/e;
.super Lcom/huanju/data/content/raw/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huanju/data/content/raw/b",
        "<",
        "Lcom/huanju/data/content/raw/video/l;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Lcom/huanju/data/content/raw/b;-><init>()V

    sput-boolean p1, Lcom/huanju/data/content/raw/video/e;->a:Z

    return-void
.end method

.method private static a(Lorg/json/JSONObject;)Lcom/huanju/data/content/raw/video/HjVideoListItem;
    .registers 7

    new-instance v0, Lcom/huanju/data/content/raw/video/HjVideoListItem;

    invoke-direct {v0}, Lcom/huanju/data/content/raw/video/HjVideoListItem;-><init>()V

    :try_start_5
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/huanju/data/content/raw/video/HjVideoListItem;->id:Ljava/lang/String;

    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/huanju/data/content/raw/video/HjVideoListItem;->title:Ljava/lang/String;

    const-string v1, "source"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/huanju/data/content/raw/video/HjVideoListItem;->source:Ljava/lang/String;

    const-string v1, "type_tag"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/huanju/data/content/raw/video/HjVideoListItem;->tag:Ljava/lang/String;

    const-string v1, "preview"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/huanju/data/content/raw/video/HjVideoListItem;->previewUrl:Ljava/lang/String;

    sget-boolean v1, Lcom/huanju/data/content/raw/video/e;->a:Z
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_2f} :catch_52

    if-nez v1, :cond_39

    :try_start_31
    const-string v1, "package_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/huanju/data/content/raw/video/HjVideoListItem;->package_name:Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_39} :catch_4d
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_39} :catch_52

    :cond_39
    :goto_39
    :try_start_39
    const-string v1, "v_cnt"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/huanju/data/content/raw/video/HjVideoListItem;->vcnt:J
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_41} :catch_58
    .catch Lorg/json/JSONException; {:try_start_39 .. :try_end_41} :catch_52

    :goto_41
    :try_start_41
    const-string v1, "ctime"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, v0, Lcom/huanju/data/content/raw/video/HjVideoListItem;->ctime:J

    :goto_4c
    return-object v0

    :catch_4d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_51
    .catch Lorg/json/JSONException; {:try_start_41 .. :try_end_51} :catch_52

    goto :goto_39

    :catch_52
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_4c

    :catch_58
    move-exception v1

    :try_start_59
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5c
    .catch Lorg/json/JSONException; {:try_start_59 .. :try_end_5c} :catch_52

    goto :goto_41
.end method


# virtual methods
.method public a(Lorg/apache/http/HttpResponse;)Lcom/huanju/data/content/raw/video/l;
    .registers 9

    const/4 v0, 0x0

    const/4 v6, 0x1

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

    new-instance v1, Lcom/huanju/data/content/raw/video/l;

    invoke-direct {v1}, Lcom/huanju/data/content/raw/video/l;-><init>()V

    const-string v4, "total_cnt"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/huanju/data/content/raw/video/l;->b:J

    const-string v4, "has_more"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v6, :cond_51

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/huanju/data/content/raw/video/l;->a:Z

    :goto_33
    const-string v4, "list"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    :goto_3d
    if-ge v2, v4, :cond_5a

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/data/content/raw/video/e;->a(Lorg/json/JSONObject;)Lcom/huanju/data/content/raw/video/HjVideoListItem;

    move-result-object v5

    if-eqz v5, :cond_4e

    iget-object v6, v1, Lcom/huanju/data/content/raw/video/l;->e:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    :cond_51
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/huanju/data/content/raw/video/l;->a:Z
    :try_end_54
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_54} :catch_55

    goto :goto_33

    :catch_55
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_d

    :cond_5a
    move-object v0, v1

    goto :goto_d
.end method

.method public bridge synthetic parseSuccessResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/huanju/data/content/raw/video/e;->a(Lorg/apache/http/HttpResponse;)Lcom/huanju/data/content/raw/video/l;

    move-result-object v0

    return-object v0
.end method
