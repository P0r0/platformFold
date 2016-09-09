.class final Lcom/nearme/game/sdk/a$1;
.super Lcom/nearme/game/sdk/common/util/MainThreadHandler;
.source "GCInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nearme/game/sdk/a;-><init>(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/nearme/game/sdk/common/util/MainThreadHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 100
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v2, v0, :cond_2d

    .line 101
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2d

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, [Ljava/lang/Object;

    if-eqz v0, :cond_2d

    .line 102
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 103
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lcom/nearme/game/sdk/callback/ApiCallback;

    .line 104
    aget-object v0, v0, v2

    check-cast v0, Lcom/nearme/game/sdk/common/model/ApiResult;

    .line 105
    if-eqz v1, :cond_2d

    if-eqz v0, :cond_2d

    .line 106
    const/16 v2, 0x3e9

    iget v3, v0, Lcom/nearme/game/sdk/common/model/ApiResult;->resultCode:I

    if-eq v2, v3, :cond_2e

    .line 107
    iget-object v2, v0, Lcom/nearme/game/sdk/common/model/ApiResult;->resultMsg:Ljava/lang/String;

    iget v0, v0, Lcom/nearme/game/sdk/common/model/ApiResult;->resultCode:I

    invoke-interface {v1, v2, v0}, Lcom/nearme/game/sdk/callback/ApiCallback;->onFailure(Ljava/lang/String;I)V

    .line 114
    :cond_2d
    :goto_2d
    return-void

    .line 109
    :cond_2e
    iget-object v0, v0, Lcom/nearme/game/sdk/common/model/ApiResult;->resultMsg:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/nearme/game/sdk/callback/ApiCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_2d
.end method
