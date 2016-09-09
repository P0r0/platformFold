.class Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;
.super Ljava/lang/Object;
.source "GridViewWithHeaderAndFooter.java"

# interfaces
.implements Landroid/widget/WrapperListAdapter;
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/srain/cube/views/GridViewWithHeaderAndFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderViewGridAdapter"
.end annotation


# static fields
.field static final EMPTY_INFO_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAdapter:Landroid/widget/ListAdapter;

.field mAreAllFixedViewsSelectable:Z

.field private mCacheFirstHeaderView:Z

.field private mCachePlaceHoldView:Z

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsFilterable:Z

.field private mNumColumns:I

.field private mRowHeight:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .registers 7
    .param p3, "adapter"    # Landroid/widget/ListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "headerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;>;"
    .local p2, "footViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;>;"
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    new-instance v2, Landroid/database/DataSetObservable;

    invoke-direct {v2}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 485
    iput v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    .line 487
    const/4 v2, -0x1

    iput v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mRowHeight:I

    .line 493
    iput-boolean v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mCachePlaceHoldView:Z

    .line 496
    iput-boolean v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mCacheFirstHeaderView:Z

    .line 499
    iput-object p3, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .line 500
    instance-of v2, p3, Landroid/widget/Filterable;

    iput-boolean v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mIsFilterable:Z

    .line 501
    if-nez p1, :cond_3a

    .line 502
    sget-object v2, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 506
    :goto_21
    if-nez p2, :cond_3d

    .line 507
    sget-object v2, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 511
    :goto_27
    iget-object v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_40

    iget-object v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_40

    :goto_37
    iput-boolean v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAreAllFixedViewsSelectable:Z

    .line 512
    return-void

    .line 504
    :cond_3a
    iput-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    goto :goto_21

    .line 509
    :cond_3d
    iput-object p2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    goto :goto_27

    :cond_40
    move v0, v1

    .line 511
    goto :goto_37
.end method

.method private areAllListInfosSelectable(Ljava/util/ArrayList;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 548
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;>;"
    if-eqz p1, :cond_18

    .line 549
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;

    .line 550
    .local v0, "info":Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;
    iget-boolean v2, v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;->isSelectable:Z

    if-nez v2, :cond_6

    .line 551
    const/4 v1, 0x0

    .line 555
    .end local v0    # "info":Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;
    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x1

    goto :goto_17
.end method

.method private getAdapterAndPlaceHolderCount()I
    .registers 5

    .prologue
    .line 599
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    iget v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 595
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAreAllFixedViewsSelectable:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 586
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_16

    .line 587
    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    mul-int/2addr v0, v1

    invoke-direct {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getAdapterAndPlaceHolderCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 589
    :goto_15
    return v0

    :cond_16
    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    mul-int/2addr v0, v1

    goto :goto_15
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 2

    .prologue
    .line 821
    iget-boolean v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mIsFilterable:Z

    if-eqz v0, :cond_d

    .line 822
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 824
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getFootersCount()I
    .registers 2

    .prologue
    .line 533
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeadersCount()I
    .registers 2

    .prologue
    .line 529
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 9
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 626
    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v5

    iget v6, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v3, v5, v6

    .line 627
    .local v3, "numHeadersAndPlaceholders":I
    if-ge p1, v3, :cond_20

    .line 628
    iget v5, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v5, p1, v5

    if-nez v5, :cond_1f

    .line 629
    iget-object v4, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget v5, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    div-int v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;

    iget-object v4, v4, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;->data:Ljava/lang/Object;

    .line 651
    :cond_1f
    :goto_1f
    return-object v4

    .line 634
    :cond_20
    sub-int v1, p1, v3

    .line 635
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 636
    .local v0, "adapterCount":I
    iget-object v5, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_3c

    .line 637
    invoke-direct {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getAdapterAndPlaceHolderCount()I

    move-result v0

    .line 638
    if-ge v1, v0, :cond_3c

    .line 639
    iget-object v5, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_1f

    .line 640
    iget-object v4, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1f

    .line 647
    :cond_3c
    sub-int v2, v1, v0

    .line 648
    .local v2, "footerPosition":I
    iget v5, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v5, v2, v5

    if-nez v5, :cond_1f

    .line 649
    iget-object v4, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;

    iget-object v4, v4, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;->data:Ljava/lang/Object;

    goto :goto_1f
.end method

.method public getItemId(I)J
    .registers 8
    .param p1, "position"    # I

    .prologue
    .line 657
    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v3

    iget v4, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v2, v3, v4

    .line 658
    .local v2, "numHeadersAndPlaceholders":I
    iget-object v3, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1f

    if-lt p1, v2, :cond_1f

    .line 659
    sub-int v1, p1, v2

    .line 660
    .local v1, "adjPosition":I
    iget-object v3, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 661
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_1f

    .line 662
    iget-object v3, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 665
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :goto_1e
    return-wide v4

    :cond_1f
    const-wide/16 v4, -0x1

    goto :goto_1e
.end method

.method public getItemViewType(I)I
    .registers 13
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 736
    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v7

    iget v8, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v4, v7, v8

    .line 737
    .local v4, "numHeadersAndPlaceholders":I
    iget-object v7, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v7, :cond_af

    move v1, v6

    .line 738
    .local v1, "adapterViewTypeStart":I
    :goto_e
    const/4 v5, -0x2

    .line 739
    .local v5, "type":I
    iget-boolean v7, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mCachePlaceHoldView:Z

    if-eqz v7, :cond_3b

    .line 741
    if-ge p1, v4, :cond_3b

    .line 742
    if-nez p1, :cond_2d

    .line 743
    iget-boolean v7, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mCacheFirstHeaderView:Z

    if-eqz v7, :cond_2d

    .line 744
    iget-object v7, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v7, v1

    iget-object v8, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v5, v7, 0x1

    .line 747
    :cond_2d
    iget v7, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v7, p1, v7

    if-eqz v7, :cond_3b

    .line 748
    iget v7, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    div-int v7, p1, v7

    add-int/lit8 v7, v7, 0x1

    add-int v5, v1, v7

    .line 753
    :cond_3b
    sub-int v2, p1, v4

    .line 754
    .local v2, "adjPosition":I
    const/4 v0, 0x0

    .line 755
    .local v0, "adapterCount":I
    iget-object v7, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v7, :cond_58

    .line 756
    invoke-direct {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getAdapterAndPlaceHolderCount()I

    move-result v0

    .line 757
    if-ltz v2, :cond_58

    if-ge v2, v0, :cond_58

    .line 758
    iget-object v7, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-ge v2, v7, :cond_b9

    .line 759
    iget-object v7, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    .line 767
    :cond_58
    :goto_58
    iget-boolean v7, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mCachePlaceHoldView:Z

    if-eqz v7, :cond_7d

    .line 769
    sub-int v3, v2, v0

    .line 770
    .local v3, "footerPosition":I
    if-ltz v3, :cond_7d

    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getCount()I

    move-result v7

    if-ge v3, v7, :cond_7d

    iget v7, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v7, v3, v7

    if-eqz v7, :cond_7d

    .line 771
    iget-object v7, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v7, v7, 0x1

    iget v8, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    div-int v8, v3, v8

    add-int/lit8 v8, v8, 0x1

    add-int v5, v7, v8

    .line 774
    .end local v3    # "footerPosition":I
    :cond_7d
    sget-boolean v7, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->DEBUG:Z

    if-eqz v7, :cond_ae

    .line 776
    const-string v7, "GridViewHeaderAndFooter"

    const-string v8, "getItemViewType: pos: %s, result: %s"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    const/4 v6, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    const/4 v6, 0x2

    iget-boolean v10, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mCachePlaceHoldView:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v6

    const/4 v6, 0x3

    iget-boolean v10, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mCacheFirstHeaderView:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :cond_ae
    return v5

    .line 737
    .end local v0    # "adapterCount":I
    .end local v1    # "adapterViewTypeStart":I
    .end local v2    # "adjPosition":I
    .end local v5    # "type":I
    :cond_af
    iget-object v7, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    goto/16 :goto_e

    .line 761
    .restart local v0    # "adapterCount":I
    .restart local v1    # "adapterViewTypeStart":I
    .restart local v2    # "adjPosition":I
    .restart local v5    # "type":I
    :cond_b9
    iget-boolean v7, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mCachePlaceHoldView:Z

    if-eqz v7, :cond_58

    .line 762
    iget-object v7, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v5, v7, 0x1

    goto :goto_58
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 675
    sget-boolean v6, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->DEBUG:Z

    if-eqz v6, :cond_23

    .line 677
    const-string v7, "GridViewHeaderAndFooter"

    const-string v8, "getView: %s, reused: %s"

    const/4 v6, 0x2

    new-array v9, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    const/4 v10, 0x1

    if-nez p2, :cond_42

    const/4 v6, 0x1

    :goto_16
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_23
    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v6

    iget v7, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v5, v6, v7

    .line 681
    .local v5, "numHeadersAndPlaceholders":I
    if-ge p1, v5, :cond_5c

    .line 682
    iget-object v6, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget v7, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    div-int v7, p1, v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;

    iget-object v4, v6, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;->viewContainer:Landroid/view/ViewGroup;

    .line 683
    .local v4, "headerViewContainer":Landroid/view/View;
    iget v6, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v6, p1, v6

    if-nez v6, :cond_44

    .line 728
    .end local v4    # "headerViewContainer":Landroid/view/View;
    :goto_41
    return-object v4

    .line 677
    .end local v5    # "numHeadersAndPlaceholders":I
    :cond_42
    const/4 v6, 0x0

    goto :goto_16

    .line 686
    .restart local v4    # "headerViewContainer":Landroid/view/View;
    .restart local v5    # "numHeadersAndPlaceholders":I
    :cond_44
    if-nez p2, :cond_4f

    .line 687
    new-instance p2, Landroid/view/View;

    .end local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p2, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 691
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_4f
    const/4 v6, 0x4

    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 692
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/view/View;->setMinimumHeight(I)V

    move-object v4, p2

    .line 693
    goto :goto_41

    .line 697
    .end local v4    # "headerViewContainer":Landroid/view/View;
    :cond_5c
    sub-int v1, p1, v5

    .line 698
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 699
    .local v0, "adapterCount":I
    iget-object v6, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v6, :cond_8e

    .line 700
    invoke-direct {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getAdapterAndPlaceHolderCount()I

    move-result v0

    .line 701
    if-ge v1, v0, :cond_8e

    .line 702
    iget-object v6, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-ge v1, v6, :cond_78

    .line 703
    iget-object v6, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_41

    .line 705
    :cond_78
    if-nez p2, :cond_83

    .line 706
    new-instance p2, Landroid/view/View;

    .end local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p2, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 708
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_83
    const/4 v6, 0x4

    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 709
    iget v6, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mRowHeight:I

    invoke-virtual {p2, v6}, Landroid/view/View;->setMinimumHeight(I)V

    move-object v4, p2

    .line 710
    goto :goto_41

    .line 715
    :cond_8e
    sub-int v3, v1, v0

    .line 716
    .local v3, "footerPosition":I
    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getCount()I

    move-result v6

    if-ge v3, v6, :cond_c5

    .line 717
    iget-object v6, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    iget v7, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    div-int v7, v3, v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;

    iget-object v2, v6, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;->viewContainer:Landroid/view/ViewGroup;

    .line 718
    .local v2, "footViewContainer":Landroid/view/View;
    iget v6, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v6, p1, v6

    if-nez v6, :cond_ac

    move-object v4, v2

    .line 719
    goto :goto_41

    .line 721
    :cond_ac
    if-nez p2, :cond_b7

    .line 722
    new-instance p2, Landroid/view/View;

    .end local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p2, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 726
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_b7
    const/4 v6, 0x4

    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 727
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/view/View;->setMinimumHeight(I)V

    move-object v4, p2

    .line 728
    goto/16 :goto_41

    .line 731
    .end local v2    # "footViewContainer":Landroid/view/View;
    :cond_c5
    new-instance v6, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v6, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v6
.end method

.method public getViewTypeCount()I
    .registers 8

    .prologue
    const/4 v2, 0x1

    .line 788
    iget-object v3, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v3, :cond_3a

    move v0, v2

    .line 789
    .local v0, "count":I
    :goto_6
    iget-boolean v3, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mCachePlaceHoldView:Z

    if-eqz v3, :cond_21

    .line 790
    iget-object v3, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int v1, v3, v4

    .line 791
    .local v1, "offset":I
    iget-boolean v3, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mCacheFirstHeaderView:Z

    if-eqz v3, :cond_20

    .line 792
    add-int/lit8 v1, v1, 0x1

    .line 794
    :cond_20
    add-int/2addr v0, v1

    .line 796
    .end local v1    # "offset":I
    :cond_21
    sget-boolean v3, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->DEBUG:Z

    if-eqz v3, :cond_39

    .line 798
    const-string v3, "GridViewHeaderAndFooter"

    const-string v4, "getViewTypeCount: %s"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_39
    return v0

    .line 788
    .end local v0    # "count":I
    :cond_3a
    iget-object v3, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    goto :goto_6
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 829
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 670
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 544
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isEnabled(I)Z
    .registers 10
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 605
    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v4

    iget v7, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v3, v4, v7

    .line 606
    .local v3, "numHeadersAndPlaceholders":I
    if-ge p1, v3, :cond_27

    .line 607
    iget v4, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v4, p1, v4

    if-nez v4, :cond_25

    iget-object v4, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget v7, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    div-int v7, p1, v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;

    iget-boolean v4, v4, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;->isSelectable:Z

    if-eqz v4, :cond_25

    move v4, v5

    :goto_23
    move v5, v4

    .line 620
    :cond_24
    :goto_24
    return v5

    :cond_25
    move v4, v6

    .line 607
    goto :goto_23

    .line 610
    :cond_27
    sub-int v1, p1, v3

    .line 611
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 612
    .local v0, "adapterCount":I
    iget-object v4, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_46

    .line 613
    invoke-direct {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getAdapterAndPlaceHolderCount()I

    move-result v0

    .line 614
    if-ge v1, v0, :cond_46

    .line 615
    iget-object v4, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_44

    iget-object v4, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_24

    :cond_44
    move v5, v6

    goto :goto_24

    .line 619
    :cond_46
    sub-int v2, v1, v0

    .line 620
    .local v2, "footerPosition":I
    iget v4, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v4, v2, v4

    if-nez v4, :cond_5e

    iget-object v4, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    iget v7, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    div-int v7, v2, v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;

    iget-boolean v4, v4, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;->isSelectable:Z

    if-nez v4, :cond_24

    :cond_5e
    move v5, v6

    goto :goto_24
.end method

.method public notifyDataSetChanged()V
    .registers 2

    .prologue
    .line 833
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 834
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 805
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 806
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_e

    .line 807
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 809
    :cond_e
    return-void
.end method

.method public removeFooter(Landroid/view/View;)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 572
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v4, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_38

    .line 573
    iget-object v4, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;

    .line 574
    .local v1, "info":Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;
    iget-object v4, v1, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;->view:Landroid/view/View;

    if-ne v4, p1, :cond_35

    .line 575
    iget-object v4, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 576
    iget-object v4, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_2d

    iget-object v4, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_2d

    move v2, v3

    :cond_2d
    iput-boolean v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAreAllFixedViewsSelectable:Z

    .line 577
    iget-object v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v2}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 581
    .end local v1    # "info":Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;
    :goto_34
    return v3

    .line 572
    .restart local v1    # "info":Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v1    # "info":Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;
    :cond_38
    move v3, v2

    .line 581
    goto :goto_34
.end method

.method public removeHeader(Landroid/view/View;)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 559
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v4, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_38

    .line 560
    iget-object v4, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;

    .line 561
    .local v1, "info":Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;
    iget-object v4, v1, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;->view:Landroid/view/View;

    if-ne v4, p1, :cond_35

    .line 562
    iget-object v4, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 563
    iget-object v4, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_2d

    iget-object v4, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_2d

    move v2, v3

    :cond_2d
    iput-boolean v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAreAllFixedViewsSelectable:Z

    .line 564
    iget-object v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v2}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 568
    .end local v1    # "info":Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;
    :goto_34
    return v3

    .line 559
    .restart local v1    # "info":Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v1    # "info":Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;
    :cond_38
    move v3, v2

    .line 568
    goto :goto_34
.end method

.method public setNumColumns(I)V
    .registers 3
    .param p1, "numColumns"    # I

    .prologue
    .line 515
    const/4 v0, 0x1

    if-ge p1, v0, :cond_4

    .line 522
    :cond_3
    :goto_3
    return-void

    .line 518
    :cond_4
    iget v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    if-eq v0, p1, :cond_3

    .line 519
    iput p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    .line 520
    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->notifyDataSetChanged()V

    goto :goto_3
.end method

.method public setRowHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .prologue
    .line 525
    iput p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mRowHeight:I

    .line 526
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 813
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 814
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_e

    .line 815
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 817
    :cond_e
    return-void
.end method
