.class Lmobisocial/omlib/service/util/ServiceBindingHelper$MyServiceConnection;
.super Ljava/lang/Object;
.source "ServiceBindingHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/service/util/ServiceBindingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/service/util/ServiceBindingHelper;


# direct methods
.method constructor <init>(Lmobisocial/omlib/service/util/ServiceBindingHelper;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlib/service/util/ServiceBindingHelper;

    .prologue
    .line 215
    .local p0, "this":Lmobisocial/omlib/service/util/ServiceBindingHelper$MyServiceConnection;, "Lmobisocial/omlib/service/util/ServiceBindingHelper<TTService;>.MyServiceConnection;"
    iput-object p1, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$MyServiceConnection;->this$0:Lmobisocial/omlib/service/util/ServiceBindingHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 219
    .local p0, "this":Lmobisocial/omlib/service/util/ServiceBindingHelper$MyServiceConnection;, "Lmobisocial/omlib/service/util/ServiceBindingHelper<TTService;>.MyServiceConnection;"
    iget-object v2, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$MyServiceConnection;->this$0:Lmobisocial/omlib/service/util/ServiceBindingHelper;

    const/4 v3, 0x1

    # setter for: Lmobisocial/omlib/service/util/ServiceBindingHelper;->mBound:Z
    invoke-static {v2, v3}, Lmobisocial/omlib/service/util/ServiceBindingHelper;->access$002(Lmobisocial/omlib/service/util/ServiceBindingHelper;Z)Z

    .line 220
    const-string v2, "SERVICE-HELPER"

    const-string v3, "service connected"

    invoke-static {v2, v3}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :try_start_d
    iget-object v2, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$MyServiceConnection;->this$0:Lmobisocial/omlib/service/util/ServiceBindingHelper;

    iget-object v3, v2, Lmobisocial/omlib/service/util/ServiceBindingHelper;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_3c

    .line 223
    :try_start_12
    iget-object v2, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$MyServiceConnection;->this$0:Lmobisocial/omlib/service/util/ServiceBindingHelper;

    iget-object v2, v2, Lmobisocial/omlib/service/util/ServiceBindingHelper;->mHandlerThread:Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceRunnerThread;

    if-eqz v2, :cond_32

    .line 224
    iget-object v2, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$MyServiceConnection;->this$0:Lmobisocial/omlib/service/util/ServiceBindingHelper;

    invoke-virtual {v2, p2}, Lmobisocial/omlib/service/util/ServiceBindingHelper;->serviceForBinder(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v1

    .line 225
    .local v1, "s":Ljava/lang/Object;, "TTService;"
    iget-object v2, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$MyServiceConnection;->this$0:Lmobisocial/omlib/service/util/ServiceBindingHelper;

    iput-object v1, v2, Lmobisocial/omlib/service/util/ServiceBindingHelper;->mService:Ljava/lang/Object;

    .line 226
    iget-object v2, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$MyServiceConnection;->this$0:Lmobisocial/omlib/service/util/ServiceBindingHelper;

    iget-object v2, v2, Lmobisocial/omlib/service/util/ServiceBindingHelper;->mHandlerThread:Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceRunnerThread;

    iget-object v2, v2, Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceRunnerThread;->handler:Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;

    invoke-virtual {v2, v1}, Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;->setService(Ljava/lang/Object;)V

    .line 227
    iget-object v2, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$MyServiceConnection;->this$0:Lmobisocial/omlib/service/util/ServiceBindingHelper;

    iget-object v2, v2, Lmobisocial/omlib/service/util/ServiceBindingHelper;->mHandlerLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 229
    .end local v1    # "s":Ljava/lang/Object;, "TTService;"
    :cond_32
    monitor-exit v3
    :try_end_33
    .catchall {:try_start_12 .. :try_end_33} :catchall_39

    .line 230
    :try_start_33
    iget-object v2, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$MyServiceConnection;->this$0:Lmobisocial/omlib/service/util/ServiceBindingHelper;

    invoke-virtual {v2, p2}, Lmobisocial/omlib/service/util/ServiceBindingHelper;->serviceConnectedCallback(Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_38} :catch_3c

    .line 234
    :goto_38
    return-void

    .line 229
    :catchall_39
    move-exception v2

    :try_start_3a
    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    :try_start_3b
    throw v2
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3c} :catch_3c

    .line 231
    :catch_3c
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SERVICE-HELPER"

    const-string v3, "Failed to bind Omlet service!"

    invoke-static {v2, v3, v0}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_38
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .local p0, "this":Lmobisocial/omlib/service/util/ServiceBindingHelper$MyServiceConnection;, "Lmobisocial/omlib/service/util/ServiceBindingHelper<TTService;>.MyServiceConnection;"
    const/4 v2, 0x0

    .line 238
    const-string v0, "SERVICE-HELPER"

    const-string v1, "service disconnected"

    invoke-static {v0, v1}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$MyServiceConnection;->this$0:Lmobisocial/omlib/service/util/ServiceBindingHelper;

    const/4 v1, 0x0

    # setter for: Lmobisocial/omlib/service/util/ServiceBindingHelper;->mBound:Z
    invoke-static {v0, v1}, Lmobisocial/omlib/service/util/ServiceBindingHelper;->access$002(Lmobisocial/omlib/service/util/ServiceBindingHelper;Z)Z

    .line 240
    iget-object v0, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$MyServiceConnection;->this$0:Lmobisocial/omlib/service/util/ServiceBindingHelper;

    iput-object v2, v0, Lmobisocial/omlib/service/util/ServiceBindingHelper;->mService:Ljava/lang/Object;

    .line 241
    iget-object v0, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$MyServiceConnection;->this$0:Lmobisocial/omlib/service/util/ServiceBindingHelper;

    iget-object v1, v0, Lmobisocial/omlib/service/util/ServiceBindingHelper;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 242
    :try_start_17
    iget-object v0, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$MyServiceConnection;->this$0:Lmobisocial/omlib/service/util/ServiceBindingHelper;

    iget-object v0, v0, Lmobisocial/omlib/service/util/ServiceBindingHelper;->mHandlerThread:Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceRunnerThread;

    if-eqz v0, :cond_27

    .line 243
    iget-object v0, p0, Lmobisocial/omlib/service/util/ServiceBindingHelper$MyServiceConnection;->this$0:Lmobisocial/omlib/service/util/ServiceBindingHelper;

    iget-object v0, v0, Lmobisocial/omlib/service/util/ServiceBindingHelper;->mHandlerThread:Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceRunnerThread;

    iget-object v0, v0, Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceRunnerThread;->handler:Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lmobisocial/omlib/service/util/ServiceBindingHelper$ServiceHandler;->setService(Ljava/lang/Object;)V

    .line 245
    :cond_27
    monitor-exit v1

    .line 246
    return-void

    .line 245
    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_17 .. :try_end_2b} :catchall_29

    throw v0
.end method
