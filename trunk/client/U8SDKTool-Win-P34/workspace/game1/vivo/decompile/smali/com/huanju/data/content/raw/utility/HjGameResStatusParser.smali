.class public Lcom/huanju/data/content/raw/utility/HjGameResStatusParser;
.super Lcom/huanju/data/content/raw/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huanju/data/content/raw/b",
        "<",
        "Lcom/huanju/data/content/raw/utility/HjGameResInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final JSON_KEY_INFO_TAG:Ljava/lang/String; = "info"

.field private static final JSON_KEY_NEWS_COUNT:Ljava/lang/String; = "entertainment_cnt"

.field private static final JSON_KEY_REVIEWR_COUNT:Ljava/lang/String; = "judgement_cnt"

.field private static final JSON_KEY_STRATEGY_COUNT:Ljava/lang/String; = "strategy_cnt"

.field private static final JSON_KEY_VIDEO_COUNT:Ljava/lang/String; = "video_cnt"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/huanju/data/content/raw/b;-><init>()V

    return-void
.end method

.method private static parseInfo(Lorg/json/JSONObject;)Lcom/huanju/data/content/raw/utility/HjGameResInfo;
    .registers 5

    new-instance v1, Lcom/huanju/data/content/raw/utility/HjGameResInfo;

    invoke-direct {v1}, Lcom/huanju/data/content/raw/utility/HjGameResInfo;-><init>()V

    :try_start_5
    const-string v0, "info"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_3a

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "entertainment_cnt"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v1, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mNewsTotalCnt:J

    const-string v2, "video_cnt"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v1, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mVideoTotalCnt:J

    const-string v2, "strategy_cnt"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v1, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mStrategyTotalCnt:J

    const-string v2, "judgement_cnt"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, v1, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mReviewTotalCnt:J
    :try_end_3a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_3a} :catch_3b

    :cond_3a
    :goto_3a
    return-object v1

    :catch_3b
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3a
.end method


# virtual methods
.method public parseSuccessResponse(Lorg/apache/http/HttpResponse;)Lcom/huanju/data/content/raw/utility/HjGameResInfo;
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

    invoke-static {v2}, Lcom/huanju/data/content/raw/utility/HjGameResStatusParser;->parseInfo(Lorg/json/JSONObject;)Lcom/huanju/data/content/raw/utility/HjGameResInfo;
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

    invoke-virtual {p0, p1}, Lcom/huanju/data/content/raw/utility/HjGameResStatusParser;->parseSuccessResponse(Lorg/apache/http/HttpResponse;)Lcom/huanju/data/content/raw/utility/HjGameResInfo;

    move-result-object v0

    return-object v0
.end method
