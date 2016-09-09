.class Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog$1;
.super Ljava/lang/Object;
.source "WaittingDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;


# direct methods
.method constructor <init>(Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;)V
    .registers 2

    .prologue
    .line 18
    iput-object p1, p0, Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog$1;->this$0:Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog$1;->this$0:Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;

    # getter for: Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;->mWaittingDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;->access$000(Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 22
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog$1;->this$0:Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;

    # getter for: Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;->mWaittingDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;->access$000(Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 24
    :cond_11
    return-void
.end method
