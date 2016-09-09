.class public Lcom/baidu/bdgame/sdk/obf/c$b;
.super Lcom/duoku/platform/IDKSDKCallBack;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/baidu/bdgame/sdk/obf/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/g;)V
    .registers 3

    .prologue
    .line 389
    invoke-direct {p0}, Lcom/duoku/platform/IDKSDKCallBack;-><init>()V

    .line 390
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/c$b;->a:Landroid/content/Context;

    .line 391
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/c$b;->b:Lcom/baidu/bdgame/sdk/obf/g;

    .line 392
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 396
    invoke-static {}, Lcom/duoku/platform/DkPlatform;->resetLoginState()V

    .line 397
    return-void
.end method

.method public a(Z)V
    .registers 3

    .prologue
    .line 419
    if-eqz p1, :cond_6

    .line 420
    invoke-static {p0}, Lcom/duoku/platform/DkPlatform;->setDkSessionFailedCallBack(Lcom/duoku/platform/IDKSDKCallBack;)V

    .line 424
    :goto_5
    return-void

    .line 422
    :cond_6
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/duoku/platform/DkPlatform;->setDkSessionFailedCallBack(Lcom/duoku/platform/IDKSDKCallBack;)V

    goto :goto_5
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 429
    const-string v0, "DuoKu"

    return-object v0
.end method

.method public onResponse(Ljava/lang/String;)V
    .registers 4
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 401
    .line 403
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 404
    const-string v1, "state_code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_1b

    move-result v0

    .line 409
    const/16 v1, 0x3ec

    if-ne v0, v1, :cond_1a

    .line 410
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/c$b;->b:Lcom/baidu/bdgame/sdk/obf/g;

    if-eqz v0, :cond_1a

    .line 411
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/c$b;->b:Lcom/baidu/bdgame/sdk/obf/g;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/c$b;->a:Landroid/content/Context;

    invoke-interface {v0, v1, p0}, Lcom/baidu/bdgame/sdk/obf/g;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/f;)V

    .line 414
    :cond_1a
    :goto_1a
    return-void

    .line 405
    :catch_1b
    move-exception v0

    .line 406
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method
