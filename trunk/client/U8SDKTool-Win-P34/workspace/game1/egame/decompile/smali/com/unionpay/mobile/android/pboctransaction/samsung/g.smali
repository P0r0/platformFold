.class final Lcom/unionpay/mobile/android/pboctransaction/samsung/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 12

    const/4 v8, 0x0

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_14e

    :cond_7
    :goto_7
    return v8

    :sswitch_8
    const-string v0, "uppay"

    const-string v2, "init success"

    invoke-static {v0, v2}, Lcom/unionpay/mobile/android/utils/j;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->a(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;Z)V

    goto :goto_7

    :sswitch_15
    const-string v0, "uppay"

    const-string v2, "list success"

    invoke-static {v0, v2}, Lcom/unionpay/mobile/android/utils/j;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->a(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, [Lcom/unionpay/tsmservice/data/SeAppListItem;

    if-eqz v6, :cond_14a

    array-length v0, v6

    if-lez v0, :cond_14a

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v7, v8

    :goto_39
    array-length v0, v6

    if-ge v7, v0, :cond_79

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    aget-object v0, v6, v7

    invoke-virtual {v0}, Lcom/unionpay/tsmservice/data/SeAppListItem;->getAppDetail()Lcom/unionpay/tsmservice/data/AppDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/tsmservice/data/AppDetail;->getAppID()Lcom/unionpay/tsmservice/AppID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/tsmservice/AppID;->getAppAid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_75

    new-instance v0, Lcom/unionpay/mobile/android/model/a;

    aget-object v2, v6, v7

    invoke-virtual {v2}, Lcom/unionpay/tsmservice/data/SeAppListItem;->getAppDetail()Lcom/unionpay/tsmservice/data/AppDetail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unionpay/tsmservice/data/AppDetail;->getAppID()Lcom/unionpay/tsmservice/AppID;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unionpay/tsmservice/AppID;->getAppAid()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    aget-object v4, v6, v7

    invoke-virtual {v4}, Lcom/unionpay/tsmservice/data/SeAppListItem;->getVirtualCardInfo()Lcom/unionpay/tsmservice/data/VirtualCardInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/unionpay/tsmservice/data/VirtualCardInfo;->getCardNo()Ljava/lang/String;

    move-result-object v4

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/unionpay/mobile/android/model/a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_75
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_39

    :cond_79
    move-object v0, v9

    :goto_7a
    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    invoke-static {v1}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->b(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    invoke-static {v1}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->a(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_7

    :sswitch_91
    const-string v0, "uppay"

    const-string v1, "channel success"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    const-string v2, "channel"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->a(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    const-string v2, "apdu"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->b(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->c(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)Z

    goto/16 :goto_7

    :sswitch_b9
    const-string v0, "uppay"

    const-string v1, "apdu success version 3.3.1"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->b(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->c(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_7

    :sswitch_d5
    const-string v0, "uppay"

    const-string v1, "close channel success"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->d(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)Z

    goto/16 :goto_7

    :sswitch_e3
    const-string v0, "uppay"

    const-string v1, "msg error"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    invoke-static {v2, v1, v0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->a(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;ILjava/lang/String;)V

    goto/16 :goto_7

    :sswitch_f7
    const-string v0, "uppay-spay"

    const-string v2, "get spay list call back"

    invoke-static {v0, v2}, Lcom/unionpay/mobile/android/utils/j;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/unionpay/tsmservice/data/VirtualCardInfo;

    new-instance v2, Lcom/unionpay/mobile/android/model/a;

    const/16 v3, 0x20

    invoke-virtual {v0}, Lcom/unionpay/tsmservice/data/VirtualCardInfo;->getAppID()Lcom/unionpay/tsmservice/AppID;

    move-result-object v4

    invoke-virtual {v4}, Lcom/unionpay/tsmservice/AppID;->getAppAid()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v0}, Lcom/unionpay/tsmservice/data/VirtualCardInfo;->getCardNo()Ljava/lang/String;

    move-result-object v6

    move v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/unionpay/mobile/android/model/a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->a(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    invoke-static {v1}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->a(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_7

    :sswitch_12f
    const-string v0, "uppay-spay"

    const-string v1, "send apdu time out"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->e(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)Z

    goto/16 :goto_7

    :sswitch_13d
    const-string v0, "uppay-spay"

    const-string v2, "check spay support"

    invoke-static {v0, v2}, Lcom/unionpay/mobile/android/utils/j;->c(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v1, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->f:Z

    sput-boolean v1, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->e:Z

    goto/16 :goto_7

    :cond_14a
    move-object v0, v2

    goto/16 :goto_7a

    nop

    :sswitch_data_14e
    .sparse-switch
        0x1 -> :sswitch_e3
        0x3 -> :sswitch_12f
        0x3e8 -> :sswitch_8
        0x3f3 -> :sswitch_91
        0x3f4 -> :sswitch_b9
        0x3f5 -> :sswitch_d5
        0x3f6 -> :sswitch_15
        0x3f7 -> :sswitch_f7
        0x3f8 -> :sswitch_13d
    .end sparse-switch
.end method
