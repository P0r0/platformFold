.class Lcom/gionee/pay/util/GNPayUtil$2;
.super Ljava/lang/Object;
.source "GNPayUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/pay/util/GNPayUtil;->pay(Landroid/app/Activity;Ljava/lang/String;Lcom/gionee/pay/gsp/PayCallback;ILandroid/graphics/Bitmap;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gionee/pay/util/GNPayUtil;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$bundlePara:Landroid/os/Bundle;

.field private final synthetic val$orderInfo:Ljava/lang/String;

.field private final synthetic val$payCallBack:Lcom/gionee/pay/gsp/PayCallback;

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/gionee/pay/util/GNPayUtil;ILjava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Lcom/gionee/pay/gsp/PayCallback;)V
    .registers 7

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/pay/util/GNPayUtil$2;->this$0:Lcom/gionee/pay/util/GNPayUtil;

    iput p2, p0, Lcom/gionee/pay/util/GNPayUtil$2;->val$type:I

    iput-object p3, p0, Lcom/gionee/pay/util/GNPayUtil$2;->val$orderInfo:Ljava/lang/String;

    iput-object p4, p0, Lcom/gionee/pay/util/GNPayUtil$2;->val$bundlePara:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/gionee/pay/util/GNPayUtil$2;->val$activity:Landroid/app/Activity;

    iput-object p6, p0, Lcom/gionee/pay/util/GNPayUtil$2;->val$payCallBack:Lcom/gionee/pay/gsp/PayCallback;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/gionee/pay/util/GNPayUtil$2;->this$0:Lcom/gionee/pay/util/GNPayUtil;

    # getter for: Lcom/gionee/pay/util/GNPayUtil;->lock:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/gionee/pay/util/GNPayUtil;->access$0(Lcom/gionee/pay/util/GNPayUtil;)Ljava/lang/Integer;

    move-result-object v1

    monitor-enter v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_36

    .line 95
    :try_start_7
    iget-object v0, p0, Lcom/gionee/pay/util/GNPayUtil$2;->this$0:Lcom/gionee/pay/util/GNPayUtil;

    # getter for: Lcom/gionee/pay/util/GNPayUtil;->gnPay:Lcom/gionee/pay/gsp/IGnPay;
    invoke-static {v0}, Lcom/gionee/pay/util/GNPayUtil;->access$2(Lcom/gionee/pay/util/GNPayUtil;)Lcom/gionee/pay/gsp/IGnPay;

    move-result-object v0

    if-nez v0, :cond_18

    .line 96
    iget-object v0, p0, Lcom/gionee/pay/util/GNPayUtil$2;->this$0:Lcom/gionee/pay/util/GNPayUtil;

    # getter for: Lcom/gionee/pay/util/GNPayUtil;->lock:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/gionee/pay/util/GNPayUtil;->access$0(Lcom/gionee/pay/util/GNPayUtil;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 94
    :cond_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_33

    .line 100
    :try_start_19
    iget-object v0, p0, Lcom/gionee/pay/util/GNPayUtil$2;->this$0:Lcom/gionee/pay/util/GNPayUtil;

    # getter for: Lcom/gionee/pay/util/GNPayUtil;->gnPay:Lcom/gionee/pay/gsp/IGnPay;
    invoke-static {v0}, Lcom/gionee/pay/util/GNPayUtil;->access$2(Lcom/gionee/pay/util/GNPayUtil;)Lcom/gionee/pay/gsp/IGnPay;

    move-result-object v7

    new-instance v0, Lcom/gionee/pay/util/GNPayUtil$2$1;

    iget-object v2, p0, Lcom/gionee/pay/util/GNPayUtil$2;->val$orderInfo:Ljava/lang/String;

    iget-object v3, p0, Lcom/gionee/pay/util/GNPayUtil$2;->val$bundlePara:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/gionee/pay/util/GNPayUtil$2;->val$activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/gionee/pay/util/GNPayUtil$2;->val$payCallBack:Lcom/gionee/pay/gsp/PayCallback;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/gionee/pay/util/GNPayUtil$2$1;-><init>(Lcom/gionee/pay/util/GNPayUtil$2;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Lcom/gionee/pay/gsp/PayCallback;)V

    .line 134
    iget v1, p0, Lcom/gionee/pay/util/GNPayUtil$2;->val$type:I

    .line 100
    invoke-interface {v7, v0, v1}, Lcom/gionee/pay/gsp/IGnPay;->registerCallback(Lcom/gionee/pay/gsp/IGnPayCallback;I)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_32} :catch_36

    .line 140
    :goto_32
    return-void

    .line 94
    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    :try_start_35
    throw v0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_36} :catch_36

    .line 136
    :catch_36
    move-exception v6

    .line 137
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "GNPayUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception------"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_32
.end method
