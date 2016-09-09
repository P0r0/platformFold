.class Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$3;
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

.field final synthetic val$dialog:Lcom/gionee/game/offlinesdk/upgrade/PayDialog;

.field final synthetic val$orderInfo:Lcom/gionee/game/offlinesdk/OrderInfo;


# direct methods
.method constructor <init>(Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;Lcom/gionee/game/offlinesdk/upgrade/PayDialog;Lcom/gionee/game/offlinesdk/OrderInfo;)V
    .registers 4

    .prologue
    .line 97
    iput-object p1, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$3;->this$0:Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;

    iput-object p2, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$3;->val$dialog:Lcom/gionee/game/offlinesdk/upgrade/PayDialog;

    iput-object p3, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$3;->val$orderInfo:Lcom/gionee/game/offlinesdk/OrderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$3;->val$dialog:Lcom/gionee/game/offlinesdk/upgrade/PayDialog;

    invoke-virtual {v0}, Lcom/gionee/game/offlinesdk/upgrade/PayDialog;->dismiss()V

    .line 101
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$3;->val$orderInfo:Lcom/gionee/game/offlinesdk/OrderInfo;

    invoke-virtual {v0}, Lcom/gionee/game/offlinesdk/OrderInfo;->getMessagePayCallback()Lcom/gionee/game/offlinesdk/MessagePayCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/gionee/game/offlinesdk/MessagePayCallback;->onCallback()V

    .line 102
    return-void
.end method
