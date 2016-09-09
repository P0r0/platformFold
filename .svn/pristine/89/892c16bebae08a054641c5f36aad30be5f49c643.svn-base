.class public Lcom/baidu/sapi2/c$a$a;
.super Ljava/lang/Object;
.source "SapiOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/sapi2/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lorg/json/JSONObject;)Lcom/baidu/sapi2/c$a$a;
    .registers 3
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 191
    new-instance v0, Lcom/baidu/sapi2/c$a$a;

    invoke-direct {v0}, Lcom/baidu/sapi2/c$a$a;-><init>()V

    .line 192
    .local v0, "module":Lcom/baidu/sapi2/c$a$a;
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/c$a$a;->a:Ljava/lang/String;

    .line 193
    const-string v1, "download_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/c$a$a;->b:Ljava/lang/String;

    .line 194
    const-string v1, "hash"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/c$a$a;->c:Ljava/lang/String;

    .line 195
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-static {p0}, Lcom/baidu/sapi2/c$a$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 203
    const/16 v0, 0x3a

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".BD_SAPI_CACHE/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/baidu/sapi2/c$a$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a()Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 178
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 180
    .local v1, "object":Lorg/json/JSONObject;
    :try_start_5
    const-string v2, "id"

    iget-object v3, p0, Lcom/baidu/sapi2/c$a$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    const-string v2, "download_url"

    iget-object v3, p0, Lcom/baidu/sapi2/c$a$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    const-string v2, "hash"

    iget-object v3, p0, Lcom/baidu/sapi2/c$a$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_1a} :catch_1b

    .line 185
    .end local v1    # "object":Lorg/json/JSONObject;
    :goto_1a
    return-object v1

    .line 184
    .restart local v1    # "object":Lorg/json/JSONObject;
    :catch_1b
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 212
    if-ne p0, p1, :cond_4

    const/4 v1, 0x1

    .line 217
    :goto_3
    return v1

    .line 213
    :cond_4
    if-eqz p1, :cond_10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    :cond_10
    const/4 v1, 0x0

    goto :goto_3

    :cond_12
    move-object v0, p1

    .line 215
    check-cast v0, Lcom/baidu/sapi2/c$a$a;

    .line 217
    .local v0, "module":Lcom/baidu/sapi2/c$a$a;
    iget-object v1, p0, Lcom/baidu/sapi2/c$a$a;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/baidu/sapi2/c$a$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/baidu/sapi2/c$a$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
