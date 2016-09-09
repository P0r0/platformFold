.class public Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "UserItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UserItemAdapter"


# instance fields
.field private final ITEM_VIEW_TYPE_FOOTER:I

.field private final ITEM_VIEW_TYPE_HEADER:I

.field private final ITEM_VIEW_TYPE_USER:I

.field _ApiManager:Lmobisocial/omlib/api/OmletApiManager;

.field private _Context:Landroid/content/Context;

.field private final _FooterView:Landroid/view/View;

.field private final _HeaderView:Landroid/view/View;

.field _Users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lmobisocial/omlib/api/OmletApiManager;Landroid/view/View;Landroid/view/View;)V
    .registers 7
    .param p1, "c"    # Landroid/content/Context;
    .param p3, "apiManager"    # Lmobisocial/omlib/api/OmletApiManager;
    .param p4, "headerView"    # Landroid/view/View;
    .param p5, "footerView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDUser;",
            ">;",
            "Lmobisocial/omlib/api/OmletApiManager;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, "users":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/LDProtocols$LDUser;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->ITEM_VIEW_TYPE_HEADER:I

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->ITEM_VIEW_TYPE_FOOTER:I

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->ITEM_VIEW_TYPE_USER:I

    .line 54
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->_Context:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->_Users:Ljava/util/List;

    .line 56
    iput-object p3, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->_ApiManager:Lmobisocial/omlib/api/OmletApiManager;

    .line 57
    iput-object p4, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->_HeaderView:Landroid/view/View;

    .line 58
    iput-object p5, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->_FooterView:Landroid/view/View;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;

    .prologue
    .line 32
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->_Context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;

    .prologue
    .line 32
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->_HeaderView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;)V
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;
    .param p1, "x1"    # Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->setFollowView(Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;)V

    return-void
.end method

.method private setFollowView(Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;)V
    .registers 5
    .param p1, "holder"    # Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 202
    iget-boolean v0, p1, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;->isFollow:Z

    if-eqz v0, :cond_12

    .line 203
    iget-object v0, p1, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;->followedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    iget-object v0, p1, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;->addFollowView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 209
    :goto_11
    return-void

    .line 206
    :cond_12
    iget-object v0, p1, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;->followedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    iget-object v0, p1, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;->addFollowView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_11
.end method

.method private updateView(Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;I)V
    .registers 9
    .param p1, "holder"    # Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;
    .param p2, "userPosition"    # I

    .prologue
    .line 140
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->_Users:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobisocial/longdan/LDProtocols$LDUser;

    .line 141
    .local v1, "user":Lmobisocial/longdan/LDProtocols$LDUser;
    iget-object v3, p1, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    iget-object v2, v1, Lmobisocial/longdan/LDProtocols$LDUser;->DisplayName:Ljava/lang/String;

    if-eqz v2, :cond_16

    iget-object v2, v1, Lmobisocial/longdan/LDProtocols$LDUser;->DisplayName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_67

    :cond_16
    iget-object v2, v1, Lmobisocial/longdan/LDProtocols$LDUser;->Account:Ljava/lang/String;

    :goto_18
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->_Context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->_Context:Landroid/content/Context;

    const-string v4, "omp_btn_loadingheadpic_onpost"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 143
    .local v0, "bm":Landroid/graphics/Bitmap;
    iget-object v2, p1, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;->profileImageView:Landroid/widget/ImageView;

    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 144
    iget-object v2, v1, Lmobisocial/longdan/LDProtocols$LDUser;->ProfilePictureLink:Ljava/lang/String;

    iget-object v3, p1, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;->profileImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->_Context:Landroid/content/Context;

    new-instance v5, Landroid/os/CancellationSignal;

    invoke-direct {v5}, Landroid/os/CancellationSignal;-><init>()V

    invoke-static {v2, v3, v4, v5}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader;->loadProfile(Ljava/lang/String;Landroid/widget/ImageView;Landroid/content/Context;Landroid/os/CancellationSignal;)V

    .line 145
    iget-object v2, p1, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;->profileImageView:Landroid/widget/ImageView;

    new-instance v3, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$1;

    invoke-direct {v3, p0, v1}, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$1;-><init>(Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;Lmobisocial/longdan/LDProtocols$LDUser;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->setFollowView(Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;)V

    .line 155
    iget-object v2, p1, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;->followedTextView:Landroid/widget/TextView;

    new-instance v3, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$2;

    invoke-direct {v3, p0, p1, v1}, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$2;-><init>(Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;Lmobisocial/longdan/LDProtocols$LDUser;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v2, p1, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;->addFollowView:Landroid/view/View;

    new-instance v3, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$3;

    invoke-direct {v3, p0, p1, v1}, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$3;-><init>(Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;Lmobisocial/longdan/LDProtocols$LDUser;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    return-void

    .line 141
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_67
    iget-object v2, v1, Lmobisocial/longdan/LDProtocols$LDUser;->DisplayName:Ljava/lang/String;

    goto :goto_18
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->_Users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 63
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->isHeader(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 76
    const/4 v0, 0x0

    .line 81
    :goto_7
    return v0

    .line 78
    :cond_8
    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->isFooter(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 79
    const/4 v0, 0x1

    goto :goto_7

    .line 81
    :cond_10
    const/4 v0, 0x2

    goto :goto_7
.end method

.method public isFooter(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 216
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->_Users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isHeader(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 212
    if-nez p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 32
    check-cast p1, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->onBindViewHolder(Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;I)V
    .registers 5
    .param p1, "viewHolder"    # Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 129
    invoke-virtual {p0, p2}, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->isHeader(I)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p0, p2}, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->isFooter(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 137
    :cond_c
    :goto_c
    return-void

    .line 133
    :cond_d
    const/4 v1, 0x1

    iput-boolean v1, p1, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;->isFollow:Z

    .line 135
    add-int/lit8 v0, p2, -0x1

    .line 136
    .local v0, "adjustedIndex":I
    invoke-direct {p0, p1, v0}, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->updateView(Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;I)V

    goto :goto_c
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;
    .registers 8
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v4, 0x0

    .line 115
    packed-switch p2, :pswitch_data_32

    .line 124
    const/4 v1, 0x0

    :goto_5
    return-object v1

    .line 117
    :pswitch_6
    new-instance v1, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->_HeaderView:Landroid/view/View;

    invoke-direct {v1, p0, v2, v4}, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;-><init>(Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;Landroid/view/View;Z)V

    goto :goto_5

    .line 119
    :pswitch_e
    new-instance v1, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->_FooterView:Landroid/view/View;

    invoke-direct {v1, p0, v2, v4}, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;-><init>(Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;Landroid/view/View;Z)V

    goto :goto_5

    .line 121
    :pswitch_16
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->_Context:Landroid/content/Context;

    const-string v3, "omp_user_item"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 122
    .local v0, "userView":Landroid/view/View;
    new-instance v1, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;-><init>(Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;Landroid/view/View;Z)V

    goto :goto_5

    .line 115
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_6
        :pswitch_e
        :pswitch_16
    .end packed-switch
.end method
