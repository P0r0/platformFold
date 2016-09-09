.class public Lcom/baidu/sapi2/c$a;
.super Ljava/lang/Object;
.source "SapiOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/sapi2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/sapi2/c$a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = ".BD_SAPI_CACHE"


# instance fields
.field private b:Z

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/sapi2/c$a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/c$a;->c:Ljava/util/List;

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/sapi2/c$a;->b:Z

    .line 160
    return-void
.end method

.method static a(Lorg/json/JSONObject;)Lcom/baidu/sapi2/c$a;
    .registers 7
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 242
    new-instance v1, Lcom/baidu/sapi2/c$a;

    invoke-direct {v1}, Lcom/baidu/sapi2/c$a;-><init>()V

    .line 243
    .local v1, "cache":Lcom/baidu/sapi2/c$a;
    if-eqz p0, :cond_30

    .line 245
    :try_start_7
    const-string v4, "enabled"

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v1, Lcom/baidu/sapi2/c$a;->b:Z

    .line 246
    const-string v4, "modules"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 247
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_30

    .line 248
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 249
    .local v3, "moduleJSON":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lcom/baidu/sapi2/c$a;->b()Ljava/util/List;

    move-result-object v4

    invoke-static {v3}, Lcom/baidu/sapi2/c$a$a;->a(Lorg/json/JSONObject;)Lcom/baidu/sapi2/c$a$a;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_2c} :catch_2f

    .line 247
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 251
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "moduleJSON":Lorg/json/JSONObject;
    :catch_2f
    move-exception v4

    .line 254
    :cond_30
    return-object v1
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/baidu/sapi2/c$a;->b:Z

    return v0
.end method

.method public b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/sapi2/c$a$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/baidu/sapi2/c$a;->c:Ljava/util/List;

    return-object v0
.end method

.method c()Lorg/json/JSONObject;
    .registers 8

    .prologue
    .line 227
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 229
    .local v4, "object":Lorg/json/JSONObject;
    :try_start_5
    const-string v5, "enabled"

    iget-boolean v6, p0, Lcom/baidu/sapi2/c$a;->b:Z

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 230
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 231
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/baidu/sapi2/c$a;->b()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/sapi2/c$a$a;

    .line 232
    .local v3, "module":Lcom/baidu/sapi2/c$a$a;
    invoke-virtual {v3}, Lcom/baidu/sapi2/c$a$a;->a()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_19

    .line 236
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "module":Lcom/baidu/sapi2/c$a$a;
    :catch_2d
    move-exception v1

    .line 237
    .local v1, "e":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v4    # "object":Lorg/json/JSONObject;
    :goto_2f
    return-object v4

    .line 234
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "object":Lorg/json/JSONObject;
    :cond_30
    const-string v5, "modules"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_35} :catch_2d

    goto :goto_2f
.end method
