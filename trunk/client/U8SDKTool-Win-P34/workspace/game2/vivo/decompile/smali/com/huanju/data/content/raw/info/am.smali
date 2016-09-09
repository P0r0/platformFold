.class public Lcom/huanju/data/content/raw/info/am;
.super Lcom/huanju/data/content/raw/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huanju/data/content/raw/b",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/huanju/data/content/raw/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/http/HttpResponse;)Ljava/lang/Boolean;
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/huanju/data/a/h;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    :try_start_e
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "succ"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_18} :catch_22

    move-result v2

    if-ne v2, v0, :cond_20

    :goto_1b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_d

    :cond_20
    move v0, v1

    goto :goto_1b

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v0, v1

    goto :goto_1b
.end method

.method public bridge synthetic parseSuccessResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/huanju/data/content/raw/info/am;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
