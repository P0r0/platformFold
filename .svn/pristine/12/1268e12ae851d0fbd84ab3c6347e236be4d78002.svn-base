.class final Lcom/bbk/payment/alipay/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Lcom/bbk/payment/alipay/AliSecurityPayer;


# direct methods
.method constructor <init>(Lcom/bbk/payment/alipay/AliSecurityPayer;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/alipay/a;->a:Lcom/bbk/payment/alipay/AliSecurityPayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    iget-object v0, p0, Lcom/bbk/payment/alipay/a;->a:Lcom/bbk/payment/alipay/AliSecurityPayer;

    iget-object v1, v0, Lcom/bbk/payment/alipay/AliSecurityPayer;->b:Ljava/lang/Integer;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/bbk/payment/alipay/a;->a:Lcom/bbk/payment/alipay/AliSecurityPayer;

    invoke-static {p2}, Lcom/alipay/android/app/IAlixPay$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alipay/android/app/IAlixPay;

    move-result-object v2

    iput-object v2, v0, Lcom/bbk/payment/alipay/AliSecurityPayer;->c:Lcom/alipay/android/app/IAlixPay;

    iget-object v0, p0, Lcom/bbk/payment/alipay/a;->a:Lcom/bbk/payment/alipay/AliSecurityPayer;

    iget-object v0, v0, Lcom/bbk/payment/alipay/AliSecurityPayer;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/bbk/payment/alipay/a;->a:Lcom/bbk/payment/alipay/AliSecurityPayer;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/bbk/payment/alipay/AliSecurityPayer;->c:Lcom/alipay/android/app/IAlixPay;

    return-void
.end method
