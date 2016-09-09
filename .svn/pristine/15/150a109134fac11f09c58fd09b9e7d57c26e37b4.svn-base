.class public Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MediaItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ScreenshotViewHolder;,
        Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;,
        Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;,
        Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ItemBaseType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MediaItemAdapter"


# instance fields
.field private final ITEM_VIEW_TYPE_FOOTER:I

.field private final ITEM_VIEW_TYPE_HEADER:I

.field private final ITEM_VIEW_TYPE_SCREENSHOT:I

.field private final ITEM_VIEW_TYPE_VIDEO:I

.field _ApiManager:Lmobisocial/omlib/api/OmletApiManager;

.field private final _FooterView:Landroid/view/View;

.field private final _HeaderView:Landroid/view/View;

.field _ItemBaseType:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ItemBaseType;

.field _Posts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDPostContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0x8

    .line 143
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 53
    const/4 v4, 0x0

    iput v4, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->ITEM_VIEW_TYPE_HEADER:I

    .line 55
    const/4 v4, 0x1

    iput v4, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->ITEM_VIEW_TYPE_FOOTER:I

    .line 57
    const/4 v4, 0x2

    iput v4, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->ITEM_VIEW_TYPE_VIDEO:I

    .line 59
    const/4 v4, 0x3

    iput v4, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->ITEM_VIEW_TYPE_SCREENSHOT:I

    .line 144
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;

    .line 145
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->_Posts:Ljava/util/List;

    .line 146
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1b
    const/16 v4, 0xa

    if-ge v0, v4, :cond_9e

    .line 147
    new-instance v2, Lmobisocial/longdan/LDProtocols$LDPostId;

    invoke-direct {v2}, Lmobisocial/longdan/LDProtocols$LDPostId;-><init>()V

    .line 148
    .local v2, "postId":Lmobisocial/longdan/LDProtocols$LDPostId;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;

    const-string v6, "omp_mediaItemAdapter_poster"

    invoke-static {p1, v6}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lmobisocial/longdan/LDProtocols$LDPostId;->Poster:Ljava/lang/String;

    .line 149
    new-instance v3, Lmobisocial/longdan/LDProtocols$LDVideoPost;

    invoke-direct {v3}, Lmobisocial/longdan/LDProtocols$LDVideoPost;-><init>()V

    .line 150
    .local v3, "videoPost":Lmobisocial/longdan/LDProtocols$LDVideoPost;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;

    const-string v6, "omp_mediaItemAdapter_title_for_video"

    invoke-static {p1, v6}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lmobisocial/longdan/LDProtocols$LDVideoPost;->Title:Ljava/lang/String;

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;

    const-string v6, "omp_mediaItemAdapter_description_for_video"

    invoke-static {p1, v6}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lmobisocial/longdan/LDProtocols$LDVideoPost;->Description:Ljava/lang/String;

    .line 152
    const/4 v4, 0x0

    iput-object v4, v3, Lmobisocial/longdan/LDProtocols$LDVideoPost;->BlobLinkString:Ljava/lang/String;

    .line 153
    int-to-long v4, v0

    iput-wide v4, v3, Lmobisocial/longdan/LDProtocols$LDVideoPost;->Views:J

    .line 154
    iput-object v2, v3, Lmobisocial/longdan/LDProtocols$LDVideoPost;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    .line 155
    new-instance v1, Lmobisocial/longdan/LDProtocols$LDPostContainer;

    invoke-direct {v1}, Lmobisocial/longdan/LDProtocols$LDPostContainer;-><init>()V

    .line 156
    .local v1, "postContainer":Lmobisocial/longdan/LDProtocols$LDPostContainer;
    iput-object v3, v1, Lmobisocial/longdan/LDProtocols$LDPostContainer;->VideoPost:Lmobisocial/longdan/LDProtocols$LDVideoPost;

    .line 157
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->_Posts:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1b

    .line 159
    .end local v1    # "postContainer":Lmobisocial/longdan/LDProtocols$LDPostContainer;
    .end local v2    # "postId":Lmobisocial/longdan/LDProtocols$LDPostId;
    .end local v3    # "videoPost":Lmobisocial/longdan/LDProtocols$LDVideoPost;
    :cond_9e
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->_HeaderView:Landroid/view/View;

    .line 160
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->_HeaderView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 161
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->_FooterView:Landroid/view/View;

    .line 162
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->_FooterView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lmobisocial/omlib/api/OmletApiManager;Landroid/view/View;Landroid/view/View;)V
    .registers 10
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
            "Lmobisocial/longdan/LDProtocols$LDPostContainer;",
            ">;",
            "Lmobisocial/omlib/api/OmletApiManager;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "posts":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/LDProtocols$LDPostContainer;>;"
    const/4 v3, 0x5

    const/4 v2, -0x1

    .line 90
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 53
    const/4 v1, 0x0

    iput v1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->ITEM_VIEW_TYPE_HEADER:I

    .line 55
    const/4 v1, 0x1

    iput v1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->ITEM_VIEW_TYPE_FOOTER:I

    .line 57
    const/4 v1, 0x2

    iput v1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->ITEM_VIEW_TYPE_VIDEO:I

    .line 59
    const/4 v1, 0x3

    iput v1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->ITEM_VIEW_TYPE_SCREENSHOT:I

    .line 91
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->_Posts:Ljava/util/List;

    .line 93
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ItemBaseType;->PROFILE:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ItemBaseType;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->_ItemBaseType:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ItemBaseType;

    .line 94
    iput-object p3, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->_ApiManager:Lmobisocial/omlib/api/OmletApiManager;

    .line 95
    if-nez p4, :cond_4f

    .line 96
    new-instance p4, Landroid/view/View;

    .end local p4    # "headerView":Landroid/view/View;
    invoke-direct {p4, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 97
    .restart local p4    # "headerView":Landroid/view/View;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p1, v3}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->convertDiptoPix(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 98
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    const/4 v1, 0x4

    invoke-virtual {p4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iput-object p4, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->_HeaderView:Landroid/view/View;

    .line 104
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_34
    if-nez p5, :cond_52

    .line 105
    new-instance p5, Landroid/view/View;

    .end local p5    # "footerView":Landroid/view/View;
    invoke-direct {p5, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 106
    .restart local p5    # "footerView":Landroid/view/View;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p1, v3}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->convertDiptoPix(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 107
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    const/16 v1, 0x8

    invoke-virtual {p5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iput-object p5, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->_FooterView:Landroid/view/View;

    .line 113
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_4e
    return-void

    .line 102
    :cond_4f
    iput-object p4, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->_HeaderView:Landroid/view/View;

    goto :goto_34

    .line 111
    :cond_52
    iput-object p5, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->_FooterView:Landroid/view/View;

    goto :goto_4e
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ZLmobisocial/omlib/api/OmletApiManager;Landroid/view/View;Landroid/view/View;)V
    .registers 9
    .param p1, "c"    # Landroid/content/Context;
    .param p3, "fromProfile"    # Z
    .param p4, "apiManager"    # Lmobisocial/omlib/api/OmletApiManager;
    .param p5, "headerView"    # Landroid/view/View;
    .param p6, "footerView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDPostContainer;",
            ">;Z",
            "Lmobisocial/omlib/api/OmletApiManager;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "posts":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/LDProtocols$LDPostContainer;>;"
    const/16 v1, 0x8

    .line 116
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->ITEM_VIEW_TYPE_HEADER:I

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->ITEM_VIEW_TYPE_FOOTER:I

    .line 57
    const/4 v0, 0x2

    iput v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->ITEM_VIEW_TYPE_VIDEO:I

    .line 59
    const/4 v0, 0x3

    iput v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->ITEM_VIEW_TYPE_SCREENSHOT:I

    .line 117
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->_Posts:Ljava/util/List;

    .line 119
    if-eqz p3, :cond_36

    sget-object v0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ItemBaseType;->GAME:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ItemBaseType;

    :goto_19
    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->_ItemBaseType:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ItemBaseType;

    .line 120
    iput-object p4, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->_ApiManager:Lmobisocial/omlib/api/OmletApiManager;

    .line 121
    if-nez p5, :cond_39

    .line 122
    new-instance p5, Landroid/view/View;

    .end local p5    # "headerView":Landroid/view/View;
    invoke-direct {p5, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 123
    .restart local p5    # "headerView":Landroid/view/View;
    invoke-virtual {p5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iput-object p5, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->_HeaderView:Landroid/view/View;

    .line 128
    :goto_29
    if-nez p6, :cond_3c

    .line 129
    new-instance p6, Landroid/view/View;

    .end local p6    # "footerView":Landroid/view/View;
    invoke-direct {p6, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 130
    .restart local p6    # "footerView":Landroid/view/View;
    invoke-virtual {p6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iput-object p6, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->_FooterView:Landroid/view/View;

    .line 135
    :goto_35
    return-void

    .line 119
    :cond_36
    sget-object v0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ItemBaseType;->PROFILE:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ItemBaseType;

    goto :goto_19

    .line 126
    :cond_39
    iput-object p5, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->_HeaderView:Landroid/view/View;

    goto :goto_29

    .line 133
    :cond_3c
    iput-object p6, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->_FooterView:Landroid/view/View;

    goto :goto_35
.end method

.method static synthetic access$100(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    .prologue
    .line 47
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private updateMediaHolderCommonFields(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;Lmobisocial/longdan/LDProtocols$LDPost;)V
    .registers 11
    .param p1, "mediaHolder"    # Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;
    .param p2, "post"    # Lmobisocial/longdan/LDProtocols$LDPost;

    .prologue
    const/4 v7, 0x4

    .line 426
    iget-object v2, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 427
    iget-object v2, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->placeholderImageView:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 428
    iget-object v2, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->placeholderImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;

    const-string v4, "omp_ic_loadingblankpage"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 429
    iget-object v2, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->placeholderImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;

    const-string v4, "omp_mediaitem_loading_background"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 430
    iget-object v2, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->viewCountTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p2, Lmobisocial/longdan/LDProtocols$LDPost;->Views:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v2, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->titleTextView:Landroid/widget/TextView;

    iget-object v3, p2, Lmobisocial/longdan/LDProtocols$LDPost;->Title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v2, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->timeTextview:Landroid/widget/TextView;

    iget-wide v4, p2, Lmobisocial/longdan/LDProtocols$LDPost;->CreationDate:J

    invoke-static {v4, v5}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->formatTimestampPretty(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    iget-object v2, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->likeCountTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p2, Lmobisocial/longdan/LDProtocols$LDPost;->Likes:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->getMyAccount()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lmobisocial/longdan/LDProtocols$LDPost;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    iget-object v3, v3, Lmobisocial/longdan/LDProtocols$LDPostId;->Poster:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_106

    const/4 v2, 0x1

    :goto_80
    iput-boolean v2, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->isOwner:Z

    .line 436
    iget-object v2, p2, Lmobisocial/longdan/LDProtocols$LDPost;->OmletId:Lmobisocial/longdan/LDProtocols$LDIdentity;

    if-nez v2, :cond_109

    const-string v0, ""

    .line 437
    .local v0, "omletId":Ljava/lang/String;
    :goto_88
    iget-object v2, p2, Lmobisocial/longdan/LDProtocols$LDPost;->PosterName:Ljava/lang/String;

    if-eqz v2, :cond_94

    iget-object v2, p2, Lmobisocial/longdan/LDProtocols$LDPost;->PosterName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10f

    :cond_94
    move-object v1, v0

    .line 438
    .local v1, "posterName":Ljava/lang/String;
    :goto_95
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->_ItemBaseType:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ItemBaseType;

    sget-object v3, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ItemBaseType;->PROFILE:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ItemBaseType;

    if-ne v2, v3, :cond_124

    .line 439
    iget-object v2, p2, Lmobisocial/longdan/LDProtocols$LDPost;->PosterProfilePictureLink:Ljava/lang/String;

    if-eqz v2, :cond_112

    .line 440
    iget-object v2, p2, Lmobisocial/longdan/LDProtocols$LDPost;->PosterProfilePictureLink:Ljava/lang/String;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;

    const-string v4, "omp_btn_loadingheadpic_onpost"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->profileImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;

    iget-object v6, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->imageLoadingCancellationSignal:Landroid/os/CancellationSignal;

    invoke-static {v2, v3, v4, v5, v6}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader;->loadProfile(Ljava/lang/String;ILandroid/widget/ImageView;Landroid/content/Context;Landroid/os/CancellationSignal;)V

    .line 444
    :goto_b2
    iget-object v2, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    iget-object v2, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->profileImageView:Landroid/widget/ImageView;

    new-instance v3, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$3;

    invoke-direct {v3, p0, p1, p2, v1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$3;-><init>(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;Lmobisocial/longdan/LDProtocols$LDPost;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    :cond_c1
    :goto_c1
    iget-object v3, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->likeImage:Landroid/widget/ImageView;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v4, p2, Lmobisocial/longdan/LDProtocols$LDPost;->YouLiked:Ljava/lang/Boolean;

    invoke-virtual {v2, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14c

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;

    const-string v4, "omp_btn_like_click"

    invoke-static {v2, v4}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    :goto_d5
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 466
    iget-object v2, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->likeButtonView:Landroid/view/View;

    new-instance v3, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4;

    invoke-direct {v3, p0, p1, p2}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4;-><init>(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;Lmobisocial/longdan/LDProtocols$LDPost;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    iget-object v2, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->shareView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 517
    iget-object v2, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->shareButtonView:Landroid/view/View;

    new-instance v3, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5;

    invoke-direct {v3, p0, p2}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5;-><init>(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;Lmobisocial/longdan/LDProtocols$LDPost;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 563
    iget-object v2, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->shareCloseButton:Landroid/widget/ImageButton;

    new-instance v3, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$6;

    invoke-direct {v3, p0, p1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$6;-><init>(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 570
    iget-object v2, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->shareToPeopleButton:Landroid/widget/ImageButton;

    new-instance v3, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$7;

    invoke-direct {v3, p0}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$7;-><init>(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 577
    return-void

    .line 434
    .end local v0    # "omletId":Ljava/lang/String;
    .end local v1    # "posterName":Ljava/lang/String;
    :cond_106
    const/4 v2, 0x0

    goto/16 :goto_80

    .line 436
    :cond_109
    iget-object v2, p2, Lmobisocial/longdan/LDProtocols$LDPost;->OmletId:Lmobisocial/longdan/LDProtocols$LDIdentity;

    iget-object v0, v2, Lmobisocial/longdan/LDProtocols$LDIdentity;->Principal:Ljava/lang/String;

    goto/16 :goto_88

    .line 437
    .restart local v0    # "omletId":Ljava/lang/String;
    :cond_10f
    iget-object v1, p2, Lmobisocial/longdan/LDProtocols$LDPost;->PosterName:Ljava/lang/String;

    goto :goto_95

    .line 442
    .restart local v1    # "posterName":Ljava/lang/String;
    :cond_112
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;

    const-string v3, "omp_btn_loadingheadpic_onpost"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->profileImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->imageLoadingCancellationSignal:Landroid/os/CancellationSignal;

    invoke-static {v2, v3, v4, v5}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader;->loadProfile(ILandroid/widget/ImageView;Landroid/content/Context;Landroid/os/CancellationSignal;)V

    goto :goto_b2

    .line 461
    :cond_124
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->_ItemBaseType:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ItemBaseType;

    sget-object v3, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ItemBaseType;->GAME:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ItemBaseType;

    if-ne v2, v3, :cond_c1

    .line 462
    iget-object v2, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->profileImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;

    const-string v4, "omp_btn_omplaylogo_reaction"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 463
    iget-object v2, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->nameTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;

    const-string v5, "omp_stub_game_name"

    invoke-static {v4, v5}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c1

    .line 465
    :cond_14c
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;

    const-string v4, "omp_btn_like_normal"

    invoke-static {v2, v4}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    goto :goto_d5
.end method

.method private updateScreenshotHolder(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ScreenshotViewHolder;)V
    .registers 8
    .param p1, "screenshotHolder"    # Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ScreenshotViewHolder;

    .prologue
    .line 393
    iget-object v1, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ScreenshotViewHolder;->screenshot:Lmobisocial/longdan/LDProtocols$LDScreenShotPost;

    invoke-direct {p0, p1, v1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->updateMediaHolderCommonFields(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;Lmobisocial/longdan/LDProtocols$LDPost;)V

    .line 394
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$2;

    invoke-direct {v0, p0, p1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$2;-><init>(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ScreenshotViewHolder;)V

    .line 421
    .local v0, "openVideoDetailsOnClickListener":Landroid/view/View$OnClickListener;
    iget-object v1, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ScreenshotViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    iget-object v1, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ScreenshotViewHolder;->screenshot:Lmobisocial/longdan/LDProtocols$LDScreenShotPost;

    iget-object v1, v1, Lmobisocial/longdan/LDProtocols$LDScreenShotPost;->BlobLinkString:Ljava/lang/String;

    iget-object v2, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ScreenshotViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;

    sget-object v4, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;->BITMAP_TOP_ROUND_SCREENSHOT:Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;

    iget-object v5, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ScreenshotViewHolder;->imageLoadingCancellationSignal:Landroid/os/CancellationSignal;

    invoke-static {v1, v2, v3, v4, v5}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader;->loadBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/content/Context;Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;Landroid/os/CancellationSignal;)V

    .line 423
    return-void
.end method

.method private updateVideoHolder(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;)V
    .registers 16
    .param p1, "videoHolder"    # Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;

    .prologue
    const-wide/16 v12, 0x3c

    const/4 v10, 0x0

    .line 350
    iget-object v4, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;->video:Lmobisocial/longdan/LDProtocols$LDVideoPost;

    invoke-direct {p0, p1, v4}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->updateMediaHolderCommonFields(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;Lmobisocial/longdan/LDProtocols$LDPost;)V

    .line 351
    iget-object v4, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;->videoPlayImageview:Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 352
    iget-object v4, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;->videoDuration:Landroid/widget/TextView;

    const-string v5, "00:00"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v4, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;->video:Lmobisocial/longdan/LDProtocols$LDVideoPost;

    iget-object v4, v4, Lmobisocial/longdan/LDProtocols$LDVideoPost;->M3u8s:Ljava/util/List;

    if-eqz v4, :cond_70

    iget-object v4, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;->video:Lmobisocial/longdan/LDProtocols$LDVideoPost;

    iget-object v4, v4, Lmobisocial/longdan/LDProtocols$LDVideoPost;->M3u8s:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_70

    .line 354
    iget-object v4, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;->video:Lmobisocial/longdan/LDProtocols$LDVideoPost;

    iget-object v4, v4, Lmobisocial/longdan/LDProtocols$LDVideoPost;->M3u8s:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmobisocial/longdan/LDProtocols$LDM3U8Info;

    iget-object v2, v4, Lmobisocial/longdan/LDProtocols$LDM3U8Info;->Duration:Ljava/util/List;

    .line 355
    .local v2, "durations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_70

    .line 356
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "#EXTINF:"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->convertStringtoFloat(Ljava/lang/String;)F

    move-result v4

    float-to-long v0, v4

    .line 357
    .local v0, "duration":J
    iget-object v4, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;->videoDuration:Landroid/widget/TextView;

    const-string v5, "%02d:%02d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    div-long v8, v0, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v10

    const/4 v7, 0x1

    rem-long v8, v0, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    .end local v0    # "duration":J
    .end local v2    # "durations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_70
    new-instance v3, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$1;

    invoke-direct {v3, p0, p1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$1;-><init>(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;)V

    .line 388
    .local v3, "openVideoDetailsOnClickListener":Landroid/view/View$OnClickListener;
    iget-object v4, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    iget-object v4, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;->video:Lmobisocial/longdan/LDProtocols$LDVideoPost;

    iget-object v4, v4, Lmobisocial/longdan/LDProtocols$LDVideoPost;->ThumbnailBlobLinkString:Ljava/lang/String;

    iget-object v5, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;

    sget-object v7, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;->BITMAP_TOP_ROUND_VIDEO:Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;

    iget-object v8, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;->imageLoadingCancellationSignal:Landroid/os/CancellationSignal;

    invoke-static {v4, v5, v6, v7, v8}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader;->loadBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/content/Context;Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader$BitmapStyle;Landroid/os/CancellationSignal;)V

    .line 390
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->_Posts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 167
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->isHeader(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 268
    const/4 v2, 0x0

    .line 279
    :goto_7
    return v2

    .line 270
    :cond_8
    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->isFooter(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 271
    const/4 v2, 0x1

    goto :goto_7

    .line 274
    :cond_10
    add-int/lit8 v0, p1, -0x1

    .line 275
    .local v0, "adjustedIndex":I
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->_Posts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobisocial/longdan/LDProtocols$LDPostContainer;

    .line 276
    .local v1, "postContainer":Lmobisocial/longdan/LDProtocols$LDPostContainer;
    iget-object v2, v1, Lmobisocial/longdan/LDProtocols$LDPostContainer;->VideoPost:Lmobisocial/longdan/LDProtocols$LDVideoPost;

    if-eqz v2, :cond_20

    .line 277
    const/4 v2, 0x2

    goto :goto_7

    .line 279
    :cond_20
    const/4 v2, 0x3

    goto :goto_7
.end method

.method public isFooter(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 346
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->_Posts:Ljava/util/List;

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
    .line 342
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
    .line 47
    check-cast p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;

    invoke-virtual {p0, p1, p2}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->onBindViewHolder(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;I)V
    .registers 8
    .param p1, "mediaViewHolder"    # Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 303
    invoke-virtual {p0, p2}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->isHeader(I)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {p0, p2}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->isFooter(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 325
    :cond_c
    :goto_c
    return-void

    .line 307
    :cond_d
    add-int/lit8 v0, p2, -0x1

    .line 308
    .local v0, "adjustedIndex":I
    invoke-virtual {p1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->getItemViewType()I

    move-result v3

    packed-switch v3, :pswitch_data_60

    .line 324
    :goto_16
    iput p2, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->index:I

    goto :goto_c

    :pswitch_19
    move-object v2, p1

    .line 310
    check-cast v2, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;

    .line 311
    .local v2, "videoViewHolder":Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->_Posts:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobisocial/longdan/LDProtocols$LDPostContainer;

    iget-object v3, v3, Lmobisocial/longdan/LDProtocols$LDPostContainer;->VideoPost:Lmobisocial/longdan/LDProtocols$LDVideoPost;

    iput-object v3, v2, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;->video:Lmobisocial/longdan/LDProtocols$LDVideoPost;

    .line 312
    iget-object v3, v2, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;->video:Lmobisocial/longdan/LDProtocols$LDVideoPost;

    invoke-virtual {p0, p1, v3}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->renewCancellationSingnal(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;Lmobisocial/longdan/LDProtocols$LDPost;)V

    .line 313
    iget-object v3, v2, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    iget-object v4, v2, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;->video:Lmobisocial/longdan/LDProtocols$LDVideoPost;

    iget-object v4, v4, Lmobisocial/longdan/LDProtocols$LDVideoPost;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    iget-object v4, v4, Lmobisocial/longdan/LDProtocols$LDPostId;->PostId:[B

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 314
    invoke-direct {p0, v2}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->updateVideoHolder(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;)V

    goto :goto_16

    .end local v2    # "videoViewHolder":Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;
    :pswitch_3c
    move-object v1, p1

    .line 317
    check-cast v1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ScreenshotViewHolder;

    .line 318
    .local v1, "screenshotViewHolder":Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ScreenshotViewHolder;
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->_Posts:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobisocial/longdan/LDProtocols$LDPostContainer;

    iget-object v3, v3, Lmobisocial/longdan/LDProtocols$LDPostContainer;->ScreenShotPost:Lmobisocial/longdan/LDProtocols$LDScreenShotPost;

    iput-object v3, v1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ScreenshotViewHolder;->screenshot:Lmobisocial/longdan/LDProtocols$LDScreenShotPost;

    .line 319
    iget-object v3, v1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ScreenshotViewHolder;->screenshot:Lmobisocial/longdan/LDProtocols$LDScreenShotPost;

    invoke-virtual {p0, p1, v3}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->renewCancellationSingnal(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;Lmobisocial/longdan/LDProtocols$LDPost;)V

    .line 320
    iget-object v3, v1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ScreenshotViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    iget-object v4, v1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ScreenshotViewHolder;->screenshot:Lmobisocial/longdan/LDProtocols$LDScreenShotPost;

    iget-object v4, v4, Lmobisocial/longdan/LDProtocols$LDScreenShotPost;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    iget-object v4, v4, Lmobisocial/longdan/LDProtocols$LDPostId;->PostId:[B

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 321
    invoke-direct {p0, v1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->updateScreenshotHolder(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ScreenshotViewHolder;)V

    goto :goto_16

    .line 308
    nop

    :pswitch_data_60
    .packed-switch 0x2
        :pswitch_19
        :pswitch_3c
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;
    .registers 9
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v5, 0x0

    .line 285
    packed-switch p2, :pswitch_data_4a

    .line 297
    const/4 v2, 0x0

    :goto_5
    return-object v2

    .line 287
    :pswitch_6
    new-instance v2, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->_HeaderView:Landroid/view/View;

    invoke-direct {v2, p0, v3, v5}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;-><init>(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;Landroid/view/View;Z)V

    goto :goto_5

    .line 289
    :pswitch_e
    new-instance v2, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->_FooterView:Landroid/view/View;

    invoke-direct {v2, p0, v3, v5}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;-><init>(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;Landroid/view/View;Z)V

    goto :goto_5

    .line 291
    :pswitch_16
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;

    const-string v4, "omp_video_item"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 292
    .local v1, "videoView":Landroid/view/View;
    new-instance v2, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;

    invoke-direct {v2, p0, v1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;-><init>(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;Landroid/view/View;)V

    goto :goto_5

    .line 294
    .end local v1    # "videoView":Landroid/view/View;
    :pswitch_30
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;

    const-string v4, "omp_screenshot_item"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 295
    .local v0, "screenshotView":Landroid/view/View;
    new-instance v2, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ScreenshotViewHolder;

    invoke-direct {v2, p0, v0}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ScreenshotViewHolder;-><init>(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;Landroid/view/View;)V

    goto :goto_5

    .line 285
    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_6
        :pswitch_e
        :pswitch_16
        :pswitch_30
    .end packed-switch
.end method

.method public renewCancellationSingnal(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;Lmobisocial/longdan/LDProtocols$LDPost;)V
    .registers 5
    .param p1, "mediaViewHolder"    # Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;
    .param p2, "post"    # Lmobisocial/longdan/LDProtocols$LDPost;

    .prologue
    .line 329
    iget-object v0, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->imageLoadingCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_25

    .line 330
    iget-object v0, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    iget-object v1, p2, Lmobisocial/longdan/LDProtocols$LDPost;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    iget-object v1, v1, Lmobisocial/longdan/LDProtocols$LDPostId;->PostId:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_24

    .line 332
    iget-object v0, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->imageLoadingCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 333
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->imageLoadingCancellationSignal:Landroid/os/CancellationSignal;

    .line 339
    :cond_24
    :goto_24
    return-void

    .line 337
    :cond_25
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->imageLoadingCancellationSignal:Landroid/os/CancellationSignal;

    goto :goto_24
.end method

.method public setPostItems(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDPostContainer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "posts":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/LDProtocols$LDPostContainer;>;"
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->_Posts:Ljava/util/List;

    .line 139
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->notifyDataSetChanged()V

    .line 140
    return-void
.end method
