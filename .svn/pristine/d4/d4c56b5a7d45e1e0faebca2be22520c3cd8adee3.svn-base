.class public Lin/srain/cube/views/GridViewWithHeaderAndFooter;
.super Landroid/widget/GridView;
.source "GridViewWithHeaderAndFooter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/srain/cube/views/GridViewWithHeaderAndFooter$ItemClickHandler;,
        Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;,
        Lin/srain/cube/views/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;,
        Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "GridViewHeaderAndFooter"


# instance fields
.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mItemClickHandler:Lin/srain/cube/views/GridViewWithHeaderAndFooter$ItemClickHandler;

.field private mNumColumns:I

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mOriginalAdapter:Landroid/widget/ListAdapter;

.field private mRowHeight:I

.field private mViewForMeasureRowHeight:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 92
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 70
    iput v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mNumColumns:I

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mViewForMeasureRowHeight:Landroid/view/View;

    .line 74
    iput v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mRowHeight:I

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 93
    invoke-direct {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->initHeaderGridView()V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, -0x1

    .line 97
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    iput v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mNumColumns:I

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mViewForMeasureRowHeight:Landroid/view/View;

    .line 74
    iput v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mRowHeight:I

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 98
    invoke-direct {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->initHeaderGridView()V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, -0x1

    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    iput v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mNumColumns:I

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mViewForMeasureRowHeight:Landroid/view/View;

    .line 74
    iput v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mRowHeight:I

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 103
    invoke-direct {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->initHeaderGridView()V

    .line 104
    return-void
.end method

.method static synthetic access$200(Lin/srain/cube/views/GridViewWithHeaderAndFooter;)Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2
    .param p0, "x0"    # Lin/srain/cube/views/GridViewWithHeaderAndFooter;

    .prologue
    .line 38
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lin/srain/cube/views/GridViewWithHeaderAndFooter;)I
    .registers 2
    .param p0, "x0"    # Lin/srain/cube/views/GridViewWithHeaderAndFooter;

    .prologue
    .line 38
    invoke-direct {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getNumColumnsCompatible()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lin/srain/cube/views/GridViewWithHeaderAndFooter;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .registers 2
    .param p0, "x0"    # Lin/srain/cube/views/GridViewWithHeaderAndFooter;

    .prologue
    .line 38
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method private getColumnWidthCompatible()I
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 287
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_b

    .line 288
    invoke-super {p0}, Landroid/widget/GridView;->getColumnWidth()I

    move-result v2

    .line 294
    :goto_a
    return v2

    .line 292
    :cond_b
    :try_start_b
    const-class v2, Landroid/widget/GridView;

    const-string v3, "mColumnWidth"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 293
    .local v1, "numColumns":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 294
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_b .. :try_end_1a} :catch_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_1a} :catch_23

    move-result v2

    goto :goto_a

    .line 295
    .end local v1    # "numColumns":Ljava/lang/reflect/Field;
    :catch_1c
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 297
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_23
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getItemClickHandler()Lin/srain/cube/views/GridViewWithHeaderAndFooter$ItemClickHandler;
    .registers 3

    .prologue
    .line 850
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mItemClickHandler:Lin/srain/cube/views/GridViewWithHeaderAndFooter$ItemClickHandler;

    if-nez v0, :cond_c

    .line 851
    new-instance v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$ItemClickHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$ItemClickHandler;-><init>(Lin/srain/cube/views/GridViewWithHeaderAndFooter;Lin/srain/cube/views/GridViewWithHeaderAndFooter$1;)V

    iput-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mItemClickHandler:Lin/srain/cube/views/GridViewWithHeaderAndFooter$ItemClickHandler;

    .line 853
    :cond_c
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mItemClickHandler:Lin/srain/cube/views/GridViewWithHeaderAndFooter$ItemClickHandler;

    return-object v0
.end method

.method private getNumColumnsCompatible()I
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 268
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_b

    .line 269
    invoke-super {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v2

    .line 278
    :goto_a
    return v2

    .line 273
    :cond_b
    :try_start_b
    const-class v2, Landroid/widget/GridView;

    const-string v3, "mNumColumns"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 274
    .local v1, "numColumns":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 275
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1a} :catch_1c

    move-result v2

    goto :goto_a

    .line 276
    .end local v1    # "numColumns":Ljava/lang/reflect/Field;
    :catch_1c
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    iget v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mNumColumns:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_25

    .line 278
    iget v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mNumColumns:I

    goto :goto_a

    .line 280
    :cond_25
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Can not determine the mNumColumns for this API platform, please call setNumColumns to set it."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private initHeaderGridView()V
    .registers 1

    .prologue
    .line 89
    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p2, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 257
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v2, :cond_14

    .line 258
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;

    .line 259
    .local v1, "info":Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;
    iget-object v3, v1, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_15

    .line 260
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 264
    .end local v1    # "info":Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;
    :cond_14
    return-void

    .line 257
    .restart local v1    # "info":Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 181
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 182
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 185
    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 186
    .local v3, "mAdapter":Landroid/widget/ListAdapter;
    if-eqz v3, :cond_12

    instance-of v4, v3, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;

    if-nez v4, :cond_12

    .line 187
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Cannot add header view to grid -- setAdapter has already been called."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 189
    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 190
    .local v2, "lyp":Landroid/view/ViewGroup$LayoutParams;
    new-instance v1, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;-><init>(Lin/srain/cube/views/GridViewWithHeaderAndFooter$1;)V

    .line 191
    .local v1, "info":Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;
    new-instance v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;

    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, p0, v4}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;-><init>(Lin/srain/cube/views/GridViewWithHeaderAndFooter;Landroid/content/Context;)V

    .line 192
    .local v0, "fl":Landroid/widget/FrameLayout;
    if-eqz v2, :cond_3f

    .line 193
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    :cond_3f
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 197
    iput-object p1, v1, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;->view:Landroid/view/View;

    .line 198
    iput-object v0, v1, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;->viewContainer:Landroid/view/ViewGroup;

    .line 199
    iput-object p2, v1, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;->data:Ljava/lang/Object;

    .line 200
    iput-boolean p3, v1, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;->isSelectable:Z

    .line 201
    iget-object v4, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    if-eqz v3, :cond_56

    .line 203
    check-cast v3, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;

    .end local v3    # "mAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v3}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->notifyDataSetChanged()V

    .line 205
    :cond_56
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 141
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 142
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 157
    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 158
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_12

    instance-of v4, v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;

    if-nez v4, :cond_12

    .line 159
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Cannot add header view to grid -- setAdapter has already been called."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 161
    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 162
    .local v3, "lyp":Landroid/view/ViewGroup$LayoutParams;
    new-instance v2, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;-><init>(Lin/srain/cube/views/GridViewWithHeaderAndFooter$1;)V

    .line 163
    .local v2, "info":Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;
    new-instance v1, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;

    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;-><init>(Lin/srain/cube/views/GridViewWithHeaderAndFooter;Landroid/content/Context;)V

    .line 164
    .local v1, "fl":Landroid/widget/FrameLayout;
    if-eqz v3, :cond_3f

    .line 165
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    :cond_3f
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 169
    iput-object p1, v2, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;->view:Landroid/view/View;

    .line 170
    iput-object v1, v2, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;->viewContainer:Landroid/view/ViewGroup;

    .line 171
    iput-object p2, v2, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;->data:Ljava/lang/Object;

    .line 172
    iput-boolean p3, v2, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;->isSelectable:Z

    .line 173
    iget-object v4, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    if-eqz v0, :cond_56

    .line 176
    check-cast v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->notifyDataSetChanged()V

    .line 178
    :cond_56
    return-void
.end method

.method public getFooterViewCount()I
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderHeight(I)I
    .registers 3
    .param p1, "row"    # I

    .prologue
    .line 314
    if-ltz p1, :cond_11

    .line 315
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;

    iget-object v0, v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$FixedViewInfo;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 317
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getHeaderViewCount()I
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHorizontalSpacing()I
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 340
    const/4 v2, 0x0

    .line 342
    .local v2, "value":I
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 343
    .local v0, "currentapiVersion":I
    const/16 v3, 0x10

    if-ge v0, v3, :cond_18

    .line 345
    const-class v3, Landroid/widget/GridView;

    const-string v4, "mHorizontalSpacing"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 346
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 347
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 353
    .end local v0    # "currentapiVersion":I
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_17
    return v2

    .line 349
    .restart local v0    # "currentapiVersion":I
    :cond_18
    invoke-super {p0}, Landroid/widget/GridView;->getHorizontalSpacing()I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1d

    move-result v2

    goto :goto_17

    .line 351
    .end local v0    # "currentapiVersion":I
    :catch_1d
    move-exception v3

    goto :goto_17
.end method

.method public getOriginalAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 423
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mOriginalAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getRowHeight()I
    .registers 13

    .prologue
    const/4 v7, -0x1

    const/4 v11, 0x0

    .line 357
    iget v8, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mRowHeight:I

    if-lez v8, :cond_9

    .line 358
    iget v7, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mRowHeight:I

    .line 378
    :cond_8
    :goto_8
    return v7

    .line 360
    :cond_9
    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 361
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-direct {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getNumColumnsCompatible()I

    move-result v4

    .line 363
    .local v4, "numColumns":I
    if-eqz v0, :cond_8

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    iget-object v9, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget-object v10, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/2addr v9, v10

    mul-int/2addr v9, v4

    if-le v8, v9, :cond_8

    .line 366
    invoke-direct {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getColumnWidthCompatible()I

    move-result v3

    .line 367
    .local v3, "mColumnWidth":I
    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    iget-object v9, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    mul-int/2addr v9, v4

    iget-object v10, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mViewForMeasureRowHeight:Landroid/view/View;

    invoke-interface {v8, v9, v10, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 368
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/AbsListView$LayoutParams;

    .line 369
    .local v5, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v5, :cond_4d

    .line 370
    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    .end local v5    # "p":Landroid/widget/AbsListView$LayoutParams;
    const/4 v8, -0x2

    invoke-direct {v5, v7, v8, v11}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 371
    .restart local v5    # "p":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    :cond_4d
    invoke-static {v11, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget v8, v5, Landroid/widget/AbsListView$LayoutParams;->height:I

    invoke-static {v7, v11, v8}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getChildMeasureSpec(III)I

    move-result v1

    .line 374
    .local v1, "childHeightSpec":I
    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget v8, v5, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {v7, v11, v8}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getChildMeasureSpec(III)I

    move-result v2

    .line 375
    .local v2, "childWidthSpec":I
    invoke-virtual {v6, v2, v1}, Landroid/view/View;->measure(II)V

    .line 376
    iput-object v6, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mViewForMeasureRowHeight:Landroid/view/View;

    .line 377
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iput v7, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mRowHeight:I

    .line 378
    iget v7, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mRowHeight:I

    goto :goto_8
.end method

.method public getVerticalSpacing()I
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 322
    const/4 v2, 0x0

    .line 324
    .local v2, "value":I
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 325
    .local v0, "currentapiVersion":I
    const/16 v3, 0x10

    if-ge v0, v3, :cond_18

    .line 327
    const-class v3, Landroid/widget/GridView;

    const-string v4, "mVerticalSpacing"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 328
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 329
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 335
    .end local v0    # "currentapiVersion":I
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_17
    return v2

    .line 331
    .restart local v0    # "currentapiVersion":I
    :cond_18
    invoke-super {p0}, Landroid/widget/GridView;->getVerticalSpacing()I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1d

    move-result v2

    goto :goto_17

    .line 333
    .end local v0    # "currentapiVersion":I
    :catch_1d
    move-exception v3

    goto :goto_17
.end method

.method public invalidateRowHeight()V
    .registers 2

    .prologue
    .line 310
    const/4 v0, -0x1

    iput v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mRowHeight:I

    .line 311
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 305
    invoke-super {p0}, Landroid/widget/GridView;->onDetachedFromWindow()V

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mViewForMeasureRowHeight:Landroid/view/View;

    .line 307
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 108
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 109
    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 110
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_20

    instance-of v1, v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;

    if-eqz v1, :cond_20

    move-object v1, v0

    .line 111
    check-cast v1, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;

    invoke-direct {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getNumColumnsCompatible()I

    move-result v2

    invoke-virtual {v1, v2}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->setNumColumns(I)V

    .line 112
    check-cast v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getRowHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->setRowHeight(I)V

    .line 114
    :cond_20
    return-void
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 243
    iget-object v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1e

    .line 244
    const/4 v1, 0x0

    .line 245
    .local v1, "result":Z
    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 246
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_18

    check-cast v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0, p1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 247
    const/4 v1, 0x1

    .line 249
    :cond_18
    iget-object v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 252
    .end local v1    # "result":Z
    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 223
    iget-object v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1e

    .line 224
    const/4 v1, 0x0

    .line 225
    .local v1, "result":Z
    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 226
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_18

    check-cast v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0, p1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 227
    const/4 v1, 0x1

    .line 229
    :cond_18
    iget-object v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 232
    .end local v1    # "result":Z
    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2

    .prologue
    .line 38
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 6
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 403
    iput-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mOriginalAdapter:Landroid/widget/ListAdapter;

    .line 404
    iget-object v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_12

    iget-object v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_30

    .line 405
    :cond_12
    new-instance v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;

    iget-object v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v3, p1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    .line 406
    .local v0, "headerViewGridAdapter":Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;
    invoke-direct {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getNumColumnsCompatible()I

    move-result v1

    .line 407
    .local v1, "numColumns":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_25

    .line 408
    invoke-virtual {v0, v1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->setNumColumns(I)V

    .line 410
    :cond_25
    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getRowHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->setRowHeight(I)V

    .line 411
    invoke-super {p0, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 415
    .end local v0    # "headerViewGridAdapter":Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;
    .end local v1    # "numColumns":I
    :goto_2f
    return-void

    .line 413
    :cond_30
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2f
.end method

.method public setClipChildren(Z)V
    .registers 2
    .param p1, "clipChildren"    # Z

    .prologue
    .line 119
    return-void
.end method

.method public setClipChildrenSupper(Z)V
    .registers 3
    .param p1, "clipChildren"    # Z

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/GridView;->setClipChildren(Z)V

    .line 128
    return-void
.end method

.method public setNumColumns(I)V
    .registers 4
    .param p1, "numColumns"    # I

    .prologue
    .line 455
    invoke-super {p0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 456
    iput p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mNumColumns:I

    .line 457
    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 458
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;

    if-eqz v1, :cond_14

    .line 459
    check-cast v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0, p1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->setNumColumns(I)V

    .line 461
    :cond_14
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 3
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 839
    iput-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 840
    invoke-direct {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getItemClickHandler()Lin/srain/cube/views/GridViewWithHeaderAndFooter$ItemClickHandler;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 841
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .prologue
    .line 845
    iput-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 846
    invoke-direct {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getItemClickHandler()Lin/srain/cube/views/GridViewWithHeaderAndFooter$ItemClickHandler;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 847
    return-void
.end method

.method public tryToScrollToBottomSmoothly()V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 383
    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 384
    .local v0, "lastPos":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_15

    .line 385
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->smoothScrollToPositionFromTop(II)V

    .line 389
    :goto_14
    return-void

    .line 387
    :cond_15
    invoke-virtual {p0, v0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->setSelection(I)V

    goto :goto_14
.end method

.method public tryToScrollToBottomSmoothly(I)V
    .registers 5
    .param p1, "duration"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 393
    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 394
    .local v0, "lastPos":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_15

    .line 395
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->smoothScrollToPositionFromTop(III)V

    .line 399
    :goto_14
    return-void

    .line 397
    :cond_15
    invoke-virtual {p0, v0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->setSelection(I)V

    goto :goto_14
.end method
