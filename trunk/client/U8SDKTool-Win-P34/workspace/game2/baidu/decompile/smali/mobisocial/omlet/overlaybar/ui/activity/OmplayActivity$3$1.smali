.class Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$3$1;
.super Ljava/lang/Object;
.source "OmplayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$3;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$3;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$3;)V
    .registers 2
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$3;

    .prologue
    .line 156
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$3$1;->this$1:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$3$1;->this$1:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$3;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$3;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->finish()V

    .line 161
    return-void
.end method
