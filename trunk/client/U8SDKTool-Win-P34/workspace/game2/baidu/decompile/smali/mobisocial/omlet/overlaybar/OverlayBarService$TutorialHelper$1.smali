.class Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$1;
.super Ljava/lang/Object;
.source "OverlayBarService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->addTutorial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;)V
    .registers 2
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    .prologue
    .line 1238
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$1;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1242
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$1;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget v0, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->mTutorial_page:I

    if-nez v0, :cond_c

    .line 1243
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$1;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    const/4 v1, 0x1

    iput v1, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->mTutorial_page:I

    .line 1251
    :cond_b
    :goto_b
    return-void

    .line 1246
    :cond_c
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$1;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    const/4 v1, -0x1

    iput v1, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->mTutorial_page:I

    .line 1247
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$1;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->translationAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_b

    .line 1248
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$1;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->translationAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_b
.end method
