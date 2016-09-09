.class public Lmobisocial/omlib/api/OmletApiManager;
.super Lmobisocial/omlib/service/util/ServiceBindingHelper;
.source "OmletApiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlib/api/OmletApiManager$ApiReadyListener;,
        Lmobisocial/omlib/api/OmletApiManager$Error;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmobisocial/omlib/service/util/ServiceBindingHelper",
        "<",
        "Lmobisocial/omlib/api/OmletApi;",
        ">;"
    }
.end annotation


# static fields
.field private static sInstance:Lmobisocial/omlib/api/OmletApiManager;


# instance fields
.field private isSharedContext:Z

.field mApiConnectionError:Lmobisocial/omlib/api/OmletApiManager$Error;

.field private mInterestCount:I

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lmobisocial/omlib/api/OmletApiManager$ApiReadyListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 113
    invoke-direct {p0}, Lmobisocial/omlib/service/util/ServiceBindingHelper;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lmobisocial/omlib/api/OmletApiManager;->mInterestCount:I

    .line 100
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/api/OmletApiManager;->mListeners:Ljava/util/Set;

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lmobisocial/omlib/api/OmletApiManager;->mApiConnectionError:Lmobisocial/omlib/api/OmletApiManager$Error;

    .line 114
    return-void
.end method

.method static synthetic access$100(Lmobisocial/omlib/api/OmletApiManager;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlib/api/OmletApiManager;

    .prologue
    .line 83
    iget-object v0, p0, Lmobisocial/omlib/api/OmletApiManager;->mListeners:Ljava/util/Set;

    return-object v0
.end method

.method public static getInstance()Lmobisocial/omlib/api/OmletApiManager;
    .registers 3

    .prologue
    .line 120
    sget-object v0, Lmobisocial/omlib/api/OmletApiManager;->sInstance:Lmobisocial/omlib/api/OmletApiManager;

    if-nez v0, :cond_18

    .line 121
    const-class v1, Lmobisocial/omlib/api/OmletApiManager;

    monitor-enter v1

    .line 122
    :try_start_7
    sget-object v0, Lmobisocial/omlib/api/OmletApiManager;->sInstance:Lmobisocial/omlib/api/OmletApiManager;

    if-nez v0, :cond_17

    .line 123
    new-instance v0, Lmobisocial/omlib/api/OmletApiManager;

    invoke-direct {v0}, Lmobisocial/omlib/api/OmletApiManager;-><init>()V

    sput-object v0, Lmobisocial/omlib/api/OmletApiManager;->sInstance:Lmobisocial/omlib/api/OmletApiManager;

    .line 124
    sget-object v0, Lmobisocial/omlib/api/OmletApiManager;->sInstance:Lmobisocial/omlib/api/OmletApiManager;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lmobisocial/omlib/api/OmletApiManager;->isSharedContext:Z

    .line 126
    :cond_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1b

    .line 128
    :cond_18
    sget-object v0, Lmobisocial/omlib/api/OmletApiManager;->sInstance:Lmobisocial/omlib/api/OmletApiManager;

    return-object v0

    .line 126
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method


# virtual methods
.method public declared-synchronized connect(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v0}, Lmobisocial/omlib/api/OmletApiManager;->connect(Landroid/content/Context;Lmobisocial/omlib/api/OmletApiManager$ApiReadyListener;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 159
    monitor-exit p0

    return-void

    .line 158
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connect(Landroid/content/Context;Lmobisocial/omlib/api/OmletApiManager$ApiReadyListener;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lmobisocial/omlib/api/OmletApiManager$ApiReadyListener;

    .prologue
    .line 141
    monitor-enter p0

    :try_start_1
    iget v1, p0, Lmobisocial/omlib/api/OmletApiManager;->mInterestCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmobisocial/omlib/api/OmletApiManager;->mInterestCount:I

    if-nez v1, :cond_14

    .line 142
    iget-boolean v1, p0, Lmobisocial/omlib/api/OmletApiManager;->isSharedContext:Z

    if-eqz v1, :cond_11

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .end local p1    # "context":Landroid/content/Context;
    :cond_11
    invoke-super {p0, p1}, Lmobisocial/omlib/service/util/ServiceBindingHelper;->connect(Landroid/content/Context;)V

    .line 144
    :cond_14
    if-eqz p2, :cond_1f

    .line 145
    iget-object v0, p0, Lmobisocial/omlib/api/OmletApiManager;->mService:Ljava/lang/Object;

    check-cast v0, Lmobisocial/omlib/api/OmletApi;

    .line 146
    .local v0, "api":Lmobisocial/omlib/api/OmletApi;
    if-eqz v0, :cond_21

    .line 147
    invoke-interface {p2, v0}, Lmobisocial/omlib/api/OmletApiManager$ApiReadyListener;->onApiReady(Lmobisocial/omlib/api/OmletApi;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_2b

    .line 154
    .end local v0    # "api":Lmobisocial/omlib/api/OmletApi;
    :cond_1f
    :goto_1f
    monitor-exit p0

    return-void

    .line 148
    .restart local v0    # "api":Lmobisocial/omlib/api/OmletApi;
    :cond_21
    :try_start_21
    iget-object v1, p0, Lmobisocial/omlib/api/OmletApiManager;->mApiConnectionError:Lmobisocial/omlib/api/OmletApiManager$Error;

    if-eqz v1, :cond_2e

    .line 149
    iget-object v1, p0, Lmobisocial/omlib/api/OmletApiManager;->mApiConnectionError:Lmobisocial/omlib/api/OmletApiManager$Error;

    invoke-interface {p2, v1}, Lmobisocial/omlib/api/OmletApiManager$ApiReadyListener;->onApiError(Lmobisocial/omlib/api/OmletApiManager$Error;)V
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_2b

    goto :goto_1f

    .line 141
    .end local v0    # "api":Lmobisocial/omlib/api/OmletApi;
    :catchall_2b
    move-exception v1

    monitor-exit p0

    throw v1

    .line 151
    .restart local v0    # "api":Lmobisocial/omlib/api/OmletApi;
    :cond_2e
    :try_start_2e
    iget-object v1, p0, Lmobisocial/omlib/api/OmletApiManager;->mListeners:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_2b

    goto :goto_1f
.end method

.method public declared-synchronized disconnect(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v0}, Lmobisocial/omlib/api/OmletApiManager;->disconnect(Landroid/content/Context;Lmobisocial/omlib/api/OmletApiManager$ApiReadyListener;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 182
    monitor-exit p0

    return-void

    .line 181
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnect(Landroid/content/Context;Lmobisocial/omlib/api/OmletApiManager$ApiReadyListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lmobisocial/omlib/api/OmletApiManager$ApiReadyListener;

    .prologue
    .line 166
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lmobisocial/omlib/api/OmletApiManager;->mInterestCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmobisocial/omlib/api/OmletApiManager;->mInterestCount:I

    if-nez v0, :cond_17

    .line 167
    iget-boolean v0, p0, Lmobisocial/omlib/api/OmletApiManager;->isSharedContext:Z

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .end local p1    # "context":Landroid/content/Context;
    :cond_11
    invoke-super {p0, p1}, Lmobisocial/omlib/service/util/ServiceBindingHelper;->disconnect(Landroid/content/Context;)V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lmobisocial/omlib/api/OmletApiManager;->mApiConnectionError:Lmobisocial/omlib/api/OmletApiManager$Error;

    .line 170
    :cond_17
    if-eqz p2, :cond_1e

    .line 171
    iget-object v0, p0, Lmobisocial/omlib/api/OmletApiManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 173
    :cond_1e
    monitor-exit p0

    return-void

    .line 166
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOmletApiBlocking()Lmobisocial/omlib/api/OmletApi;
    .registers 5

    .prologue
    .line 199
    iget-object v3, p0, Lmobisocial/omlib/api/OmletApiManager;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 200
    :goto_3
    :try_start_3
    iget-object v0, p0, Lmobisocial/omlib/api/OmletApiManager;->mService:Ljava/lang/Object;

    check-cast v0, Lmobisocial/omlib/api/OmletApi;
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_14

    .local v0, "api":Lmobisocial/omlib/api/OmletApi;
    if-nez v0, :cond_17

    .line 202
    :try_start_9
    iget-object v2, p0, Lmobisocial/omlib/api/OmletApiManager;->mHandlerLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_e} :catch_f
    .catchall {:try_start_9 .. :try_end_e} :catchall_14

    goto :goto_3

    .line 203
    :catch_f
    move-exception v1

    .line 204
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_10
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 207
    .end local v0    # "api":Lmobisocial/omlib/api/OmletApi;
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_14
    move-exception v2

    monitor-exit v3
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_14

    throw v2

    .restart local v0    # "api":Lmobisocial/omlib/api/OmletApi;
    :cond_17
    :try_start_17
    monitor-exit v3
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_14

    .line 208
    return-object v0
.end method

.method protected intentForServiceBinding(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 220
    invoke-static {p1}, Lmobisocial/omlib/service/BaseOmletApiService;->getApiServiceImplementation(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    .line 221
    .local v0, "c":Ljava/lang/Class;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v1
.end method

.method public declared-synchronized isConnected()Z
    .registers 2

    .prologue
    .line 188
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmobisocial/omlib/api/OmletApiManager;->mHandlerThread:Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceRunnerThread;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmobisocial/omlib/api/OmletApiManager;->mService:Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_e

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected serviceConnectedCallback(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 227
    check-cast p1, Lmobisocial/omlib/service/BaseOmletApiService$BaseBinder;

    .end local p1    # "service":Landroid/os/IBinder;
    invoke-virtual {p1}, Lmobisocial/omlib/service/BaseOmletApiService$BaseBinder;->getService()Lmobisocial/omlib/service/BaseOmletApiService;

    move-result-object v0

    .line 228
    .local v0, "apiService":Lmobisocial/omlib/service/BaseOmletApiService;
    new-instance v1, Lmobisocial/omlib/api/OmletApiManager$1;

    invoke-direct {v1, p0, v0}, Lmobisocial/omlib/api/OmletApiManager$1;-><init>(Lmobisocial/omlib/api/OmletApiManager;Lmobisocial/omlib/service/BaseOmletApiService;)V

    .line 250
    .local v1, "myTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 251
    return-void
.end method

.method protected bridge synthetic serviceForBinder(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lmobisocial/omlib/api/OmletApiManager;->serviceForBinder(Landroid/os/IBinder;)Lmobisocial/omlib/service/BaseOmletApiService;

    move-result-object v0

    return-object v0
.end method

.method protected serviceForBinder(Landroid/os/IBinder;)Lmobisocial/omlib/service/BaseOmletApiService;
    .registers 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 214
    check-cast p1, Lmobisocial/omlib/service/BaseOmletApiService$BaseBinder;

    .end local p1    # "binder":Landroid/os/IBinder;
    invoke-virtual {p1}, Lmobisocial/omlib/service/BaseOmletApiService$BaseBinder;->getService()Lmobisocial/omlib/service/BaseOmletApiService;

    move-result-object v0

    return-object v0
.end method
