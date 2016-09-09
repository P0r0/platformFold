.class Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$12;
.super Ljava/lang/Object;
.source "OmMediaController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->initViews(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    .prologue
    .line 298
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$12;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$12;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 302
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$12;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$12;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_ShareDialogLinkText:Landroid/widget/EditText;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$1900(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->CopyShareLink(Landroid/content/Context;Ljava/lang/String;)V

    .line 303
    return-void
.end method
