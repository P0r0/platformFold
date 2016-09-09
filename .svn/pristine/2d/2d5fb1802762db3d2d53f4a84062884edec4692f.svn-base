.class public Lcom/gionee/game/offlinesdk/upgrade/DialogUtils;
.super Ljava/lang/Object;
.source "DialogUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showInstallTipDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Lcom/gionee/game/offlinesdk/upgrade/GameDialog;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "installListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;

    invoke-direct {v0, p0}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .local v0, "dialog":Lcom/gionee/game/offlinesdk/upgrade/GameDialog;
    const-string v1, "\u5b89\u88c5\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 13
    const-string v1, "\u60a8\u5c1a\u672a\u5b89\u88c5\u5b89\u5168\u652f\u4ed8\u63d2\u4ef6\uff0c\u5b58\u5728\u5b89\u5168\u98ce\u9669\u3002"

    invoke-virtual {v0, v1}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 14
    const-string v1, "\u7acb\u5373\u5b89\u88c5"

    invoke-virtual {v0, v1, p1}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 15
    invoke-virtual {v0, v2}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->setCancelable(Z)V

    .line 16
    invoke-virtual {v0, v2}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->setCanceledOnTouchOutside(Z)V

    .line 17
    invoke-virtual {v0}, Lcom/gionee/game/offlinesdk/upgrade/GameDialog;->show()V

    .line 18
    return-object v0
.end method
