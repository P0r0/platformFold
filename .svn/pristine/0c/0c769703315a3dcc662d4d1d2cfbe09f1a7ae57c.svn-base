.class Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$5;
.super Ljava/lang/Object;
.source "GamePlatformImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->showCancelPayDialog(Landroid/app/Activity;Lcom/gionee/game/offlinesdk/OrderInfo;Lcom/gionee/game/offlinesdk/PayCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/gionee/game/offlinesdk/PayCallback;

.field final synthetic val$messageDialog:Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;

.field final synthetic val$orderInfo:Lcom/gionee/game/offlinesdk/OrderInfo;


# direct methods
.method constructor <init>(Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;Landroid/app/Activity;Lcom/gionee/game/offlinesdk/OrderInfo;Lcom/gionee/game/offlinesdk/PayCallback;)V
    .registers 6

    .prologue
    .line 121
    iput-object p1, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$5;->this$0:Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;

    iput-object p2, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$5;->val$messageDialog:Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;

    iput-object p3, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$5;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$5;->val$orderInfo:Lcom/gionee/game/offlinesdk/OrderInfo;

    iput-object p5, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$5;->val$callback:Lcom/gionee/game/offlinesdk/PayCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$5;->val$messageDialog:Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;

    invoke-virtual {v0}, Lcom/gionee/game/offlinesdk/upgrade/MessageDialog;->dismiss()V

    .line 125
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$5;->this$0:Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;

    iget-object v1, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$5;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$5;->val$orderInfo:Lcom/gionee/game/offlinesdk/OrderInfo;

    iget-object v3, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$5;->val$callback:Lcom/gionee/game/offlinesdk/PayCallback;

    # invokes: Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->checkPay(Landroid/app/Activity;Lcom/gionee/game/offlinesdk/OrderInfo;Lcom/gionee/game/offlinesdk/PayCallback;)V
    invoke-static {v0, v1, v2, v3}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->access$200(Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;Landroid/app/Activity;Lcom/gionee/game/offlinesdk/OrderInfo;Lcom/gionee/game/offlinesdk/PayCallback;)V

    .line 126
    invoke-static {}, Lcom/gionee/game/offlinesdk/statis/StatisHelper;->getInstance()Lcom/gionee/game/offlinesdk/statis/StatisHelper;

    move-result-object v0

    const-string v1, "2_\u9000\u51fa\u652f\u4ed8\u4e8c\u6b21\u786e\u8ba4\u9875\u9762"

    const-string v2, "\u70b9\u51fb\u7ee7\u7eed\u652f\u4ed8"

    invoke-virtual {v0, v1, v2}, Lcom/gionee/game/offlinesdk/statis/StatisHelper;->send(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method
