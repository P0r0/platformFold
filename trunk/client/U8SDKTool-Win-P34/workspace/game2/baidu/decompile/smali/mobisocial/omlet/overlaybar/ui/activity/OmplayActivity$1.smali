.class Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$1;
.super Ljava/lang/Object;
.source "OmplayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    .prologue
    .line 107
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$1;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 111
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$1;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->dismissActivity()V

    .line 112
    return-void
.end method
