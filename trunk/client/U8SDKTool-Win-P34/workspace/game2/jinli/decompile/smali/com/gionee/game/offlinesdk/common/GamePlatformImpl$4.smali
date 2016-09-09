.class Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$4;
.super Ljava/lang/Object;
.source "GamePlatformImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->showPayMethodDialog(Landroid/app/Activity;Lcom/gionee/game/offlinesdk/OrderInfo;Lcom/gionee/game/offlinesdk/PayCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dialog:Lcom/gionee/game/offlinesdk/upgrade/PayDialog;

.field final synthetic val$orderInfo:Lcom/gionee/game/offlinesdk/OrderInfo;

.field final synthetic val$payCallback:Lcom/gionee/game/offlinesdk/PayCallback;


# direct methods
.method constructor <init>(Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;Lcom/gionee/game/offlinesdk/upgrade/PayDialog;Landroid/app/Activity;Lcom/gionee/game/offlinesdk/OrderInfo;Lcom/gionee/game/offlinesdk/PayCallback;)V
    .registers 6

    .prologue
    .line 106
    iput-object p1, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$4;->this$0:Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;

    iput-object p2, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$4;->val$dialog:Lcom/gionee/game/offlinesdk/upgrade/PayDialog;

    iput-object p3, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$4;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$4;->val$orderInfo:Lcom/gionee/game/offlinesdk/OrderInfo;

    iput-object p5, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$4;->val$payCallback:Lcom/gionee/game/offlinesdk/PayCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$4;->val$dialog:Lcom/gionee/game/offlinesdk/upgrade/PayDialog;

    invoke-virtual {v0}, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->dismiss()V

    .line 110
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$4;->this$0:Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;

    iget-object v1, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$4;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$4;->val$orderInfo:Lcom/gionee/game/offlinesdk/OrderInfo;

    iget-object v3, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$4;->val$payCallback:Lcom/gionee/game/offlinesdk/PayCallback;

    # invokes: Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->showCancelPayDialog(Landroid/app/Activity;Lcom/gionee/game/offlinesdk/OrderInfo;Lcom/gionee/game/offlinesdk/PayCallback;)V
    invoke-static {v0, v1, v2, v3}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->access$100(Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;Landroid/app/Activity;Lcom/gionee/game/offlinesdk/OrderInfo;Lcom/gionee/game/offlinesdk/PayCallback;)V

    .line 111
    return-void
.end method
