.class Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;
.super Landroid/os/Handler;
.source "ServiceBindingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/service/util/ServiceBindingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceHandler"
.end annotation


# instance fields
.field mQuitting:Z

.field mService:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTService;"
        }
    .end annotation
.end field

.field final mServiceLock:Ljava/lang/Object;

.field final synthetic this$0:Lmobisocial/omlib/service/util/ServiceBindingHelper;


# direct methods
.method public constructor <init>(Lmobisocial/omlib/service/util/ServiceBindingHelper;Landroid/os/Looper;)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/omlib/service/util/ServiceBindingHelper;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 268
    .local p0, "this":Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;, "Lmobisocial/omlib/service/util/ServiceBindingHelper<TTService;>.ServiceHandler;"
    iput-object p1, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;->this$0:Lmobisocial/omlib/service/util/ServiceBindingHelper;

    .line 269
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 266
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;->mServiceLock:Ljava/lang/Object;

    .line 270
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 296
    .local p0, "this":Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;, "Lmobisocial/omlib/service/util/ServiceBindingHelper<TTService;>.ServiceHandler;"
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2e

    .line 297
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmobisocial/omlib/service/util/ServiceRunnable;

    .line 298
    .local v0, "r":Lmobisocial/omlib/service/util/ServiceRunnable;
    iget-object v1, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;->mService:Ljava/lang/Object;

    .line 299
    .local v1, "service":Ljava/lang/Object;
    if-nez v1, :cond_21

    .line 300
    iget-object v3, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;->mServiceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 301
    :goto_10
    :try_start_10
    iget-boolean v2, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;->mQuitting:Z

    if-nez v2, :cond_20

    iget-object v1, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;->mService:Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_2b

    if-nez v1, :cond_20

    .line 303
    :try_start_18
    iget-object v2, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;->mServiceLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1d} :catch_1e
    .catchall {:try_start_18 .. :try_end_1d} :catchall_2b

    goto :goto_10

    .line 304
    :catch_1e
    move-exception v2

    goto :goto_10

    .line 307
    :cond_20
    :try_start_20
    monitor-exit v3
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_2b

    .line 309
    :cond_21
    iget-boolean v2, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;->mQuitting:Z

    if-nez v2, :cond_2a

    if-eqz v1, :cond_2a

    .line 310
    invoke-interface {v0, v1}, Lmobisocial/omlib/service/util/ServiceRunnable;->run(Ljava/lang/Object;)V

    .line 316
    .end local v0    # "r":Lmobisocial/omlib/service/util/ServiceRunnable;
    .end local v1    # "service":Ljava/lang/Object;
    :cond_2a
    :goto_2a
    return-void

    .line 307
    .restart local v0    # "r":Lmobisocial/omlib/service/util/ServiceRunnable;
    .restart local v1    # "service":Ljava/lang/Object;
    :catchall_2b
    move-exception v2

    :try_start_2c
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v2

    .line 312
    .end local v0    # "r":Lmobisocial/omlib/service/util/ServiceRunnable;
    .end local v1    # "service":Ljava/lang/Object;
    :cond_2e
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2a

    .line 313
    const/4 v2, 0x0

    iput-object v2, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;->mService:Ljava/lang/Object;

    .line 314
    invoke-virtual {p0}, Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    goto :goto_2a
.end method

.method public postQuit()V
    .registers 4

    .prologue
    .line 286
    .local p0, "this":Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;, "Lmobisocial/omlib/service/util/ServiceBindingHelper<TTService;>.ServiceHandler;"
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;->mQuitting:Z

    .line 287
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 288
    .local v0, "m":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 289
    iget-object v2, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;->mServiceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 290
    :try_start_e
    iget-object v1, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;->mServiceLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 291
    monitor-exit v2

    .line 292
    return-void

    .line 291
    :catchall_15
    move-exception v1

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw v1
.end method

.method postRunnable(Lmobisocial/omlib/service/util/ServiceRunnable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobisocial/omlib/service/util/ServiceRunnable",
            "<TTService;>;)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p0, "this":Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;, "Lmobisocial/omlib/service/util/ServiceBindingHelper<TTService;>.ServiceHandler;"
    .local p1, "r":Lmobisocial/omlib/service/util/ServiceRunnable;, "Lmobisocial/omlib/service/util/ServiceRunnable<TTService;>;"
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 281
    .local v0, "m":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 282
    invoke-virtual {p0, v0}, Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 283
    return-void
.end method

.method setService(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTService;)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p0, "this":Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;, "Lmobisocial/omlib/service/util/ServiceBindingHelper<TTService;>.ServiceHandler;"
    .local p1, "service":Ljava/lang/Object;, "TTService;"
    iput-object p1, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;->mService:Ljava/lang/Object;

    .line 274
    iget-object v1, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 275
    :try_start_5
    iget-object v0, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;->mServiceLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 276
    monitor-exit v1

    .line 277
    return-void

    .line 276
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v0
.end method
