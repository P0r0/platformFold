.class public final Lcom/unionpay/mobile/android/pboctransaction/samsung/e;
.super Lcom/unionpay/tsmservice/ITsmCallback$Stub;


# instance fields
.field private a:I

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(ILandroid/os/Handler;)V
    .registers 3

    invoke-direct {p0}, Lcom/unionpay/tsmservice/ITsmCallback$Stub;-><init>()V

    iput p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;->a:I

    iput-object p2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "uppay"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "errorCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errorDesc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;->a:I

    const/16 v1, 0x3f8

    if-ne v0, v1, :cond_2a

    sput-boolean v3, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->f:Z

    sput-boolean v4, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->e:Z

    :cond_2a
    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;->b:Landroid/os/Handler;

    iget v2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;->a:I

    invoke-static {v1, v4, v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onResult(Landroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x1

    iget v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;->a:I

    sparse-switch v0, :sswitch_data_fa

    :goto_6
    return-void

    :sswitch_7
    const-class v0, Lcom/unionpay/tsmservice/result/InitResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;->b:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    :sswitch_1e
    const-class v0, Lcom/unionpay/tsmservice/result/GetSeAppListResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/result/GetSeAppListResult;

    invoke-virtual {v0}, Lcom/unionpay/tsmservice/result/GetSeAppListResult;->getSeAppList()[Lcom/unionpay/tsmservice/data/SeAppListItem;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;->b:Landroid/os/Handler;

    const/16 v3, 0x3f6

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    :sswitch_41
    const-class v0, Lcom/unionpay/tsmservice/result/OpenChannelResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/result/OpenChannelResult;

    invoke-virtual {v0}, Lcom/unionpay/tsmservice/result/OpenChannelResult;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/unionpay/tsmservice/result/OpenChannelResult;->getOutHexApdu()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "channel"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "apdu"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;->b:Landroid/os/Handler;

    const/16 v3, 0x3f3

    invoke-static {v1, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    :sswitch_77
    const-class v0, Lcom/unionpay/tsmservice/result/SendApduResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/result/SendApduResult;

    invoke-virtual {v0}, Lcom/unionpay/tsmservice/result/SendApduResult;->getOutHexApdu()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;->b:Landroid/os/Handler;

    const/16 v3, 0x3f4

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_6

    :sswitch_9b
    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;->b:Landroid/os/Handler;

    const/16 v2, 0x3f5

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_6

    :sswitch_ac
    const-class v0, Lcom/unionpay/tsmservice/result/GetCardInfoBySpayResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/tsmservice/result/GetCardInfoBySpayResult;

    invoke-virtual {v0}, Lcom/unionpay/tsmservice/result/GetCardInfoBySpayResult;->getVirtualCardInfo()Lcom/unionpay/tsmservice/data/VirtualCardInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;->b:Landroid/os/Handler;

    const/16 v3, 0x3f7

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_6

    :sswitch_d0
    const-string v0, "uppay-spay"

    const-string v1, "check spay support callback"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Lcom/unionpay/tsmservice/result/CheckSSamsungPayResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "1"

    sput-boolean v2, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->f:Z

    sput-boolean v2, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->e:Z

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;->b:Landroid/os/Handler;

    const/16 v3, 0x3f8

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_6

    :sswitch_data_fa
    .sparse-switch
        0x3e8 -> :sswitch_7
        0x3f3 -> :sswitch_41
        0x3f4 -> :sswitch_77
        0x3f5 -> :sswitch_9b
        0x3f6 -> :sswitch_1e
        0x3f7 -> :sswitch_ac
        0x3f8 -> :sswitch_d0
    .end sparse-switch
.end method
