.class Lcom/u8/sdk/test/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/test/MainActivity;->pay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/test/MainActivity;


# direct methods
.method constructor <init>(Lcom/u8/sdk/test/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/test/MainActivity$9;->this$0:Lcom/u8/sdk/test/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x1

    new-instance v2, Lcom/u8/sdk/PayParams;

    invoke-direct {v2}, Lcom/u8/sdk/PayParams;-><init>()V

    invoke-virtual {v2, v6}, Lcom/u8/sdk/PayParams;->setBuyNum(I)V

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setCoinNum(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setExtension(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lcom/u8/sdk/PayParams;->setPrice(I)V

    const-string v3, "1"

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setProductId(Ljava/lang/String;)V

    const-string v3, "\u5143\u5b9d"

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setProductName(Ljava/lang/String;)V

    const-string v3, "\u8d2d\u4e70100\u5143\u5b9d"

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setProductDesc(Ljava/lang/String;)V

    const-string v3, "1"

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setRoleId(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lcom/u8/sdk/PayParams;->setRoleLevel(I)V

    const-string v3, "\u6d4b\u8bd5\u89d2\u8272\u540d"

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setRoleName(Ljava/lang/String;)V

    const-string v3, "10"

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setServerId(Ljava/lang/String;)V

    const-string v3, "\u6d4b\u8bd5"

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setServerName(Ljava/lang/String;)V

    const-string v3, "vip1"

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setVip(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/u8/sdk/test/MainActivity$9;->this$0:Lcom/u8/sdk/test/MainActivity;

    const-string v4, "U8_ORDER_URL"

    invoke-static {v3, v4}, Lcom/u8/sdk/SDKTools;->getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "U8SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "the order url is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/u8/sdk/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/u8/sdk/test/MainActivity$OrderTask;

    iget-object v3, p0, Lcom/u8/sdk/test/MainActivity$9;->this$0:Lcom/u8/sdk/test/MainActivity;

    invoke-direct {v0, v3, v1}, Lcom/u8/sdk/test/MainActivity$OrderTask;-><init>(Lcom/u8/sdk/test/MainActivity;Ljava/lang/String;)V

    new-array v3, v6, [Lcom/u8/sdk/PayParams;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v3}, Lcom/u8/sdk/test/MainActivity$OrderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
