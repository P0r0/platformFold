.class Lcom/nearme/platform/opensdk/pay/PayTask$5;
.super Landroid/content/BroadcastReceiver;
.source "PayTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nearme/platform/opensdk/pay/PayTask;->isAlipayContractSigned(Lcom/nearme/platform/opensdk/pay/IPayTaskResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nearme/platform/opensdk/pay/PayTask;

.field private final synthetic val$taskResult:Lcom/nearme/platform/opensdk/pay/IPayTaskResult;


# direct methods
.method constructor <init>(Lcom/nearme/platform/opensdk/pay/PayTask;Lcom/nearme/platform/opensdk/pay/IPayTaskResult;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nearme/platform/opensdk/pay/PayTask$5;->this$0:Lcom/nearme/platform/opensdk/pay/PayTask;

    iput-object p2, p0, Lcom/nearme/platform/opensdk/pay/PayTask$5;->val$taskResult:Lcom/nearme/platform/opensdk/pay/IPayTaskResult;

    .line 549
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .prologue
    .line 554
    :try_start_0
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask$5;->this$0:Lcom/nearme/platform/opensdk/pay/PayTask;

    iget-object v0, v0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 555
    const-string v0, "response"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 556
    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/PayResponse;->parse(Ljava/lang/String;)Lcom/nearme/platform/opensdk/pay/PayResponse;

    move-result-object v0

    .line 557
    if-nez v0, :cond_1d

    .line 558
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask$5;->val$taskResult:Lcom/nearme/platform/opensdk/pay/IPayTaskResult;

    const/16 v1, 0x7d2

    const-string v2, "\u7ed3\u679c\u672a\u77e5"

    invoke-interface {v0, v1, v2}, Lcom/nearme/platform/opensdk/pay/IPayTaskResult;->onTaskResult(ILjava/lang/String;)V

    .line 565
    :goto_1c
    return-void

    .line 561
    :cond_1d
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask$5;->val$taskResult:Lcom/nearme/platform/opensdk/pay/IPayTaskResult;

    iget v2, v0, Lcom/nearme/platform/opensdk/pay/PayResponse;->mErrorCode:I

    iget-object v0, v0, Lcom/nearme/platform/opensdk/pay/PayResponse;->mMsg:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/nearme/platform/opensdk/pay/IPayTaskResult;->onTaskResult(ILjava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    goto :goto_1c

    .line 563
    :catch_27
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c
.end method
