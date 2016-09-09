.class Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$7;
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
    .line 240
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$7;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$7;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 244
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$7;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_IsLiked:Z
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$1300(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 245
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$7;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_LikeButton:Landroid/widget/ImageButton;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$1400(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Landroid/widget/ImageButton;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$7;->val$context:Landroid/content/Context;

    const-string v4, "omp_btn_player_like"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 246
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$7;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_LikeCountTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$1500(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 247
    .local v1, "count":I
    if-lez v1, :cond_2f

    .line 248
    add-int/lit8 v1, v1, -0x1

    .line 249
    :cond_2f
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$7;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_LikeCountTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$1500(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Landroid/widget/TextView;

    move-result-object v2

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    :goto_3d
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$7;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$7;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_IsLiked:Z
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$1300(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Z

    move-result v2

    if-nez v2, :cond_c4

    const/4 v2, 0x1

    :goto_48
    # setter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_IsLiked:Z
    invoke-static {v3, v2}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$1302(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;Z)Z

    .line 259
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$7;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_OmMediaControlListener:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$OmMediaControlListener;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$1700(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$OmMediaControlListener;

    move-result-object v2

    if-eqz v2, :cond_62

    .line 260
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$7;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_OmMediaControlListener:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$OmMediaControlListener;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$1700(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$OmMediaControlListener;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$7;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_IsLiked:Z
    invoke-static {v3}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$1300(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Z

    move-result v3

    invoke-interface {v2, v3}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$OmMediaControlListener;->onLikedListener(Z)V

    .line 262
    :cond_62
    return-void

    .line 251
    .end local v1    # "count":I
    :cond_63
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$7;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_LikeButton:Landroid/widget/ImageButton;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$1400(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Landroid/widget/ImageButton;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$7;->val$context:Landroid/content/Context;

    const-string v4, "omp_btn_player_like_red"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 252
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$7;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$7;->val$context:Landroid/content/Context;

    const-string v4, "omp_scale_heart"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getAnim(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 253
    .local v0, "animation":Landroid/view/animation/Animation;
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$7;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_LikeButton:Landroid/widget/ImageButton;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$1400(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 254
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$7;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$7;->val$context:Landroid/content/Context;

    # invokes: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->showHeartAnimation(Landroid/content/Context;)V
    invoke-static {v2, v3}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$1600(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;Landroid/content/Context;)V

    .line 255
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$7;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_LikeCountTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$1500(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 256
    .restart local v1    # "count":I
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$7;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_LikeCountTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$1500(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3d

    .line 258
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_c4
    const/4 v2, 0x0

    goto :goto_48
.end method
