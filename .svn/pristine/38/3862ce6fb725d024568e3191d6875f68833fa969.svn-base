.class final Lcom/alipay/sdk/util/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/util/h;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/util/h;)V
    .registers 2

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alipay/sdk/util/i;->a:Lcom/alipay/sdk/util/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/sdk/util/i;->a:Lcom/alipay/sdk/util/h;

    invoke-static {v0}, Lcom/alipay/sdk/util/h;->a(Lcom/alipay/sdk/util/h;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 65
    :try_start_7
    iget-object v0, p0, Lcom/alipay/sdk/util/i;->a:Lcom/alipay/sdk/util/h;

    .line 66
    invoke-static {p2}, Lcom/alipay/android/app/IAlixPay$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alipay/android/app/IAlixPay;

    move-result-object v2

    .line 65
    invoke-static {v0, v2}, Lcom/alipay/sdk/util/h;->a(Lcom/alipay/sdk/util/h;Lcom/alipay/android/app/IAlixPay;)Lcom/alipay/android/app/IAlixPay;

    .line 67
    iget-object v0, p0, Lcom/alipay/sdk/util/i;->a:Lcom/alipay/sdk/util/h;

    invoke-static {v0}, Lcom/alipay/sdk/util/h;->a(Lcom/alipay/sdk/util/h;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 68
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/sdk/util/i;->a:Lcom/alipay/sdk/util/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/h;->a(Lcom/alipay/sdk/util/h;Lcom/alipay/android/app/IAlixPay;)Lcom/alipay/android/app/IAlixPay;

    .line 59
    return-void
.end method
