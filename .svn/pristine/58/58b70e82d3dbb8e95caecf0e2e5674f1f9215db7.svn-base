.class public abstract Lmobisocial/omlib/service/util/ServiceBindingHelper;
.super Ljava/lang/Object;
.source "ServiceBindingHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;,
        Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceRunnerThread;,
        Lmobisocial/omlib/service/util/ServiceBindingHelper$MyServiceConnection;,
        Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceConnectedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TService:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final MSG_QUIT:I = 0x2

.field static final MSG_RUN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SERVICE-HELPER"


# instance fields
.field protected mApplicationContext:Landroid/content/Context;

.field private mBound:Z

.field protected final mHandlerLock:Ljava/lang/Object;

.field protected mHandlerThread:Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceRunnerThread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmobisocial/omlib/service/util/ServiceBindingHelper",
            "<TTService;>.ServiceRunnerThread;"
        }
    .end annotation
.end field

.field protected mService:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTService;"
        }
    .end annotation
.end field

.field protected final mServiceConnection:Lmobisocial/omlib/service/util/ServiceBindingHelper$MyServiceConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmobisocial/omlib/service/util/ServiceBindingHelper",
            "<TTService;>.MyServiceConnection;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    .local p0, "this":Lmobisocial/omlib/service/util/ServiceBindingHelper;, "Lmobisocial/omlib/service/util/ServiceBindingHelper<TTService;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper;->mHandlerLock:Ljava/lang/Object;

    .line 69
    new-instance v0, Lmobisocial/omlib/service/util/ServiceBindingHelper$MyServiceConnection;

    invoke-direct {v0, p0}, Lmobisocial/omlib/service/util/ServiceBindingHelper$MyServiceConnection;-><init>(Lmobisocial/omlib/service/util/ServiceBindingHelper;)V

    iput-object v0, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper;->mServiceConnection:Lmobisocial/omlib/service/util/ServiceBindingHelper$MyServiceConnection;

    .line 260
    return-void
.end method

.method static synthetic access$002(Lmobisocial/omlib/service/util/ServiceBindingHelper;Z)Z
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/service/util/ServiceBindingHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper;->mBound:Z

    return p1
.end method

.method private ensureServiceConnected()V
    .registers 3

    .prologue
    .line 129
    .local p0, "this":Lmobisocial/omlib/service/util/ServiceBindingHelper;, "Lmobisocial/omlib/service/util/ServiceBindingHelper<TTService;>;"
    iget-object v0, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper;->mHandlerThread:Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceRunnerThread;

    if-nez v0, :cond_c

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Service is not connected-- run() must be called after connect() and before disconnect()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_c
    return-void
.end method


# virtual methods
.method public callAndWait(Lmobisocial/omlib/service/util/ServiceCallable;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lmobisocial/omlib/service/util/ServiceCallable",
            "<TTService;>;)TU;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lmobisocial/omlib/service/util/ServiceBindingHelper;, "Lmobisocial/omlib/service/util/ServiceBindingHelper<TTService;>;"
    .local p1, "cb":Lmobisocial/omlib/service/util/ServiceCallable;, "Lmobisocial/omlib/service/util/ServiceCallable<TTService;>;"
    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 176
    invoke-direct {p0}, Lmobisocial/omlib/service/util/ServiceBindingHelper;->ensureServiceConnected()V

    .line 177
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 178
    .local v5, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v4, v0, [Ljava/lang/Throwable;

    .line 179
    .local v4, "failed":[Ljava/lang/Throwable;
    new-array v2, v0, [Ljava/lang/Object;

    .line 180
    .local v2, "result":[Ljava/lang/Object;
    iget-object v0, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper;->mHandlerThread:Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceRunnerThread;

    iget-object v7, v0, Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceRunnerThread;->handler:Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;

    new-instance v0, Lmobisocial/omlib/service/util/ServiceBindingHelper$2;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lmobisocial/omlib/service/util/ServiceBindingHelper$2;-><init>(Lmobisocial/omlib/service/util/ServiceBindingHelper;[Ljava/lang/Object;Lmobisocial/omlib/service/util/ServiceCallable;[Ljava/lang/Throwable;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v7, v0}, Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;->postRunnable(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 193
    :try_start_1c
    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_1f} :catch_2a

    .line 197
    :goto_1f
    aget-object v0, v4, v8

    if-eqz v0, :cond_33

    .line 198
    aget-object v0, v4, v8

    invoke-static {v0}, Lmobisocial/util/PlatformUtils;->makeUncheckedForThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 194
    :catch_2a
    move-exception v6

    .line 195
    .local v6, "e":Ljava/lang/InterruptedException;
    const-string v0, "SERVICE-HELPER"

    const-string v1, "service binding helper runnable interrupted"

    invoke-static {v0, v1, v6}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1f

    .line 199
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :cond_33
    aget-object v0, v2, v8

    return-object v0
.end method

.method public connect(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    .local p0, "this":Lmobisocial/omlib/service/util/ServiceBindingHelper;, "Lmobisocial/omlib/service/util/ServiceBindingHelper<TTService;>;"
    iget-object v1, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper;->mHandlerThread:Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceRunnerThread;

    if-eqz v1, :cond_c

    .line 89
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already called connect"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper;->mApplicationContext:Landroid/content/Context;

    .line 92
    iget-object v2, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 93
    :try_start_15
    new-instance v1, Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceRunnerThread;

    invoke-direct {v1, p0}, Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceRunnerThread;-><init>(Lmobisocial/omlib/service/util/ServiceBindingHelper;)V

    iput-object v1, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper;->mHandlerThread:Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceRunnerThread;

    .line 94
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_2b

    .line 95
    invoke-virtual {p0, p1}, Lmobisocial/omlib/service/util/ServiceBindingHelper;->intentForServiceBinding(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 96
    .local v0, "service":Landroid/content/Intent;
    iget-object v1, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper;->mServiceConnection:Lmobisocial/omlib/service/util/ServiceBindingHelper$MyServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper;->mBound:Z

    .line 97
    return-void

    .line 94
    .end local v0    # "service":Landroid/content/Intent;
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public disconnect(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    .local p0, "this":Lmobisocial/omlib/service/util/ServiceBindingHelper;, "Lmobisocial/omlib/service/util/ServiceBindingHelper<TTService;>;"
    iget-object v2, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 104
    :try_start_3
    iget-object v1, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper;->mHandlerThread:Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceRunnerThread;

    if-eqz v1, :cond_11

    .line 105
    iget-object v1, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper;->mHandlerThread:Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceRunnerThread;

    iget-object v1, v1, Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceRunnerThread;->handler:Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;

    invoke-virtual {v1}, Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;->postQuit()V

    .line 106
    const/4 v1, 0x0

    iput-object v1, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper;->mHandlerThread:Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceRunnerThread;

    .line 108
    :cond_11
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1f

    .line 109
    iget-boolean v1, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper;->mBound:Z

    if-eqz v1, :cond_1e

    .line 110
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper;->mBound:Z

    .line 112
    :try_start_19
    iget-object v1, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper;->mServiceConnection:Lmobisocial/omlib/service/util/ServiceBindingHelper$MyServiceConnection;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_22

    .line 117
    :cond_1e
    :goto_1e
    return-void

    .line 108
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1

    .line 113
    :catch_22
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SERVICE-HELPER"

    const-string v2, "Service is not bound!"

    invoke-static {v1, v2, v0}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e
.end method

.method public getApplicationContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 120
    .local p0, "this":Lmobisocial/omlib/service/util/ServiceBindingHelper;, "Lmobisocial/omlib/service/util/ServiceBindingHelper<TTService;>;"
    iget-object v0, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getConnectedService()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTService;"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "this":Lmobisocial/omlib/service/util/ServiceBindingHelper;, "Lmobisocial/omlib/service/util/ServiceBindingHelper<TTService;>;"
    iget-object v0, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper;->mService:Ljava/lang/Object;

    return-object v0
.end method

.method public getServiceConnection()Landroid/content/ServiceConnection;
    .registers 2

    .prologue
    .line 210
    .local p0, "this":Lmobisocial/omlib/service/util/ServiceBindingHelper;, "Lmobisocial/omlib/service/util/ServiceBindingHelper<TTService;>;"
    iget-object v0, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper;->mServiceConnection:Lmobisocial/omlib/service/util/ServiceBindingHelper$MyServiceConnection;

    return-object v0
.end method

.method protected abstract intentForServiceBinding(Landroid/content/Context;)Landroid/content/Intent;
.end method

.method public run(Lmobisocial/omlib/service/util/ServiceRunnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobisocial/omlib/service/util/ServiceRunnable",
            "<TTService;>;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lmobisocial/omlib/service/util/ServiceBindingHelper;, "Lmobisocial/omlib/service/util/ServiceBindingHelper<TTService;>;"
    .local p1, "cb":Lmobisocial/omlib/service/util/ServiceRunnable;, "Lmobisocial/omlib/service/util/ServiceRunnable<TTService;>;"
    invoke-direct {p0}, Lmobisocial/omlib/service/util/ServiceBindingHelper;->ensureServiceConnected()V

    .line 139
    iget-object v0, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper;->mHandlerThread:Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceRunnerThread;

    iget-object v0, v0, Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceRunnerThread;->handler:Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;

    invoke-virtual {v0, p1}, Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;->postRunnable(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 140
    return-void
.end method

.method public runAndWait(Lmobisocial/omlib/service/util/ServiceRunnable;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobisocial/omlib/service/util/ServiceRunnable",
            "<TTService;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lmobisocial/omlib/service/util/ServiceBindingHelper;, "Lmobisocial/omlib/service/util/ServiceBindingHelper<TTService;>;"
    .local p1, "cb":Lmobisocial/omlib/service/util/ServiceRunnable;, "Lmobisocial/omlib/service/util/ServiceRunnable<TTService;>;"
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 147
    invoke-direct {p0}, Lmobisocial/omlib/service/util/ServiceBindingHelper;->ensureServiceConnected()V

    .line 148
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 149
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v1, v3, [Ljava/lang/Throwable;

    .line 150
    .local v1, "failed":[Ljava/lang/Throwable;
    iget-object v3, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper;->mHandlerThread:Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceRunnerThread;

    iget-object v3, v3, Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceRunnerThread;->handler:Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;

    new-instance v4, Lmobisocial/omlib/service/util/ServiceBindingHelper$1;

    invoke-direct {v4, p0, p1, v1, v2}, Lmobisocial/omlib/service/util/ServiceBindingHelper$1;-><init>(Lmobisocial/omlib/service/util/ServiceBindingHelper;Lmobisocial/omlib/service/util/ServiceRunnable;[Ljava/lang/Throwable;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v4}, Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;->postRunnable(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 163
    :try_start_18
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1b} :catch_26

    .line 167
    :goto_1b
    aget-object v3, v1, v5

    if-eqz v3, :cond_2f

    .line 168
    aget-object v3, v1, v5

    invoke-static {v3}, Lmobisocial/util/PlatformUtils;->makeUncheckedForThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 164
    :catch_26
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "SERVICE-HELPER"

    const-string v4, "service binding helper runnable interrupted"

    invoke-static {v3, v4, v0}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b

    .line 169
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2f
    return-void
.end method

.method protected abstract serviceConnectedCallback(Landroid/os/IBinder;)V
.end method

.method protected abstract serviceForBinder(Landroid/os/IBinder;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TTService;"
        }
    .end annotation
.end method
