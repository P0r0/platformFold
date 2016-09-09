.class Lcom/gionee/pay/util/GNPayUtil$2$1;
.super Lcom/gionee/pay/gsp/IGnPayCallback$Stub;
.source "GNPayUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/pay/util/GNPayUtil$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gionee/pay/util/GNPayUtil$2;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$bundlePara:Landroid/os/Bundle;

.field private final synthetic val$orderInfo:Ljava/lang/String;

.field private final synthetic val$payCallBack:Lcom/gionee/pay/gsp/PayCallback;


# direct methods
.method constructor <init>(Lcom/gionee/pay/util/GNPayUtil$2;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Lcom/gionee/pay/gsp/PayCallback;)V
    .registers 6

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/pay/util/GNPayUtil$2$1;->this$1:Lcom/gionee/pay/util/GNPayUtil$2;

    iput-object p2, p0, Lcom/gionee/pay/util/GNPayUtil$2$1;->val$orderInfo:Ljava/lang/String;

    iput-object p3, p0, Lcom/gionee/pay/util/GNPayUtil$2$1;->val$bundlePara:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/gionee/pay/util/GNPayUtil$2$1;->val$activity:Landroid/app/Activity;

    iput-object p5, p0, Lcom/gionee/pay/util/GNPayUtil$2$1;->val$payCallBack:Lcom/gionee/pay/gsp/PayCallback;

    .line 100
    invoke-direct {p0}, Lcom/gionee/pay/gsp/IGnPayCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public payEnd(Ljava/lang/String;)V
    .registers 5
    .param p1, "stateCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 131
    const-string v0, "GNPayUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "payEnd ----stateCode----"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/gionee/pay/util/GNPayUtil$2$1;->val$payCallBack:Lcom/gionee/pay/gsp/PayCallback;

    invoke-interface {v0, p1}, Lcom/gionee/pay/gsp/PayCallback;->payEnd(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public startActivity(ILjava/lang/String;)V
    .registers 9
    .param p1, "iCallingPid"    # I
    .param p2, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 104
    const-string v3, "GNPayUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "startActivity ----iCallingPid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",orderInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/gionee/pay/util/GNPayUtil$2$1;->val$orderInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .local v2, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/gionee/pay/util/GNPayUtil$2$1;->val$bundlePara:Landroid/os/Bundle;

    .line 107
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {v0}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 108
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 111
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_3c
    :try_start_3c
    const-string v3, "GnEType"

    .line 112
    sget-object v4, Lcom/gionee/gsp/common/GnCommonConfig;->sGnEType:Lcom/gionee/gsp/GnEType;

    invoke-virtual {v4}, Lcom/gionee/gsp/GnEType;->toString()Ljava/lang/String;

    move-result-object v4

    .line 111
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v3, "a"

    sget-object v4, Lcom/gionee/gsp/common/GnCommonConfig;->sAppId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v3, "CallingPid"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 116
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_56} :catch_96

    .line 120
    :goto_56
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 121
    const v3, 0x8000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 122
    const-string v3, "order"

    iget-object v4, p0, Lcom/gionee/pay/util/GNPayUtil$2$1;->val$orderInfo:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v3, "packageName"

    iget-object v4, p0, Lcom/gionee/pay/util/GNPayUtil$2$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    iget-object v3, p0, Lcom/gionee/pay/util/GNPayUtil$2$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 125
    const-string v3, "GNPayUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "orderInfo---"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/gionee/pay/util/GNPayUtil$2$1;->val$orderInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v3, "GNPayUtil"

    const-string v4, "start activity with flag new task"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void

    .line 117
    :catch_96
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_56
.end method
