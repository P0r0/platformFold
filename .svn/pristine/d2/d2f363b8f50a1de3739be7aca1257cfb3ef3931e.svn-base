.class Lcom/gionee/gsp/service/account/AccountImpl$1;
.super Ljava/lang/Object;
.source "AccountImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/service/account/AccountImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gionee/gsp/service/account/AccountImpl;


# direct methods
.method constructor <init>(Lcom/gionee/gsp/service/account/AccountImpl;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/service/account/AccountImpl$1;->this$0:Lcom/gionee/gsp/service/account/AccountImpl;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/gionee/gsp/service/account/AccountImpl$1;->this$0:Lcom/gionee/gsp/service/account/AccountImpl;

    # getter for: Lcom/gionee/gsp/service/account/AccountImpl;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/gionee/gsp/service/account/AccountImpl;->access$0(Lcom/gionee/gsp/service/account/AccountImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 67
    :try_start_7
    const-string v0, "---\u8d26\u53f7\u7ed1\u5b9a\u6210\u529f onServiceConnected"

    invoke-static {v0}, Lcom/gionee/gsp/util/GnLogUtil;->e(Ljava/lang/String;)V

    .line 68
    invoke-static {p2}, Lcom/gionee/account/aidl/GSPAccountInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gionee/account/aidl/GSPAccountInterface;

    move-result-object v0

    sput-object v0, Lcom/gionee/gsp/service/account/AccountImpl;->sGSPAccountInterface:Lcom/gionee/account/aidl/GSPAccountInterface;

    .line 69
    iget-object v0, p0, Lcom/gionee/gsp/service/account/AccountImpl$1;->this$0:Lcom/gionee/gsp/service/account/AccountImpl;

    # getter for: Lcom/gionee/gsp/service/account/AccountImpl;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/gionee/gsp/service/account/AccountImpl;->access$0(Lcom/gionee/gsp/service/account/AccountImpl;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 66
    monitor-exit v1

    .line 71
    return-void

    .line 66
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/gionee/gsp/service/account/AccountImpl;->sGSPAccountInterface:Lcom/gionee/account/aidl/GSPAccountInterface;

    .line 76
    const-string v0, "---\u8d26\u53f7\u89e3\u9664\u7ed1\u5b9a onServiceDisconnected"

    invoke-static {v0}, Lcom/gionee/gsp/util/GnLogUtil;->e(Ljava/lang/String;)V

    .line 77
    return-void
.end method
