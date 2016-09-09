.class Lcom/baidu/bdgame/sdk/obf/c$d;
.super Lcom/duoku/platform/IDKSDKCallBack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# static fields
.field private static final c:I = 0x1


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/baidu/gamesdk/IResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/baidu/gamesdk/IResponse;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/duoku/platform/IDKSDKCallBack;-><init>()V

    .line 279
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/c$d;->d:I

    .line 287
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/c$d;->a:Landroid/content/Context;

    .line 288
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/c$d;->b:Lcom/baidu/gamesdk/IResponse;

    .line 289
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/gamesdk/IResponse;)Lcom/baidu/bdgame/sdk/obf/c$d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/baidu/bdgame/sdk/obf/c$d;"
        }
    .end annotation

    .prologue
    .line 282
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/c$d;

    invoke-direct {v0, p0, p1}, Lcom/baidu/bdgame/sdk/obf/c$d;-><init>(Landroid/content/Context;Lcom/baidu/gamesdk/IResponse;)V

    .line 283
    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 292
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/c$d;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/c$d;->d:I

    .line 293
    const-string v0, "BDGameSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DK ShowSuspendWindonw Fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/bdgame/sdk/obf/c$d;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/c$d;->a()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 295
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/c$d;->b:Lcom/baidu/gamesdk/IResponse;

    if-eqz v0, :cond_32

    .line 296
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/c$d;->b:Lcom/baidu/gamesdk/IResponse;

    const/16 v1, -0xa

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/baidu/gamesdk/IResponse;->onResponse(ILjava/lang/String;Ljava/lang/Object;)V

    .line 299
    :cond_32
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/c$d;->a:Landroid/content/Context;

    const/16 v1, 0x2e

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/a;->a(Landroid/content/Context;I)V

    .line 304
    :goto_39
    return-void

    .line 303
    :cond_3a
    invoke-static {p0}, Lcom/duoku/platform/DkPlatform;->getFloatWindowData(Lcom/duoku/platform/IDKSDKCallBack;)V

    goto :goto_39
.end method

.method private a()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 308
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/c$d;->b:Lcom/baidu/gamesdk/IResponse;

    if-nez v2, :cond_7

    .line 314
    :cond_6
    :goto_6
    return v0

    .line 311
    :cond_7
    iget v2, p0, Lcom/baidu/bdgame/sdk/obf/c$d;->d:I

    if-ge v2, v1, :cond_6

    move v0, v1

    .line 312
    goto :goto_6
.end method

.method private b()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 318
    const-string v0, "BDGameSDK"

    const-string v1, "DK ShowSuspendWindonw Success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/c$d;->b:Lcom/baidu/gamesdk/IResponse;

    if-eqz v0, :cond_12

    .line 320
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/c$d;->b:Lcom/baidu/gamesdk/IResponse;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/baidu/gamesdk/IResponse;->onResponse(ILjava/lang/String;Ljava/lang/Object;)V

    .line 322
    :cond_12
    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/String;)V
    .registers 4
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 326
    .line 328
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 329
    const-string v1, "state_code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_13

    move-result v0

    .line 336
    const/16 v1, 0x3fd

    if-ne v0, v1, :cond_23

    .line 337
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/c$d;->b()V

    .line 341
    :goto_12
    return-void

    .line 330
    :catch_13
    move-exception v0

    .line 331
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 332
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/c$d;->a:Landroid/content/Context;

    const-string v1, "bd_game_login_suspend_window_fail"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/c$d;->a(Ljava/lang/String;)V

    goto :goto_12

    .line 339
    :cond_23
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/c$d;->a:Landroid/content/Context;

    const-string v1, "bd_game_login_suspend_window_fail"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/c$d;->a(Ljava/lang/String;)V

    goto :goto_12
.end method
