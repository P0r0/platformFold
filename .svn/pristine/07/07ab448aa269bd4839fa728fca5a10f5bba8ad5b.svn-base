.class Lcom/youju/statistics/c/o;
.super Landroid/os/Handler;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/youju/statistics/c/r;


# direct methods
.method public constructor <init>(Lcom/youju/statistics/c/r;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/youju/statistics/c/o;->a:Lcom/youju/statistics/c/r;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    invoke-static {p1}, Lcom/youju/statistics/a/n;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    :try_start_7
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_28

    goto :goto_6

    :pswitch_d
    iget-object v0, p0, Lcom/youju/statistics/c/o;->a:Lcom/youju/statistics/c/r;

    invoke-virtual {v0}, Lcom/youju/statistics/c/r;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "YouJuManager"

    const-string v1, "handle message UPLOAD_WHEN_EVENT_TIMEOUT "

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/youju/statistics/c/o;->a:Lcom/youju/statistics/c/r;

    invoke-virtual {v0}, Lcom/youju/statistics/c/r;->g()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_21} :catch_22

    goto :goto_6

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    nop

    :pswitch_data_28
    .packed-switch 0x257
        :pswitch_d
    .end packed-switch
.end method
