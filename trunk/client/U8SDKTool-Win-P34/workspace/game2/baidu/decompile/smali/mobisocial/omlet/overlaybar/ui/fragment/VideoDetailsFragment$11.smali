.class Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;
.super Ljava/lang/Object;
.source "VideoDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    .prologue
    .line 478
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 482
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_MoreMenuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 483
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_MoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 484
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_MoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 563
    :goto_1a
    return-void

    .line 486
    :cond_1b
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_MoreMenu:Landroid/view/ViewGroup;

    if-nez v3, :cond_7f

    .line 487
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    iget-boolean v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_IsOwner:Z

    if-eqz v3, :cond_9a

    .line 488
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    invoke-virtual {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;
    invoke-static {v5}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->access$200(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;)Lmobisocial/omlib/service/OmlibService;

    move-result-object v5

    const-string v6, "omp_more_menu_owner"

    invoke-static {v5, v6}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, v4, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_MoreMenu:Landroid/view/ViewGroup;

    .line 489
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_MoreMenu:Landroid/view/ViewGroup;

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->access$200(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;)Lmobisocial/omlib/service/OmlibService;

    move-result-object v4

    const-string v5, "view_group_delete_post"

    invoke-static {v4, v5}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 490
    .local v0, "deleteView":Landroid/view/View;
    new-instance v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11$1;

    invoke-direct {v3, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_MoreMenu:Landroid/view/ViewGroup;

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->access$200(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;)Lmobisocial/omlib/service/OmlibService;

    move-result-object v4

    const-string v5, "view_group_save_post"

    invoke-static {v4, v5}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 511
    .local v2, "saveView":Landroid/view/View;
    new-instance v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11$2;

    invoke-direct {v3, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11$2;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 559
    .end local v0    # "deleteView":Landroid/view/View;
    .end local v2    # "saveView":Landroid/view/View;
    :cond_7f
    :goto_7f
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_MoreMenuContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    iget-object v4, v4, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_MoreMenu:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 560
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_MoreButton:Landroid/widget/ImageButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 561
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_MoreBackground:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1a

    .line 523
    :cond_9a
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    invoke-virtual {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;
    invoke-static {v5}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->access$200(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;)Lmobisocial/omlib/service/OmlibService;

    move-result-object v5

    const-string v6, "omp_more_menu_user"

    invoke-static {v5, v6}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, v4, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_MoreMenu:Landroid/view/ViewGroup;

    .line 524
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_MoreMenu:Landroid/view/ViewGroup;

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->access$200(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;)Lmobisocial/omlib/service/OmlibService;

    move-result-object v4

    const-string v5, "view_group_report_post"

    invoke-static {v4, v5}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 525
    .local v1, "reportView":Landroid/view/View;
    new-instance v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11$3;

    invoke-direct {v3, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11$3;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7f
.end method
