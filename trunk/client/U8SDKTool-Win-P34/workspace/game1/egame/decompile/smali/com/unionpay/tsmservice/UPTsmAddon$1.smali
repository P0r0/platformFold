.class final Lcom/unionpay/tsmservice/UPTsmAddon$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/unionpay/tsmservice/UPTsmAddon;


# direct methods
.method constructor <init>(Lcom/unionpay/tsmservice/UPTsmAddon;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/tsmservice/UPTsmAddon$1;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized handleMessage(Landroid/os/Message;)Z
    .registers 4

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_2
    iget v1, p1, Landroid/os/Message;->what:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_10

    packed-switch v1, :pswitch_data_1a

    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    :pswitch_a
    :try_start_a
    iget-object v1, p0, Lcom/unionpay/tsmservice/UPTsmAddon$1;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    invoke-static {}, Lcom/unionpay/tsmservice/UPTsmAddon;->a()V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_10

    goto :goto_8

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_13
    :try_start_13
    iget-object v1, p0, Lcom/unionpay/tsmservice/UPTsmAddon$1;->a:Lcom/unionpay/tsmservice/UPTsmAddon;

    invoke-static {}, Lcom/unionpay/tsmservice/UPTsmAddon;->b()V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_10

    goto :goto_8

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_a
        :pswitch_13
    .end packed-switch
.end method
