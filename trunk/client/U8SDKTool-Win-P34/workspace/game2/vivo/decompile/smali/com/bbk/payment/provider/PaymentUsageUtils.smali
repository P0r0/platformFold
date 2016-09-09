.class public Lcom/bbk/payment/provider/PaymentUsageUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeUsageData(Landroid/content/Context;)V
    .registers 5

    :try_start_0
    new-instance v0, Lcom/bbk/payment/provider/DBAdapter$DBOpenHelper;

    invoke-direct {v0, p0}, Lcom/bbk/payment/provider/DBAdapter$DBOpenHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bbk/payment/provider/DBAdapter$DBOpenHelper;->close()V

    const-string v0, "paymentUsage"

    const-string v1, "close usage databae done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    const-string v1, "paymentUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "close usage database fail,error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public static deleteUsageData(Landroid/content/Context;J)I
    .registers 8

    const-string v0, "paymentUsage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OrderInfo.vcoineventpoint="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/bbk/payment/model/OrderInfo;->vcoineventpoint:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sget-boolean v1, Lcom/bbk/payment/model/OrderInfo;->vcoineventpoint:Z

    if-eqz v1, :cond_38

    :try_start_1b
    new-instance v1, Lcom/bbk/payment/provider/DBAdapter$DBOpenHelper;

    invoke-direct {v1, p0}, Lcom/bbk/payment/provider/DBAdapter$DBOpenHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1, p2}, Lcom/bbk/payment/provider/DBAdapter$DBOpenHelper;->delete(J)I

    move-result v0

    const-string v1, "paymentUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delete usage data done,row="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_38} :catch_39

    :cond_38
    :goto_38
    return v0

    :catch_39
    move-exception v1

    const-string v2, "paymentUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "delete usage data fail,error="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38
.end method

.method public static getPayTypeByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bbk_alipay"

    invoke-static {p0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "1"

    :goto_16
    return-object v0

    :cond_17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bbk_uppay"

    invoke-static {p0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "2"

    goto :goto_16

    :cond_2e
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bbk_tencent"

    invoke-static {p0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    const-string v0, "3"

    goto :goto_16

    :cond_45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bbk_card"

    invoke-static {p0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const-string v0, "4"

    goto :goto_16

    :cond_5c
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bbk_game_card"

    invoke-static {p0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    const-string v0, "5"

    goto :goto_16

    :cond_73
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bbk_weixin"

    invoke-static {p0, v1}, Lcom/bbk/payment/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const-string v0, "7"

    goto :goto_16

    :cond_8a
    const-string v0, "0"

    goto :goto_16
.end method

.method public static saveUsageData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const-string v0, "paymentUsage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OrderInfo.vcoineventpoint="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/bbk/payment/model/OrderInfo;->vcoineventpoint:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    sget-boolean v1, Lcom/bbk/payment/model/OrderInfo;->vcoineventpoint:Z

    if-eqz v1, :cond_4a

    :try_start_1f
    new-instance v1, Lcom/bbk/payment/provider/DBAdapter$DBOpenHelper;

    invoke-direct {v1, p0}, Lcom/bbk/payment/provider/DBAdapter$DBOpenHelper;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getmainOpenId()Ljava/lang/String;

    move-result-object v7

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/bbk/payment/provider/DBAdapter$DBOpenHelper;->add(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "paymentUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "save usage data done,event id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_4a} :catch_4b

    :cond_4a
    :goto_4a
    return-void

    :catch_4b
    move-exception v0

    const-string v1, "paymentUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "save usage data fail,error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a
.end method

.method public static selectUsageData(Landroid/content/Context;J)Landroid/database/Cursor;
    .registers 8

    const-string v0, "paymentUsage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OrderInfo.vcoineventpoint="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/bbk/payment/model/OrderInfo;->vcoineventpoint:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sget-boolean v1, Lcom/bbk/payment/model/OrderInfo;->vcoineventpoint:Z

    if-eqz v1, :cond_3c

    :try_start_1b
    new-instance v1, Lcom/bbk/payment/provider/DBAdapter$DBOpenHelper;

    invoke-direct {v1, p0}, Lcom/bbk/payment/provider/DBAdapter$DBOpenHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1, p2}, Lcom/bbk/payment/provider/DBAdapter$DBOpenHelper;->select(J)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "paymentUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "select usage data done,row="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_3c} :catch_3d

    :cond_3c
    :goto_3c
    return-object v0

    :catch_3d
    move-exception v1

    const-string v2, "paymentUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "select usage data fail,error="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c
.end method
