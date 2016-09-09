.class Lcom/vivo/upgrade/UpgradeActivity$2;
.super Ljava/lang/Object;
.source "UpgradeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/upgrade/UpgradeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/upgrade/UpgradeActivity;


# direct methods
.method constructor <init>(Lcom/vivo/upgrade/UpgradeActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vivo/upgrade/UpgradeActivity$2;->this$0:Lcom/vivo/upgrade/UpgradeActivity;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 43
    invoke-static {}, Lcom/vivo/upgrade/CheckUpdateManager;->getInstance()Lcom/vivo/upgrade/CheckUpdateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/upgrade/UpgradeActivity$2;->this$0:Lcom/vivo/upgrade/UpgradeActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vivo/upgrade/CheckUpdateManager;->checkUpdate(Landroid/content/Context;Z)V

    .line 44
    return-void
.end method
