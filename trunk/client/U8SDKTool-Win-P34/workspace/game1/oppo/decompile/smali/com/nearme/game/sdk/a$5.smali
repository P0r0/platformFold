.class final Lcom/nearme/game/sdk/a$5;
.super Ljava/lang/Object;
.source "GCInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nearme/game/sdk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nearme/game/sdk/common/model/ApiRequest;

.field private synthetic b:Lcom/nearme/game/sdk/callback/ApiCallback;

.field private synthetic c:Lcom/nearme/game/sdk/a;


# direct methods
.method constructor <init>(Lcom/nearme/game/sdk/a;Lcom/nearme/game/sdk/common/model/ApiRequest;Lcom/nearme/game/sdk/callback/ApiCallback;)V
    .registers 4

    .prologue
    .line 309
    iput-object p1, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    iput-object p2, p0, Lcom/nearme/game/sdk/a$5;->a:Lcom/nearme/game/sdk/common/model/ApiRequest;

    iput-object p3, p0, Lcom/nearme/game/sdk/a$5;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 312
    const-string v0, "GCInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "begin send request "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nearme/game/sdk/a$5;->a:Lcom/nearme/game/sdk/common/model/ApiRequest;

    iget v3, v3, Lcom/nearme/game/sdk/common/model/ApiRequest;->requestCode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const/4 v1, 0x1

    .line 314
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->j(Lcom/nearme/game/sdk/a;)Landroid/os/Messenger;

    move-result-object v0

    if-nez v0, :cond_4a

    .line 316
    :try_start_22
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->a(Lcom/nearme/game/sdk/a;)[B

    move-result-object v3

    monitor-enter v3
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_29} :catch_cb

    .line 317
    :try_start_29
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->j(Lcom/nearme/game/sdk/a;)Landroid/os/Messenger;

    move-result-object v0

    if-nez v0, :cond_49

    .line 318
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    iget-object v0, v0, Lcom/nearme/game/sdk/a;->c:Landroid/os/Handler;

    iget-object v4, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    invoke-static {v4}, Lcom/nearme/game/sdk/a;->k(Lcom/nearme/game/sdk/a;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 319
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->a(Lcom/nearme/game/sdk/a;)[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 321
    :cond_49
    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_29 .. :try_end_4a} :catchall_c8

    .line 326
    :cond_4a
    :goto_4a
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->j(Lcom/nearme/game/sdk/a;)Landroid/os/Messenger;

    move-result-object v0

    if-eqz v0, :cond_179

    .line 328
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->g(Lcom/nearme/game/sdk/a;)Z

    move-result v0

    if-nez v0, :cond_d9

    invoke-static {}, Lcom/nearme/game/sdk/a;->b()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/nearme/game/sdk/a$5;->a:Lcom/nearme/game/sdk/common/model/ApiRequest;

    iget v3, v3, Lcom/nearme/game/sdk/common/model/ApiRequest;->requestCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d9

    .line 330
    :try_start_6c
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->d(Lcom/nearme/game/sdk/a;)[B

    move-result-object v3

    monitor-enter v3
    :try_end_73
    .catch Ljava/lang/InterruptedException; {:try_start_6c .. :try_end_73} :catch_d4

    .line 331
    :try_start_73
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->g(Lcom/nearme/game/sdk/a;)Z

    move-result v0

    if-nez v0, :cond_93

    .line 332
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    iget-object v0, v0, Lcom/nearme/game/sdk/a;->c:Landroid/os/Handler;

    iget-object v4, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    invoke-static {v4}, Lcom/nearme/game/sdk/a;->h(Lcom/nearme/game/sdk/a;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v6, 0x1388

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 333
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->d(Lcom/nearme/game/sdk/a;)[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 335
    :cond_93
    monitor-exit v3
    :try_end_94
    .catchall {:try_start_73 .. :try_end_94} :catchall_d1

    .line 339
    :goto_94
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->g(Lcom/nearme/game/sdk/a;)Z

    move-result v0

    if-nez v0, :cond_d9

    .line 340
    const-string v0, "GCInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed send request "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nearme/game/sdk/a$5;->a:Lcom/nearme/game/sdk/common/model/ApiRequest;

    iget v2, v2, Lcom/nearme/game/sdk/common/model/ApiRequest;->requestCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for init not accomplished."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    if-eqz v0, :cond_c7

    .line 343
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    iget-object v1, p0, Lcom/nearme/game/sdk/a$5;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    const-string v2, "failed for init not accomplished."

    invoke-static {v0, v1, v2}, Lcom/nearme/game/sdk/a;->a(Lcom/nearme/game/sdk/a;Lcom/nearme/game/sdk/callback/ApiCallback;Ljava/lang/String;)V

    .line 384
    :cond_c7
    :goto_c7
    return-void

    .line 321
    :catchall_c8
    move-exception v0

    :try_start_c9
    monitor-exit v3
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_c8

    :try_start_ca
    throw v0
    :try_end_cb
    .catch Ljava/lang/InterruptedException; {:try_start_ca .. :try_end_cb} :catch_cb

    .line 323
    :catch_cb
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_4a

    .line 335
    :catchall_d1
    move-exception v0

    :try_start_d2
    monitor-exit v3
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d1

    :try_start_d3
    throw v0
    :try_end_d4
    .catch Ljava/lang/InterruptedException; {:try_start_d3 .. :try_end_d4} :catch_d4

    .line 337
    :catch_d4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_94

    .line 349
    :cond_d9
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    if-eqz v0, :cond_fa

    .line 350
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->a:Lcom/nearme/game/sdk/common/model/ApiRequest;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/nearme/game/sdk/a$5;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/nearme/game/sdk/common/model/ApiRequest;->seq:J

    .line 351
    invoke-static {}, Lcom/nearme/game/sdk/a;->c()Lcom/nearme/game/sdk/common/util/LongSparseArray;

    move-result-object v0

    iget-object v3, p0, Lcom/nearme/game/sdk/a$5;->a:Lcom/nearme/game/sdk/common/model/ApiRequest;

    iget-wide v4, v3, Lcom/nearme/game/sdk/common/model/ApiRequest;->seq:J

    iget-object v3, p0, Lcom/nearme/game/sdk/a$5;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    invoke-virtual {v0, v4, v5, v3}, Lcom/nearme/game/sdk/common/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 353
    :cond_fa
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 354
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 355
    const-string v4, "requst"

    iget-object v5, p0, Lcom/nearme/game/sdk/a$5;->a:Lcom/nearme/game/sdk/common/model/ApiRequest;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 356
    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 357
    iget-object v3, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    invoke-static {v3}, Lcom/nearme/game/sdk/a;->i(Lcom/nearme/game/sdk/a;)Landroid/os/Messenger;

    move-result-object v3

    iput-object v3, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 359
    :try_start_114
    iget-object v3, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    invoke-static {v3}, Lcom/nearme/game/sdk/a;->j(Lcom/nearme/game/sdk/a;)Landroid/os/Messenger;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_11d
    .catch Landroid/os/RemoteException; {:try_start_114 .. :try_end_11d} :catch_139

    move v0, v1

    .line 381
    :goto_11e
    if-eqz v0, :cond_c7

    .line 382
    const-string v0, "GCInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "finish send request "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nearme/game/sdk/a$5;->a:Lcom/nearme/game/sdk/common/model/ApiRequest;

    iget v2, v2, Lcom/nearme/game/sdk/common/model/ApiRequest;->requestCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c7

    .line 360
    :catch_139
    move-exception v0

    .line 361
    const-string v1, "GCInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "send PRC request error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    if-eqz v0, :cond_16a

    .line 363
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    iget-object v1, p0, Lcom/nearme/game/sdk/a$5;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    const-string v3, "failed for RemoteException."

    invoke-static {v0, v1, v3}, Lcom/nearme/game/sdk/a;->a(Lcom/nearme/game/sdk/a;Lcom/nearme/game/sdk/callback/ApiCallback;Ljava/lang/String;)V

    .line 365
    invoke-static {}, Lcom/nearme/game/sdk/a;->c()Lcom/nearme/game/sdk/common/util/LongSparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/nearme/game/sdk/a$5;->a:Lcom/nearme/game/sdk/common/model/ApiRequest;

    iget-wide v4, v1, Lcom/nearme/game/sdk/common/model/ApiRequest;->seq:J

    invoke-virtual {v0, v4, v5}, Lcom/nearme/game/sdk/common/util/LongSparseArray;->remove(J)V

    .line 368
    :cond_16a
    :try_start_16a
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->l(Lcom/nearme/game/sdk/a;)V
    :try_end_16f
    .catch Ljava/lang/Exception; {:try_start_16a .. :try_end_16f} :catch_171

    :goto_16f
    move v0, v2

    .line 374
    goto :goto_11e

    .line 370
    :catch_171
    move-exception v0

    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nearme/game/sdk/a;->a(Lcom/nearme/game/sdk/a;Landroid/os/Messenger;)Landroid/os/Messenger;

    goto :goto_16f

    .line 375
    :cond_179
    const-string v0, "GCInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "failed send request "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nearme/game/sdk/a$5;->a:Lcom/nearme/game/sdk/common/model/ApiRequest;

    iget v3, v3, Lcom/nearme/game/sdk/common/model/ApiRequest;->requestCode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " for service is null."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    if-eqz v0, :cond_1a4

    .line 377
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    iget-object v1, p0, Lcom/nearme/game/sdk/a$5;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    const-string v3, "failed for service is null."

    invoke-static {v0, v1, v3}, Lcom/nearme/game/sdk/a;->a(Lcom/nearme/game/sdk/a;Lcom/nearme/game/sdk/callback/ApiCallback;Ljava/lang/String;)V

    :cond_1a4
    move v0, v2

    .line 379
    goto/16 :goto_11e
.end method
