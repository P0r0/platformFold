.class final Lcom/baidu/sapi2/SapiCache$3;
.super Lcom/baidu/cloudsdk/common/http/JsonHttpResponseHandler;
.source "SapiCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/SapiCache;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Looper;

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lcom/baidu/cloudsdk/common/http/JsonHttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onSuccess(Lorg/json/JSONObject;)V
    .registers 12
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 337
    if-nez p1, :cond_3

    .line 434
    :cond_2
    return-void

    .line 340
    :cond_3
    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->f()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/baidu/sapi2/b;->j()Lcom/baidu/sapi2/c;

    move-result-object v7

    .line 341
    .local v7, "oldOptions":Lcom/baidu/sapi2/c;
    invoke-static {p1}, Lcom/baidu/sapi2/c;->a(Lorg/json/JSONObject;)Lcom/baidu/sapi2/c;

    move-result-object v5

    .line 342
    .local v5, "newOptions":Lcom/baidu/sapi2/c;
    invoke-virtual {v5}, Lcom/baidu/sapi2/c;->f()Lcom/baidu/sapi2/c$a;

    move-result-object v3

    .line 343
    .local v3, "newCache":Lcom/baidu/sapi2/c$a;
    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->f()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/baidu/sapi2/b;->a(Lcom/baidu/sapi2/c;)V

    .line 345
    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->g()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 347
    invoke-virtual {v3}, Lcom/baidu/sapi2/c$a;->a()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 348
    invoke-virtual {v3}, Lcom/baidu/sapi2/c$a;->b()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/sapi2/c$a$a;

    .line 349
    .local v4, "newModule":Lcom/baidu/sapi2/c$a$a;
    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->g()Ljava/util/List;

    move-result-object v8

    iget-object v9, v4, Lcom/baidu/sapi2/c$a$a;->a:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 351
    .end local v4    # "newModule":Lcom/baidu/sapi2/c$a$a;
    :cond_4d
    invoke-virtual {v3}, Lcom/baidu/sapi2/c$a;->b()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local v0    # "i$":Ljava/util/Iterator;
    :goto_55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/sapi2/c$a$a;

    .line 352
    .restart local v4    # "newModule":Lcom/baidu/sapi2/c$a$a;
    const/4 v6, 0x0

    .line 353
    .local v6, "oldModule":Lcom/baidu/sapi2/c$a$a;
    invoke-virtual {v7}, Lcom/baidu/sapi2/c;->f()Lcom/baidu/sapi2/c$a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/baidu/sapi2/c$a;->b()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6e
    :goto_6e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_86

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/sapi2/c$a$a;

    .line 354
    .local v2, "m":Lcom/baidu/sapi2/c$a$a;
    iget-object v8, v2, Lcom/baidu/sapi2/c$a$a;->a:Ljava/lang/String;

    iget-object v9, v4, Lcom/baidu/sapi2/c$a$a;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6e

    .line 355
    move-object v6, v2

    goto :goto_6e

    .line 359
    .end local v2    # "m":Lcom/baidu/sapi2/c$a$a;
    :cond_86
    invoke-static {v4, v6}, Lcom/baidu/sapi2/SapiCache;->a(Lcom/baidu/sapi2/c$a$a;Lcom/baidu/sapi2/c$a$a;)Z

    move-result v8

    if-eqz v8, :cond_95

    .line 360
    new-instance v8, Lcom/baidu/sapi2/SapiCache$3$1;

    invoke-direct {v8, p0, v5, v4}, Lcom/baidu/sapi2/SapiCache$3$1;-><init>(Lcom/baidu/sapi2/SapiCache$3;Lcom/baidu/sapi2/c;Lcom/baidu/sapi2/c$a$a;)V

    invoke-static {v4, v8}, Lcom/baidu/sapi2/SapiCache;->a(Lcom/baidu/sapi2/c$a$a;Lcom/baidu/sapi2/SapiCache$a;)V

    goto :goto_55

    .line 407
    :cond_95
    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->f()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/baidu/sapi2/b;->a(Lcom/baidu/sapi2/c;)V

    .line 409
    new-instance v8, Lcom/baidu/sapi2/SapiCache$3$2;

    invoke-direct {v8, p0}, Lcom/baidu/sapi2/SapiCache$3$2;-><init>(Lcom/baidu/sapi2/SapiCache$3;)V

    invoke-static {v4, v8}, Lcom/baidu/sapi2/SapiCache;->a(Lcom/baidu/sapi2/c$a$a;Lcom/baidu/sapi2/SapiCache$a;)V

    goto :goto_55
.end method
