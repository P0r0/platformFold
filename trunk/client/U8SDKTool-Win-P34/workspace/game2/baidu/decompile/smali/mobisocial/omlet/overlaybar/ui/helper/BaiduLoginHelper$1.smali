.class Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$1;
.super Ljava/lang/Object;
.source "BaiduLoginHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->finishActivityAfterDismissProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;

    .prologue
    .line 102
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$1;->this$0:Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 106
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$1;->this$0:Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->activity:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 107
    return-void
.end method
