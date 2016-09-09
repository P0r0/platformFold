.class final Lcom/nearme/game/sdk/a$8;
.super Lcom/nearme/game/sdk/common/util/MainThreadHandler;
.source "GCInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nearme/game/sdk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 434
    invoke-direct {p0}, Lcom/nearme/game/sdk/common/util/MainThreadHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    .line 438
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/Bundle;

    if-eqz v0, :cond_4b

    .line 439
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 440
    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 441
    if-eqz v0, :cond_4b

    instance-of v1, v0, Lcom/nearme/game/sdk/common/model/ApiResult;

    if-eqz v1, :cond_4b

    .line 442
    check-cast v0, Lcom/nearme/game/sdk/common/model/ApiResult;

    .line 443
    invoke-static {}, Lcom/nearme/game/sdk/a;->c()Lcom/nearme/game/sdk/common/util/LongSparseArray;

    move-result-object v1

    if-nez v1, :cond_4c

    const/4 v1, 0x0

    .line 444
    :goto_1f
    if-eqz v1, :cond_35

    .line 445
    const/16 v2, 0x3e9

    iget v3, v0, Lcom/nearme/game/sdk/common/model/ApiResult;->resultCode:I

    if-ne v2, v3, :cond_59

    .line 446
    iget-object v2, v0, Lcom/nearme/game/sdk/common/model/ApiResult;->resultMsg:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/nearme/game/sdk/callback/ApiCallback;->onSuccess(Ljava/lang/String;)V

    .line 450
    :goto_2c
    invoke-static {}, Lcom/nearme/game/sdk/a;->c()Lcom/nearme/game/sdk/common/util/LongSparseArray;

    move-result-object v1

    iget-wide v2, v0, Lcom/nearme/game/sdk/common/model/ApiResult;->seq:J

    invoke-virtual {v1, v2, v3}, Lcom/nearme/game/sdk/common/util/LongSparseArray;->remove(J)V

    .line 452
    :cond_35
    const-string v1, "GCInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "finish handle request "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/nearme/game/sdk/common/model/ApiResult;->requestCode:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :cond_4b
    return-void

    .line 443
    :cond_4c
    invoke-static {}, Lcom/nearme/game/sdk/a;->c()Lcom/nearme/game/sdk/common/util/LongSparseArray;

    move-result-object v1

    iget-wide v2, v0, Lcom/nearme/game/sdk/common/model/ApiResult;->seq:J

    invoke-virtual {v1, v2, v3}, Lcom/nearme/game/sdk/common/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nearme/game/sdk/callback/ApiCallback;

    goto :goto_1f

    .line 448
    :cond_59
    iget-object v2, v0, Lcom/nearme/game/sdk/common/model/ApiResult;->resultMsg:Ljava/lang/String;

    iget v3, v0, Lcom/nearme/game/sdk/common/model/ApiResult;->resultCode:I

    invoke-interface {v1, v2, v3}, Lcom/nearme/game/sdk/callback/ApiCallback;->onFailure(Ljava/lang/String;I)V

    goto :goto_2c
.end method
