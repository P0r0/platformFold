.class public Lcom/baidu/mtjstatsdk/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 21
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 24
    :try_start_5
    const-string v0, "s"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 25
    const-string v0, "sv"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    const-string v0, "ii"

    invoke-static {p0}, Lcom/baidu/mtjstatsdk/p;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string v0, "w"

    invoke-static {p0}, Lcom/baidu/mtjstatsdk/p;->b(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 28
    const-string v0, "h"

    invoke-static {p0}, Lcom/baidu/mtjstatsdk/p;->c(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 30
    const-string v0, "ly"

    sget-object v2, Lcom/baidu/mtjstatsdk/n;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    const-string v0, "pv"

    const-string v2, "3"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_43
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_43} :catch_7f

    move-result-object v2

    .line 37
    const/4 v3, 0x0

    :try_start_45
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 38
    const-string v2, "pn"

    invoke-static {p0}, Lcom/baidu/mtjstatsdk/p;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string v2, "a"

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 40
    const-string v2, "n"

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_60} :catch_7a
    .catch Lorg/json/JSONException; {:try_start_45 .. :try_end_60} :catch_7f

    .line 45
    :goto_60
    :try_start_60
    const-string v0, "mc"

    invoke-static {p0}, Lcom/baidu/mtjstatsdk/p;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    const-string v0, "bm"

    invoke-static {p0}, Lcom/baidu/mtjstatsdk/p;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string v0, "m"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    :goto_79
    return-object v1

    .line 41
    :catch_7a
    move-exception v0

    .line 42
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I
    :try_end_7e
    .catch Lorg/json/JSONException; {:try_start_60 .. :try_end_7e} :catch_7f

    goto :goto_60

    .line 48
    :catch_7f
    move-exception v0

    .line 49
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_79
.end method
