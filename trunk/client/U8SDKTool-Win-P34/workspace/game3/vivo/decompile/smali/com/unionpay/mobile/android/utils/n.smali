.class public final Lcom/unionpay/mobile/android/utils/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/mobile/android/utils/n$a;
    }
.end annotation


# instance fields
.field private a:Lcom/unionpay/mobile/android/net/d;

.field private b:Landroid/os/Handler;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/unionpay/mobile/android/utils/n$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/unionpay/mobile/android/utils/n$a;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/unionpay/mobile/android/utils/n;->a:Lcom/unionpay/mobile/android/net/d;

    iput-object v2, p0, Lcom/unionpay/mobile/android/utils/n;->b:Landroid/os/Handler;

    iput-object v2, p0, Lcom/unionpay/mobile/android/utils/n;->c:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/unionpay/mobile/android/net/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/unionpay/mobile/android/net/d;-><init>(ILjava/lang/String;[B)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/utils/n;->a:Lcom/unionpay/mobile/android/net/d;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/utils/n;->b:Landroid/os/Handler;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/utils/n;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2e

    :cond_5
    :goto_5
    const/4 v0, 0x1

    return v0

    :pswitch_7
    iget-object v0, p0, Lcom/unionpay/mobile/android/utils/n;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unionpay/mobile/android/utils/n;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2a

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    move-object v1, v0

    :goto_1c
    iget-object v0, p0, Lcom/unionpay/mobile/android/utils/n;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/utils/n$a;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2, v1}, Lcom/unionpay/mobile/android/utils/n$a;->a(I[B)V

    goto :goto_5

    :cond_2a
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1c

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method public final run()V
    .registers 5

    new-instance v0, Lcom/unionpay/mobile/android/net/c;

    iget-object v1, p0, Lcom/unionpay/mobile/android/utils/n;->a:Lcom/unionpay/mobile/android/net/d;

    invoke-direct {v0, v1}, Lcom/unionpay/mobile/android/net/c;-><init>(Lcom/unionpay/mobile/android/net/d;)V

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/net/c;->a()I

    move-result v1

    iget-object v2, p0, Lcom/unionpay/mobile/android/utils/n;->b:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x0

    iput v3, v2, Landroid/os/Message;->what:I

    iput v1, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/net/c;->b()[B

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/unionpay/mobile/android/utils/n;->b:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
