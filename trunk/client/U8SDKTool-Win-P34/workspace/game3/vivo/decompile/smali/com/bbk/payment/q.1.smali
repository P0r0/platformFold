.class final Lcom/bbk/payment/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/bbk/payment/DetectPayResultActivity;


# direct methods
.method constructor <init>(Lcom/bbk/payment/DetectPayResultActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbk/payment/q;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    const/4 v3, 0x0

    :goto_1
    iget-object v0, p0, Lcom/bbk/payment/q;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-static {v0}, Lcom/bbk/payment/DetectPayResultActivity;->c(Lcom/bbk/payment/DetectPayResultActivity;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/bbk/payment/q;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-static {v0}, Lcom/bbk/payment/DetectPayResultActivity;->b(Lcom/bbk/payment/DetectPayResultActivity;)I

    move-result v0

    if-gtz v0, :cond_62

    :cond_11
    const-string v0, "retry"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "runnable retry="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbk/payment/q;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-static {v2}, Lcom/bbk/payment/DetectPayResultActivity;->d(Lcom/bbk/payment/DetectPayResultActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",detectSecNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/payment/q;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-static {v2}, Lcom/bbk/payment/DetectPayResultActivity;->b(Lcom/bbk/payment/DetectPayResultActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/bbk/payment/q;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-static {v0}, Lcom/bbk/payment/DetectPayResultActivity;->d(Lcom/bbk/payment/DetectPayResultActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_61

    iget-object v0, p0, Lcom/bbk/payment/q;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-static {v0}, Lcom/bbk/payment/DetectPayResultActivity;->c(Lcom/bbk/payment/DetectPayResultActivity;)Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/bbk/payment/q;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-static {v0}, Lcom/bbk/payment/DetectPayResultActivity;->e(Lcom/bbk/payment/DetectPayResultActivity;)V

    new-instance v0, Lcom/bbk/payment/s;

    iget-object v1, p0, Lcom/bbk/payment/q;->a:Lcom/bbk/payment/DetectPayResultActivity;

    invoke-direct {v0, v1, v3}, Lcom/bbk/payment/s;-><init>(Lcom/bbk/payment/DetectPayResultActivity;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/net/URL;

    const/4 v2, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/bbk/payment/s;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_61
    return-void

    :cond_62
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v3, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/bbk/payment/q;->a:Lcom/bbk/payment/DetectPayResultActivity;

    iget-object v1, v1, Lcom/bbk/payment/DetectPayResultActivity;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-wide/16 v0, 0x3e8

    :try_start_72
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_75
    .catch Ljava/lang/InterruptedException; {:try_start_72 .. :try_end_75} :catch_76

    goto :goto_1

    :catch_76
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1
.end method
