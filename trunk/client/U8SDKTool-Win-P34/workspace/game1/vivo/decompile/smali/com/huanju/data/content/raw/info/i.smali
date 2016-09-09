.class Lcom/huanju/data/content/raw/info/i;
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


# static fields
.field private static a:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Lcom/huanju/data/content/raw/b;-><init>()V

    sput-boolean p1, Lcom/huanju/data/content/raw/info/i;->a:Z

    return-void
.end method

.method private static a(Lorg/json/JSONObject;)Lcom/huanju/data/content/raw/info/HjInfoListItem;
    .registers 7

    new-instance v0, Lcom/huanju/data/content/raw/info/HjInfoListItem;

    invoke-direct {v0}, Lcom/huanju/data/content/raw/info/HjInfoListItem;-><init>()V

    :try_start_5
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/huanju/data/content/raw/info/HjInfoListItem;->id:Ljava/lang/String;

    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/huanju/data/content/raw/info/HjInfoListItem;->title:Ljava/lang/String;

    const-string v1, "source"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/huanju/data/content/raw/info/HjInfoListItem;->source:Ljava/lang/String;

    const-string v1, "type_tag"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/huanju/data/content/raw/info/HjInfoListItem;->tag:Ljava/lang/String;

    sget-boolean v1, Lcom/huanju/data/content/raw/info/i;->a:Z
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_27} :catch_56

    if-nez v1, :cond_31

    :try_start_29
    const-string v1, "package_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/huanju/data/content/raw/info/HjInfoListItem;->package_name:Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_31} :catch_51
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_31} :catch_56

    :cond_31
    :goto_31
    :try_start_31
    const-string v1, "thumb_image_list"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/data/content/raw/info/i;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/huanju/data/content/raw/info/HjInfoListItem;->images:Ljava/util/List;
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_3d} :catch_56

    :try_start_3d
    const-string v1, "v_cnt"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/huanju/data/content/raw/info/HjInfoListItem;->vcnt:J
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_45} :catch_5c
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_45} :catch_56

    :goto_45
    :try_start_45
    const-string v1, "ctime"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, v0, Lcom/huanju/data/content/raw/info/HjInfoListItem;->ctime:J

    :goto_50
    return-object v0

    :catch_51
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_55
    .catch Lorg/json/JSONException; {:try_start_45 .. :try_end_55} :catch_56

    goto :goto_31

    :catch_56
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_50

    :catch_5c
    move-exception v1

    :try_start_5d
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_60
    .catch Lorg/json/JSONException; {:try_start_5d .. :try_end_60} :catch_56

    goto :goto_45
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
    .registers 9

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/huanju/data/a/h;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    :goto_d
    return-object v0

    :cond_e
    :try_start_e
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/huanju/data/content/raw/info/ab;

    invoke-direct {v1}, Lcom/huanju/data/content/raw/info/ab;-><init>()V

    const-string v4, "has_more"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_41

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/huanju/data/content/raw/info/ab;->a:Z

    :goto_23
    const-string v4, "list"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    :goto_2d
    if-ge v2, v4, :cond_4a

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/data/content/raw/info/i;->a(Lorg/json/JSONObject;)Lcom/huanju/data/content/raw/info/HjInfoListItem;

    move-result-object v5

    if-eqz v5, :cond_3e

    iget-object v6, v1, Lcom/huanju/data/content/raw/info/ab;->c:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_41
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/huanju/data/content/raw/info/ab;->a:Z
    :try_end_44
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_44} :catch_45

    goto :goto_23

    :catch_45
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_d

    :cond_4a
    move-object v0, v1

    goto :goto_d
.end method

.method public bridge synthetic parseSuccessResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/huanju/data/content/raw/info/i;->a(Lorg/apache/http/HttpResponse;)Lcom/huanju/data/content/raw/info/ab;

    move-result-object v0

    return-object v0
.end method
