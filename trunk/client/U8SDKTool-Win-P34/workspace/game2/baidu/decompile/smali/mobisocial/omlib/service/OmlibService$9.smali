.class Lmobisocial/omlib/service/OmlibService$9;
.super Ljava/lang/Object;
.source "OmlibService.java"

# interfaces
.implements Lmobisocial/omlib/api/OmletAuthApi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/service/OmlibService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mAccountConnectedListener:Lmobisocial/omlib/interfaces/OnAccountConnectedListener;

.field final synthetic this$0:Lmobisocial/omlib/service/OmlibService;


# direct methods
.method constructor <init>(Lmobisocial/omlib/service/OmlibService;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlib/service/OmlibService;

    .prologue
    .line 286
    iput-object p1, p0, Lmobisocial/omlib/service/OmlibService$9;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticateWithServiceToken(Ljava/lang/String;Ljava/lang/String;Lmobisocial/omlib/interfaces/OnAuthenticationCompleteListener;)V
    .registers 5
    .param p1, "serviceType"    # Ljava/lang/String;
    .param p2, "authToken"    # Ljava/lang/String;
    .param p3, "listener"    # Lmobisocial/omlib/interfaces/OnAuthenticationCompleteListener;

    .prologue
    .line 292
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$9;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    invoke-virtual {v0, p1, p2, p3}, Lmobisocial/omlib/client/ClientAuthUtils;->confirmAuthentication(Ljava/lang/String;Ljava/lang/String;Lmobisocial/omlib/interfaces/OnAuthenticationCompleteListener;)V

    .line 293
    return-void
.end method

.method public getAccount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$9;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    invoke-virtual {v0}, Lmobisocial/omlib/client/ClientAuthUtils;->getAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLinkedIdentities()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmobisocial/omlib/model/RawIdentity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$9;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    invoke-virtual {v0}, Lmobisocial/omlib/client/ClientAuthUtils;->getLinkedIdentities()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isAuthenticated()Z
    .registers 2

    .prologue
    .line 302
    invoke-virtual {p0}, Lmobisocial/omlib/service/OmlibService$9;->getAccount()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public logout()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/omlib/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 315
    const-string v7, "OmlibService"

    const-string v8, "Logging out.."

    invoke-static {v7, v8}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v7, p0, Lmobisocial/omlib/service/OmlibService$9;->this$0:Lmobisocial/omlib/service/OmlibService;

    const/4 v8, 0x0

    # setter for: Lmobisocial/omlib/service/OmlibService;->mPushEnabled:Z
    invoke-static {v7, v8}, Lmobisocial/omlib/service/OmlibService;->access$202(Lmobisocial/omlib/service/OmlibService;Z)Z

    .line 317
    iget-object v7, p0, Lmobisocial/omlib/service/OmlibService$9;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v7}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v4

    .line 318
    .local v4, "oldClient":Lmobisocial/omlib/client/LongdanClient;
    invoke-virtual {v4}, Lmobisocial/omlib/client/LongdanClient;->isDataSyncRunning()Z

    move-result v6

    .line 320
    .local v6, "wasRunning":Z
    :try_start_17
    new-instance v5, Lmobisocial/longdan/LDProtocols$LDDeleteDeviceRequest;

    invoke-direct {v5}, Lmobisocial/longdan/LDProtocols$LDDeleteDeviceRequest;-><init>()V

    .line 321
    .local v5, "req":Lmobisocial/longdan/LDProtocols$LDDeleteDeviceRequest;
    invoke-virtual {v4}, Lmobisocial/omlib/client/LongdanClient;->getDevicePublicKey()[B

    move-result-object v7

    iput-object v7, v5, Lmobisocial/longdan/LDProtocols$LDDeleteDeviceRequest;->PublicKey:[B

    .line 322
    invoke-virtual {v4}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v7

    invoke-virtual {v7, v5}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_29} :catch_94

    .line 327
    const-string v7, "OmlibService"

    const-string v8, "Logged out remotely."

    invoke-static {v7, v8}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :try_start_30
    sget-object v8, Lmobisocial/omlib/client/LongdanClient;->sharedLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_b2

    .line 330
    :try_start_33
    const-string v7, "OmlibService"

    const-string v9, "Stopping data sync..."

    invoke-static {v7, v9}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-virtual {v4}, Lmobisocial/omlib/client/LongdanClient;->stopDataSync()V

    .line 332
    const-string v7, "OmlibService"

    const-string v9, "Clearing user data..."

    invoke-static {v7, v9}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-virtual {v4}, Lmobisocial/omlib/client/LongdanClient;->clearUserData()V

    .line 334
    invoke-virtual {v4}, Lmobisocial/omlib/client/LongdanClient;->dispose()V

    .line 335
    const-string v7, "OmlibService"

    const-string v9, "Resetting network client."

    invoke-static {v7, v9}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v7, p0, Lmobisocial/omlib/service/OmlibService$9;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v7}, Lmobisocial/omlib/service/OmlibService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lmobisocial/omlib/service/LongdanClientHelper;->resetInstance(Landroid/content/Context;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v3

    .line 337
    .local v3, "newClient":Lmobisocial/omlib/client/LongdanClient;
    iget-object v7, p0, Lmobisocial/omlib/service/OmlibService$9;->mAccountConnectedListener:Lmobisocial/omlib/interfaces/OnAccountConnectedListener;

    if-eqz v7, :cond_66

    .line 338
    iget-object v7, v3, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    iget-object v9, p0, Lmobisocial/omlib/service/OmlibService$9;->mAccountConnectedListener:Lmobisocial/omlib/interfaces/OnAccountConnectedListener;

    invoke-virtual {v7, v9}, Lmobisocial/omlib/client/ClientAuthUtils;->addAccountConnectedListener(Lmobisocial/omlib/interfaces/OnAccountConnectedListener;)V

    .line 340
    :cond_66
    iget-object v7, p0, Lmobisocial/omlib/service/OmlibService$9;->this$0:Lmobisocial/omlib/service/OmlibService;

    # getter for: Lmobisocial/omlib/service/OmlibService;->mClosestClusterListener:Lmobisocial/longdan/net/WsRpcConnection$OnClosestClusterListener;
    invoke-static {v7}, Lmobisocial/omlib/service/OmlibService;->access$400(Lmobisocial/omlib/service/OmlibService;)Lmobisocial/longdan/net/WsRpcConnection$OnClosestClusterListener;

    move-result-object v7

    if-eqz v7, :cond_7b

    .line 341
    invoke-virtual {v3}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v7

    iget-object v9, p0, Lmobisocial/omlib/service/OmlibService$9;->this$0:Lmobisocial/omlib/service/OmlibService;

    # getter for: Lmobisocial/omlib/service/OmlibService;->mClosestClusterListener:Lmobisocial/longdan/net/WsRpcConnection$OnClosestClusterListener;
    invoke-static {v9}, Lmobisocial/omlib/service/OmlibService;->access$400(Lmobisocial/omlib/service/OmlibService;)Lmobisocial/longdan/net/WsRpcConnection$OnClosestClusterListener;

    move-result-object v9

    invoke-virtual {v7, v9}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->addClosestClusterListener(Lmobisocial/longdan/net/WsRpcConnection$OnClosestClusterListener;)V

    .line 343
    :cond_7b
    if-eqz v6, :cond_80

    .line 344
    invoke-virtual {v3}, Lmobisocial/omlib/client/LongdanClient;->startDataSync()V

    .line 346
    :cond_80
    iget-object v9, p0, Lmobisocial/omlib/service/OmlibService$9;->this$0:Lmobisocial/omlib/service/OmlibService;

    monitor-enter v9
    :try_end_83
    .catchall {:try_start_33 .. :try_end_83} :catchall_af

    .line 347
    :try_start_83
    iget-object v7, p0, Lmobisocial/omlib/service/OmlibService$9;->this$0:Lmobisocial/omlib/service/OmlibService;

    # getter for: Lmobisocial/omlib/service/OmlibService;->mSocketInterest:I
    invoke-static {v7}, Lmobisocial/omlib/service/OmlibService;->access$600(Lmobisocial/omlib/service/OmlibService;)I

    move-result v2

    .line 348
    .local v2, "interest":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8a
    if-ge v1, v2, :cond_a2

    .line 349
    sget-object v7, Lmobisocial/omlib/client/LongdanClient$ConnectionType;->Msg:Lmobisocial/omlib/client/LongdanClient$ConnectionType;

    invoke-virtual {v3, v7}, Lmobisocial/omlib/client/LongdanClient;->incrementInterestForConnection(Lmobisocial/omlib/client/LongdanClient$ConnectionType;)V
    :try_end_91
    .catchall {:try_start_83 .. :try_end_91} :catchall_ac

    .line 348
    add-int/lit8 v1, v1, 0x1

    goto :goto_8a

    .line 323
    .end local v1    # "i":I
    .end local v2    # "interest":I
    .end local v3    # "newClient":Lmobisocial/omlib/client/LongdanClient;
    .end local v5    # "req":Lmobisocial/longdan/LDProtocols$LDDeleteDeviceRequest;
    :catch_94
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "OmlibService"

    const-string v8, "Logout, failed to clear device"

    invoke-static {v7, v8, v0}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 325
    new-instance v7, Lmobisocial/omlib/exception/AuthenticationException;

    invoke-direct {v7, v0}, Lmobisocial/omlib/exception/AuthenticationException;-><init>(Ljava/lang/Exception;)V

    throw v7

    .line 351
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":I
    .restart local v2    # "interest":I
    .restart local v3    # "newClient":Lmobisocial/omlib/client/LongdanClient;
    .restart local v5    # "req":Lmobisocial/longdan/LDProtocols$LDDeleteDeviceRequest;
    :cond_a2
    :try_start_a2
    monitor-exit v9
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_ac

    .line 352
    :try_start_a3
    monitor-exit v8
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_af

    .line 357
    const-string v7, "OmlibService"

    const-string v8, "Finished logging out."

    invoke-static {v7, v8}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    return-void

    .line 351
    .end local v1    # "i":I
    .end local v2    # "interest":I
    :catchall_ac
    move-exception v7

    :try_start_ad
    monitor-exit v9
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    :try_start_ae
    throw v7

    .line 352
    .end local v3    # "newClient":Lmobisocial/omlib/client/LongdanClient;
    :catchall_af
    move-exception v7

    monitor-exit v8
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_af

    :try_start_b1
    throw v7
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b2} :catch_b2

    .line 353
    :catch_b2
    move-exception v0

    .line 354
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v7, "OmlibService"

    const-string v8, "Failed to reset local user"

    invoke-static {v7, v8, v0}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 355
    new-instance v7, Lmobisocial/omlib/exception/AuthenticationException;

    invoke-direct {v7, v0}, Lmobisocial/omlib/exception/AuthenticationException;-><init>(Ljava/lang/Exception;)V

    throw v7
.end method

.method public declared-synchronized setOnAccountConnectedListener(Lmobisocial/omlib/interfaces/OnAccountConnectedListener;)V
    .registers 4
    .param p1, "listener"    # Lmobisocial/omlib/interfaces/OnAccountConnectedListener;

    .prologue
    .line 307
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$9;->mAccountConnectedListener:Lmobisocial/omlib/interfaces/OnAccountConnectedListener;

    if-eqz v0, :cond_12

    .line 308
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$9;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    iget-object v1, p0, Lmobisocial/omlib/service/OmlibService$9;->mAccountConnectedListener:Lmobisocial/omlib/interfaces/OnAccountConnectedListener;

    invoke-virtual {v0, v1}, Lmobisocial/omlib/client/ClientAuthUtils;->removeAccountConnectedListener(Lmobisocial/omlib/interfaces/OnAccountConnectedListener;)V

    .line 309
    :cond_12
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$9;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    invoke-virtual {v0, p1}, Lmobisocial/omlib/client/ClientAuthUtils;->addAccountConnectedListener(Lmobisocial/omlib/interfaces/OnAccountConnectedListener;)V

    .line 310
    iput-object p1, p0, Lmobisocial/omlib/service/OmlibService$9;->mAccountConnectedListener:Lmobisocial/omlib/interfaces/OnAccountConnectedListener;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 311
    monitor-exit p0

    return-void

    .line 307
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unlinkIdentity(Lmobisocial/omlib/model/RawIdentity;)V
    .registers 4
    .param p1, "identity"    # Lmobisocial/omlib/model/RawIdentity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/omlib/exception/AuthenticationException;,
            Lmobisocial/omlib/exception/NetworkException;
        }
    .end annotation

    .prologue
    .line 368
    :try_start_0
    iget-object v1, p0, Lmobisocial/omlib/service/OmlibService$9;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v1}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v1

    iget-object v1, v1, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    invoke-virtual {v1, p1}, Lmobisocial/omlib/client/ClientAuthUtils;->unlinkIdentity(Lmobisocial/omlib/model/RawIdentity;)V
    :try_end_b
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_0 .. :try_end_b} :catch_c

    .line 374
    return-void

    .line 369
    :catch_c
    move-exception v0

    .line 370
    .local v0, "e":Lmobisocial/longdan/exception/LongdanException;
    invoke-virtual {v0}, Lmobisocial/longdan/exception/LongdanException;->isNetworkError()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 371
    new-instance v1, Lmobisocial/omlib/exception/NetworkException;

    invoke-direct {v1, v0}, Lmobisocial/omlib/exception/NetworkException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 372
    :cond_19
    new-instance v1, Lmobisocial/omlib/exception/AuthenticationException;

    invoke-direct {v1, v0}, Lmobisocial/omlib/exception/AuthenticationException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
