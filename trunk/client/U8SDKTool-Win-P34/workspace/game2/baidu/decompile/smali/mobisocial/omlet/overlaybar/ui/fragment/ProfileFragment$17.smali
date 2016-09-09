.class Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$17;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->uiSetThumbnailDefault()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    .prologue
    .line 769
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$17;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$17;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 773
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$17;->val$context:Landroid/content/Context;

    if-nez v1, :cond_5

    .line 778
    :goto_4
    return-void

    .line 776
    :cond_5
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$17;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$17;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$400(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "omp_btn_loadingheadpic_onpost"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 777
    .local v0, "bm":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$17;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ProfileImageView:Landroid/widget/ImageView;

    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4
.end method
