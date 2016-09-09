.class public Lcom/u8/sdk/IAPListener;
.super Ljava/lang/Object;
.source "IAPListener.java"

# interfaces
.implements Lmm/purchasesdk/OnPurchaseListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private iapHandler:Lcom/u8/sdk/IAPHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/u8/sdk/IAPHandler;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iapHandler"    # Lcom/u8/sdk/IAPHandler;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "IAPListener"

    iput-object v0, p0, Lcom/u8/sdk/IAPListener;->TAG:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/u8/sdk/IAPListener;->context:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/u8/sdk/IAPListener;->iapHandler:Lcom/u8/sdk/IAPHandler;

    .line 21
    return-void
.end method


# virtual methods
.method public onAfterApply()V
    .registers 1

    .prologue
    .line 26
    return-void
.end method

.method public onAfterDownload()V
    .registers 1

    .prologue
    .line 31
    return-void
.end method

.method public onBeforeApply()V
    .registers 1

    .prologue
    .line 36
    return-void
.end method

.method public onBeforeDownload()V
    .registers 1

    .prologue
    .line 41
    return-void
.end method

.method public onBillingFinish(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 12
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/util/HashMap;

    .prologue
    .line 54
    const-string v6, "IAPListener"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "billing finish, status code = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v4, "\u8ba2\u8d2d\u7ed3\u679c\uff1a\u8ba2\u8d2d\u6210\u529f"

    .line 56
    .local v4, "result":Ljava/lang/String;
    iget-object v6, p0, Lcom/u8/sdk/IAPListener;->iapHandler:Lcom/u8/sdk/IAPHandler;

    const/16 v7, 0x2711

    invoke-virtual {v6, v7}, Lcom/u8/sdk/IAPHandler;->obtainMessage(I)Landroid/os/Message;

    .line 58
    const/4 v1, 0x0

    .line 60
    .local v1, "orderID":Ljava/lang/String;
    const/4 v3, 0x0

    .line 62
    .local v3, "paycode":Ljava/lang/String;
    const/4 v0, 0x0

    .line 64
    .local v0, "leftday":Ljava/lang/String;
    const/4 v5, 0x0

    .line 66
    .local v5, "tradeID":Ljava/lang/String;
    const/4 v2, 0x0

    .line 67
    .local v2, "ordertype":Ljava/lang/String;
    const-string v6, "1030000"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3a

    .line 68
    const-string v6, "1020000"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3a

    .line 69
    const-string v6, "1090003"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_119

    .line 73
    :cond_3a
    if-eqz p2, :cond_113

    .line 74
    const-string v6, "LeftDay"

    invoke-virtual {p2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "leftday":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 75
    .restart local v0    # "leftday":Ljava/lang/String;
    if-eqz v0, :cond_67

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_67

    .line 76
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ",\u5269\u4f59\u65f6\u95f4 \uff1a "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 78
    :cond_67
    const-string v6, "OrderId"

    invoke-virtual {p2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "orderID":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 79
    .restart local v1    # "orderID":Ljava/lang/String;
    if-eqz v1, :cond_92

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_92

    .line 80
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ",OrderID \uff1a "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 82
    :cond_92
    const-string v6, "Paycode"

    invoke-virtual {p2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "paycode":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 83
    .restart local v3    # "paycode":Ljava/lang/String;
    if-eqz v3, :cond_bd

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_bd

    .line 84
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ",Paycode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 86
    :cond_bd
    const-string v6, "TradeID"

    invoke-virtual {p2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "tradeID":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 87
    .restart local v5    # "tradeID":Ljava/lang/String;
    if-eqz v5, :cond_e8

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_e8

    .line 88
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ",tradeID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 90
    :cond_e8
    const-string v6, "OrderType"

    invoke-virtual {p2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "ordertype":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 91
    .restart local v2    # "ordertype":Ljava/lang/String;
    if-eqz v5, :cond_113

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_113

    .line 92
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ",ORDERTYPE:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 101
    :cond_113
    :goto_113
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    return-void

    .line 99
    :cond_119
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u8ba2\u8d2d\u7ed3\u679c\uff1a"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lmm/purchasesdk/Purchase;->getReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_113
.end method

.method public onInitFinish(Ljava/lang/String;)V
    .registers 7
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 45
    const-string v2, "IAPListener"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Init finish, status code = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v2, p0, Lcom/u8/sdk/IAPListener;->iapHandler:Lcom/u8/sdk/IAPHandler;

    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Lcom/u8/sdk/IAPHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 47
    .local v0, "message":Landroid/os/Message;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u521d\u59cb\u5316\u7ed3\u679c\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lmm/purchasesdk/Purchase;->getReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "result":Ljava/lang/String;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 49
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 50
    return-void
.end method

.method public onQueryFinish(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 10
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/util/HashMap;

    .prologue
    .line 107
    const-string v4, "IAPListener"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "license finish, status code = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v4, p0, Lcom/u8/sdk/IAPListener;->iapHandler:Lcom/u8/sdk/IAPHandler;

    const/16 v5, 0x2712

    invoke-virtual {v4, v5}, Lcom/u8/sdk/IAPHandler;->obtainMessage(I)Landroid/os/Message;

    .line 109
    const-string v3, "\u67e5\u8be2\u6210\u529f,\u8be5\u5546\u54c1\u5df2\u8d2d\u4e70"

    .line 111
    .local v3, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .line 113
    .local v1, "orderID":Ljava/lang/String;
    const/4 v2, 0x0

    .line 115
    .local v2, "paycode":Ljava/lang/String;
    const/4 v0, 0x0

    .line 116
    .local v0, "leftday":Ljava/lang/String;
    const-string v4, "1050000"

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_41

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u67e5\u8be2\u7ed3\u679c\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lmm/purchasesdk/Purchase;->getReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 139
    :cond_3b
    :goto_3b
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 140
    return-void

    .line 126
    :cond_41
    const-string v4, "LeftDay"

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "leftday":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 127
    .restart local v0    # "leftday":Ljava/lang/String;
    if-eqz v0, :cond_6c

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6c

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ",\u5269\u4f59\u65f6\u95f4 \uff1a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 130
    :cond_6c
    const-string v4, "OrderId"

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "orderID":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 131
    .restart local v1    # "orderID":Ljava/lang/String;
    if-eqz v1, :cond_97

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_97

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ",OrderID \uff1a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 134
    :cond_97
    const-string v4, "Paycode"

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "paycode":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 135
    .restart local v2    # "paycode":Ljava/lang/String;
    if-eqz v2, :cond_3b

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3b

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ",Paycode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3b
.end method

.method public onUnsubscribeFinish(Ljava/lang/String;)V
    .registers 5
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u9000\u8ba2\u7ed3\u679c\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lmm/purchasesdk/Purchase;->getReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 147
    return-void
.end method
