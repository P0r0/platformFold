.class Lcom/gionee/pay/util/GNPayUtil$1;
.super Ljava/lang/Object;
.source "GNPayUtil.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gionee/pay/util/GNPayUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gionee/pay/util/GNPayUtil;


# direct methods
.method constructor <init>(Lcom/gionee/pay/util/GNPayUtil;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/pay/util/GNPayUtil$1;->this$0:Lcom/gionee/pay/util/GNPayUtil;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/gionee/pay/util/GNPayUtil$1;->this$0:Lcom/gionee/pay/util/GNPayUtil;

    # getter for: Lcom/gionee/pay/util/GNPayUtil;->lock:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/gionee/pay/util/GNPayUtil;->access$0(Lcom/gionee/pay/util/GNPayUtil;)Ljava/lang/Integer;

    move-result-object v1

    monitor-enter v1

    .line 57
    :try_start_7
    iget-object v0, p0, Lcom/gionee/pay/util/GNPayUtil$1;->this$0:Lcom/gionee/pay/util/GNPayUtil;

    invoke-static {p2}, Lcom/gionee/pay/gsp/IGnPay$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gionee/pay/gsp/IGnPay;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/gionee/pay/util/GNPayUtil;->access$1(Lcom/gionee/pay/util/GNPayUtil;Lcom/gionee/pay/gsp/IGnPay;)V

    .line 58
    const-string v0, "GNPayUtil"

    const-string v2, "onServiceConnected"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/gionee/pay/util/GNPayUtil$1;->this$0:Lcom/gionee/pay/util/GNPayUtil;

    # getter for: Lcom/gionee/pay/util/GNPayUtil;->lock:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/gionee/pay/util/GNPayUtil;->access$0(Lcom/gionee/pay/util/GNPayUtil;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 56
    monitor-exit v1

    .line 61
    return-void

    .line 56
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/gionee/pay/util/GNPayUtil$1;->this$0:Lcom/gionee/pay/util/GNPayUtil;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gionee/pay/util/GNPayUtil;->access$1(Lcom/gionee/pay/util/GNPayUtil;Lcom/gionee/pay/gsp/IGnPay;)V

    .line 65
    return-void
.end method
