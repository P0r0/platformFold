.class Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4;
.super Ljava/lang/Object;
.source "LatestFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    .prologue
    .line 126
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 130
    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    iget-object v5, v5, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_FilterMenuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 131
    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    iget-object v5, v5, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_FilterButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 132
    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    iget-object v5, v5, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_FilterButton:Landroid/widget/ImageButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 166
    :goto_19
    return-void

    .line 134
    :cond_1a
    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    iget-object v5, v5, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_FilterMenu:Landroid/view/ViewGroup;

    if-eqz v5, :cond_26

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    iget-object v5, v5, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_FilterListView:Landroid/widget/ListView;

    if-nez v5, :cond_a5

    .line 135
    :cond_26
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    invoke-virtual {v5}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iget-object v7, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    invoke-virtual {v7}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "omp_filter_menu"

    invoke-static {v7, v8}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, v6, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_FilterMenu:Landroid/view/ViewGroup;

    .line 136
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    iget-object v5, v5, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_FilterMenu:Landroid/view/ViewGroup;

    iget-object v7, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    invoke-virtual {v7}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "filter_listview"

    invoke-static {v7, v8}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, v6, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_FilterListView:Landroid/widget/ListView;

    .line 137
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v2, "postTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmobisocial/longdan/LDProtocols$LDPostTag;>;"
    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    invoke-virtual {v5}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lmobisocial/omlet/overlaybar/util/RecorderConfigUtil;->getTags(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, "tags":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_71
    array-length v5, v4

    if-ge v1, v5, :cond_87

    .line 140
    new-instance v3, Lmobisocial/longdan/LDProtocols$LDPostTag;

    invoke-direct {v3}, Lmobisocial/longdan/LDProtocols$LDPostTag;-><init>()V

    .line 141
    .local v3, "tag":Lmobisocial/longdan/LDProtocols$LDPostTag;
    aget-object v5, v4, v1

    iput-object v5, v3, Lmobisocial/longdan/LDProtocols$LDPostTag;->Tag:Ljava/lang/String;

    .line 142
    const-string v5, "String"

    iput-object v5, v3, Lmobisocial/longdan/LDProtocols$LDPostTag;->TagType:Ljava/lang/String;

    .line 143
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_71

    .line 145
    .end local v3    # "tag":Lmobisocial/longdan/LDProtocols$LDPostTag;
    :cond_87
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter;

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    invoke-virtual {v5}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5, v2}, Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 146
    .local v0, "adapter":Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter;
    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    iget-object v5, v5, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_FilterListView:Landroid/widget/ListView;

    invoke-virtual {v5, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 147
    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    iget-object v5, v5, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_FilterListView:Landroid/widget/ListView;

    new-instance v6, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4$1;

    invoke-direct {v6, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 163
    .end local v0    # "adapter":Lmobisocial/omlet/overlaybar/ui/adapter/TagItemAdapter;
    .end local v1    # "i":I
    .end local v2    # "postTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmobisocial/longdan/LDProtocols$LDPostTag;>;"
    .end local v4    # "tags":[Ljava/lang/String;
    :cond_a5
    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    iget-object v5, v5, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_FilterMenuContainer:Landroid/view/ViewGroup;

    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    iget-object v6, v6, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_FilterMenu:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 164
    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    iget-object v5, v5, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_FilterButton:Landroid/widget/ImageButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto/16 :goto_19
.end method
