.class public Lcom/huanju/data/content/raw/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/huanju/data/a/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "HjDefaultErrorInfoParser"

    invoke-static {v0}, Lcom/huanju/data/a/b;->a(Ljava/lang/String;)Lcom/huanju/data/a/b;

    move-result-object v0

    sput-object v0, Lcom/huanju/data/content/raw/e;->a:Lcom/huanju/data/a/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/apache/http/HttpResponse;)Lcom/huanju/data/content/raw/HjErrorResponseModel;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_b

    sget-object v1, Lcom/huanju/data/content/raw/e;->a:Lcom/huanju/data/a/b;

    const-string v2, "HjDefaultErrorInfoParser httpResponse is empty."

    invoke-virtual {v1, v2}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;)V

    :goto_a
    return-object v0

    :cond_b
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/data/a/h;->a(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    sget-object v1, Lcom/huanju/data/content/raw/e;->a:Lcom/huanju/data/a/b;

    const-string v2, "HjDefaultErrorInfoParser content is empty."

    invoke-virtual {v1, v2}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;)V

    goto :goto_a

    :cond_21
    new-instance v1, Lcom/huanju/data/content/raw/HjErrorResponseModel;

    invoke-direct {v1}, Lcom/huanju/data/content/raw/HjErrorResponseModel;-><init>()V

    :try_start_26
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "error_code"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/huanju/data/content/raw/HjErrorResponseModel;->errorCode:I

    const-string v2, "error_msg"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/huanju/data/content/raw/HjErrorResponseModel;->errorMessage:Ljava/lang/String;
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_3b} :catch_3d

    move-object v0, v1

    goto :goto_a

    :catch_3d
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_a
.end method
