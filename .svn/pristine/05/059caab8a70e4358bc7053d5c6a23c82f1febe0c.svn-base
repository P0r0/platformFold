.class Lcom/baidu/sapi2/SapiCache$3$2;
.super Ljava/lang/Object;
.source "SapiCache.java"

# interfaces
.implements Lcom/baidu/sapi2/SapiCache$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/SapiCache$3;->onSuccess(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiCache$3;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiCache$3;)V
    .registers 2

    .prologue
    .line 409
    iput-object p1, p0, Lcom/baidu/sapi2/SapiCache$3$2;->a:Lcom/baidu/sapi2/SapiCache$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/sapi2/c$a$a;)V
    .registers 8
    .param p1, "module"    # Lcom/baidu/sapi2/c$a$a;

    .prologue
    .line 416
    iget-object v4, p1, Lcom/baidu/sapi2/c$a$a;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/baidu/sapi2/c$a$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 417
    .local v3, "internalFile":Ljava/lang/String;
    iget-object v4, p1, Lcom/baidu/sapi2/c$a$a;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/baidu/sapi2/c$a$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 418
    .local v2, "externalFile":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->f()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 420
    :try_start_1f
    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->f()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/baidu/sapi2/SapiCache;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "data":Ljava/lang/String;
    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->f()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/sapi2/utils/SapiUtils;->checkRequestPermission(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 423
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v2, v4}, Lcom/baidu/sapi2/SapiCache;->a(Ljava/lang/String;[B)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_3a} :catch_3b

    .line 429
    .end local v0    # "data":Ljava/lang/String;
    :cond_3a
    :goto_3a
    return-void

    .line 425
    :catch_3b
    move-exception v1

    .line 426
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_3a
.end method

.method public a(Lcom/baidu/sapi2/c$a$a;Ljava/lang/String;)V
    .registers 3
    .param p1, "module"    # Lcom/baidu/sapi2/c$a$a;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 412
    return-void
.end method
