.class public Lcom/duoku/platform/view/StickyListHeadersListView;
.super Landroid/widget/ListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/view/StickyListHeadersListView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/AbsListView$OnScrollListener;

.field private b:Z

.field private c:I

.field private d:Landroid/view/View;

.field private e:I

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Ljava/lang/Boolean;

.field private final h:Landroid/graphics/Rect;

.field private i:Ljava/lang/Long;

.field private j:Lcom/duoku/platform/view/a;

.field private k:F

.field private l:Z

.field private m:Lcom/duoku/platform/view/StickyListHeadersListView$a;

.field private n:I

.field private o:Landroid/view/ViewConfiguration;

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private q:Z

.field private r:Landroid/graphics/Rect;

.field private s:Ljava/lang/reflect/Field;

.field private t:Lcom/duoku/platform/view/a$a;

.field private u:Landroid/database/DataSetObserver;

.field private v:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 105
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/duoku/platform/view/StickyListHeadersListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 110
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    iput-boolean v1, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->b:Z

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->h:Landroid/graphics/Rect;

    .line 41
    iput-object v3, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->i:Ljava/lang/Long;

    .line 43
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->k:F

    .line 44
    iput-boolean v2, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->l:Z

    .line 49
    iput-boolean v2, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->q:Z

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->r:Landroid/graphics/Rect;

    .line 53
    new-instance v0, Lcom/duoku/platform/view/StickyListHeadersListView$1;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/StickyListHeadersListView$1;-><init>(Lcom/duoku/platform/view/StickyListHeadersListView;)V

    iput-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->t:Lcom/duoku/platform/view/a$a;

    .line 65
    new-instance v0, Lcom/duoku/platform/view/StickyListHeadersListView$2;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/StickyListHeadersListView$2;-><init>(Lcom/duoku/platform/view/StickyListHeadersListView;)V

    iput-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->u:Landroid/database/DataSetObserver;

    .line 77
    new-instance v0, Lcom/duoku/platform/view/StickyListHeadersListView$3;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/StickyListHeadersListView$3;-><init>(Lcom/duoku/platform/view/StickyListHeadersListView;)V

    iput-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->v:Landroid/widget/AbsListView$OnScrollListener;

    .line 112
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->v:Landroid/widget/AbsListView$OnScrollListener;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 115
    invoke-super {p0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 116
    invoke-super {p0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 117
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->o:Landroid/view/ViewConfiguration;

    .line 118
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_50

    .line 119
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->g:Ljava/lang/Boolean;

    .line 123
    :cond_50
    :try_start_50
    const-class v0, Landroid/widget/AbsListView;

    .line 124
    const-string v1, "mSelectorRect"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 125
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 126
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->r:Landroid/graphics/Rect;

    .line 128
    const-class v0, Landroid/widget/AbsListView;

    .line 129
    const-string v1, "mSelectorPosition"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 128
    iput-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->s:Ljava/lang/reflect/Field;

    .line 130
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->s:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_74
    .catch Ljava/lang/NoSuchFieldException; {:try_start_50 .. :try_end_74} :catch_79
    .catch Ljava/lang/IllegalArgumentException; {:try_start_50 .. :try_end_74} :catch_77
    .catch Ljava/lang/IllegalAccessException; {:try_start_50 .. :try_end_74} :catch_75

    .line 138
    :goto_74
    return-void

    .line 135
    :catch_75
    move-exception v0

    goto :goto_74

    .line 133
    :catch_77
    move-exception v0

    goto :goto_74

    .line 131
    :catch_79
    move-exception v0

    goto :goto_74
.end method

.method static synthetic a(Lcom/duoku/platform/view/StickyListHeadersListView;)Lcom/duoku/platform/view/StickyListHeadersListView$a;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->m:Lcom/duoku/platform/view/StickyListHeadersListView$a;

    return-object v0
.end method

.method private a(Landroid/widget/ListAdapter;)Lcom/duoku/platform/view/a;
    .registers 4

    .prologue
    .line 229
    instance-of v0, p1, Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_24

    .line 230
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/nw;

    invoke-virtual {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 231
    check-cast p1, Lcom/duoku/platform/view/i;

    .line 230
    invoke-direct {v0, v1, p1}, Lcom/baidu/bdgame/sdk/obf/nw;-><init>(Landroid/content/Context;Lcom/duoku/platform/view/i;)V

    .line 236
    :goto_f
    iget-object v1, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/view/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 237
    iget v1, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->e:I

    invoke-virtual {v0, v1}, Lcom/duoku/platform/view/a;->a(I)V

    .line 238
    iget-object v1, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->u:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/view/a;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 239
    iget-object v1, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->t:Lcom/duoku/platform/view/a$a;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/view/a;->a(Lcom/duoku/platform/view/a$a;)V

    .line 240
    return-object v0

    .line 233
    :cond_24
    new-instance v0, Lcom/duoku/platform/view/a;

    invoke-virtual {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 234
    check-cast p1, Lcom/duoku/platform/view/i;

    .line 233
    invoke-direct {v0, v1, p1}, Lcom/duoku/platform/view/a;-><init>(Landroid/content/Context;Lcom/duoku/platform/view/i;)V

    goto :goto_f
.end method

.method private a()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->d:Landroid/view/View;

    .line 152
    iput-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->i:Ljava/lang/Long;

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->c:I

    .line 154
    return-void
.end method

.method private a(I)V
    .registers 14

    .prologue
    const/4 v7, 0x0

    .line 353
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->j:Lcom/duoku/platform/view/a;

    if-nez v0, :cond_d

    move v0, v7

    .line 354
    :goto_6
    if-eqz v0, :cond_c

    iget-boolean v1, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->b:Z

    if-nez v1, :cond_14

    .line 428
    :cond_c
    :goto_c
    return-void

    .line 353
    :cond_d
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->j:Lcom/duoku/platform/view/a;

    invoke-virtual {v0}, Lcom/duoku/platform/view/a;->getCount()I

    move-result v0

    goto :goto_6

    .line 358
    :cond_14
    invoke-virtual {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->getHeaderViewsCount()I

    move-result v9

    .line 359
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/StickyListHeadersListView;->b(I)I

    move-result v1

    sub-int v10, v1, v9

    .line 362
    if-ltz v10, :cond_24

    add-int/lit8 v0, v0, -0x1

    if-le v10, v0, :cond_2e

    .line 363
    :cond_24
    invoke-direct {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->a()V

    .line 364
    invoke-direct {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->f()V

    .line 365
    invoke-virtual {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->invalidate()V

    goto :goto_c

    .line 369
    :cond_2e
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->j:Lcom/duoku/platform/view/a;

    invoke-virtual {v0, v10}, Lcom/duoku/platform/view/a;->getHeaderId(I)J

    move-result-wide v0

    .line 370
    iget-object v2, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->i:Ljava/lang/Long;

    if-eqz v2, :cond_42

    iget-object v2, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->i:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_59

    .line 371
    :cond_42
    iput v10, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->n:I

    .line 372
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->i:Ljava/lang/Long;

    .line 373
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->j:Lcom/duoku/platform/view/a;

    iget v1, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->n:I

    iget-object v2, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->d:Landroid/view/View;

    invoke-virtual {v0, v1, v2, p0}, Lcom/duoku/platform/view/a;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->d:Landroid/view/View;

    .line 374
    invoke-direct {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->d()V

    .line 377
    :cond_59
    invoke-virtual {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->getChildCount()I

    move-result v11

    .line 378
    if-eqz v11, :cond_8e

    .line 379
    const/4 v1, 0x0

    .line 380
    const v5, 0x7fffffff

    move v8, v7

    move v3, v7

    .line 383
    :goto_65
    if-lt v8, v11, :cond_96

    .line 404
    invoke-direct {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->e()I

    move-result v2

    .line 405
    if-eqz v1, :cond_109

    .line 406
    if-nez v3, :cond_78

    move-object v0, v1

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/nx;

    .line 407
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/nx;->a()Z

    move-result v0

    if-eqz v0, :cond_109

    .line 408
    :cond_78
    if-ne v10, v9, :cond_e5

    .line 409
    invoke-super {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-lez v0, :cond_e5

    .line 410
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_e5

    .line 411
    iput v7, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->c:I

    .line 426
    :cond_8e
    :goto_8e
    invoke-direct {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->f()V

    .line 427
    invoke-virtual {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->invalidate()V

    goto/16 :goto_c

    .line 384
    :cond_96
    invoke-super {p0, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 385
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_c4

    .line 386
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 385
    const/4 v4, 0x1

    .line 388
    :goto_a7
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    .line 389
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c6

    invoke-virtual {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->getPaddingTop()I

    move-result v0

    .line 388
    :goto_b7
    sub-int/2addr v6, v0

    .line 390
    if-gez v6, :cond_c8

    move v0, v3

    move-object v2, v1

    move v1, v5

    .line 383
    :goto_bd
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    move v5, v1

    move v3, v0

    move-object v1, v2

    goto :goto_65

    :cond_c4
    move v4, v7

    .line 385
    goto :goto_a7

    :cond_c6
    move v0, v7

    .line 389
    goto :goto_b7

    .line 394
    :cond_c8
    if-eqz v1, :cond_e2

    .line 395
    if-nez v3, :cond_d5

    move-object v0, v1

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/nx;

    .line 396
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/nx;->a()Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 397
    :cond_d5
    if-nez v4, :cond_e0

    move-object v0, v2

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/nx;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/nx;->a()Z

    move-result v0

    if-eqz v0, :cond_11b

    :cond_e0
    if-ge v6, v5, :cond_11b

    :cond_e2
    move v0, v4

    move v1, v6

    .line 400
    goto :goto_bd

    .line 413
    :cond_e5
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f1

    invoke-virtual {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->getPaddingTop()I

    move-result v7

    .line 415
    :cond_f1
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 416
    add-int v1, v2, v7

    .line 415
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->c:I

    .line 417
    iget v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->c:I

    if-ge v0, v7, :cond_106

    .line 418
    add-int v0, v2, v7

    .line 417
    :goto_103
    iput v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->c:I

    goto :goto_8e

    .line 419
    :cond_106
    iget v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->c:I

    goto :goto_103

    .line 423
    :cond_109
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_115

    invoke-virtual {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->getPaddingTop()I

    move-result v7

    :cond_115
    add-int v0, v2, v7

    .line 422
    iput v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->c:I

    goto/16 :goto_8e

    :cond_11b
    move v0, v3

    move-object v2, v1

    move v1, v5

    goto :goto_bd
.end method

.method private a(Landroid/graphics/Canvas;)V
    .registers 7

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->e()I

    move-result v0

    .line 309
    iget v1, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->c:I

    sub-int/2addr v1, v0

    .line 311
    iget-object v2, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->h:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->getPaddingLeft()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 312
    iget-object v2, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->h:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 313
    iget-object v2, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->h:Landroid/graphics/Rect;

    add-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 314
    iget-object v2, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->h:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-virtual {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->getPaddingTop()I

    move-result v0

    :goto_2f
    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 316
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 317
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->h:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 318
    invoke-virtual {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 319
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 320
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 321
    return-void

    .line 314
    :cond_4b
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method static synthetic a(Lcom/duoku/platform/view/StickyListHeadersListView;I)V
    .registers 2

    .prologue
    .line 351
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/StickyListHeadersListView;->a(I)V

    return-void
.end method

.method private b(I)I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 468
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_8

    .line 488
    :cond_7
    :goto_7
    return p1

    :cond_8
    move v0, v1

    .line 472
    :goto_9
    invoke-virtual {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_2c

    .line 481
    :goto_f
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->getPaddingTop()I

    move-result v0

    if-lez v0, :cond_7

    .line 482
    invoke-super {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-lez v0, :cond_7

    .line 483
    if-lez p1, :cond_7

    .line 484
    add-int/lit8 p1, p1, -0x1

    goto :goto_7

    .line 473
    :cond_2c
    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/StickyListHeadersListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ltz v2, :cond_38

    .line 474
    add-int/2addr p1, v0

    .line 475
    goto :goto_f

    .line 472
    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method private b()V
    .registers 4

    .prologue
    .line 275
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->r:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 276
    invoke-direct {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->c()I

    move-result v0

    .line 277
    if-ltz v0, :cond_2c

    .line 278
    invoke-virtual {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/duoku/platform/view/StickyListHeadersListView;->b(I)I

    move-result v1

    .line 279
    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/StickyListHeadersListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 280
    instance-of v1, v0, Lcom/baidu/bdgame/sdk/obf/nx;

    if-eqz v1, :cond_2c

    .line 281
    check-cast v0, Lcom/baidu/bdgame/sdk/obf/nx;

    .line 282
    iget-object v1, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->r:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/nx;->getTop()I

    move-result v2

    iget v0, v0, Lcom/baidu/bdgame/sdk/obf/nx;->e:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 286
    :cond_2c
    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/view/StickyListHeadersListView;)V
    .registers 1

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->a()V

    return-void
.end method

.method private c()I
    .registers 4

    .prologue
    .line 289
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->s:Ljava/lang/reflect/Field;

    if-nez v0, :cond_28

    .line 290
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_d

    .line 304
    :goto_b
    const/4 v0, -0x1

    :goto_c
    return v0

    .line 291
    :cond_d
    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/StickyListHeadersListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->r:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-ne v1, v2, :cond_25

    .line 292
    invoke-virtual {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/duoku/platform/view/StickyListHeadersListView;->b(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_c

    .line 290
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 297
    :cond_28
    :try_start_28
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->s:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_2d} :catch_2f
    .catch Ljava/lang/IllegalAccessException; {:try_start_28 .. :try_end_2d} :catch_34

    move-result v0

    goto :goto_c

    .line 298
    :catch_2f
    move-exception v0

    .line 299
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_b

    .line 300
    :catch_34
    move-exception v0

    .line 301
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_b
.end method

.method static synthetic c(Lcom/duoku/platform/view/StickyListHeadersListView;)Landroid/widget/AbsListView$OnScrollListener;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method private d()V
    .registers 6

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 324
    invoke-virtual {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->getWidth()I

    move-result v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 328
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_40

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_40

    .line 330
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 336
    :goto_1d
    iget-object v2, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->d:Landroid/view/View;

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 337
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->d:Landroid/view/View;

    invoke-virtual {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->getRight()I

    move-result v2

    .line 338
    invoke-virtual {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->d:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 337
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 339
    return-void

    .line 333
    :cond_40
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_1d
.end method

.method private e()I
    .registers 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->d:Landroid/view/View;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_5
.end method

.method private f()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 449
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->getPaddingTop()I

    move-result v0

    move v1, v0

    .line 450
    :goto_e
    invoke-virtual {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->getChildCount()I

    move-result v4

    move v3, v2

    .line 451
    :goto_13
    if-lt v3, v4, :cond_18

    .line 465
    return-void

    :cond_16
    move v1, v2

    .line 449
    goto :goto_e

    .line 452
    :cond_18
    invoke-super {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 453
    instance-of v5, v0, Lcom/baidu/bdgame/sdk/obf/nx;

    if-eqz v5, :cond_34

    .line 454
    check-cast v0, Lcom/baidu/bdgame/sdk/obf/nx;

    .line 455
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/nx;->a()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 456
    iget-object v5, v0, Lcom/baidu/bdgame/sdk/obf/nx;->d:Landroid/view/View;

    .line 457
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/nx;->getTop()I

    move-result v0

    if-ge v0, v1, :cond_38

    .line 458
    const/4 v0, 0x4

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 451
    :cond_34
    :goto_34
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_13

    .line 460
    :cond_38
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_34
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 432
    invoke-super {p0, p1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 433
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->p:Ljava/util/ArrayList;

    if-nez v0, :cond_e

    .line 434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->p:Ljava/util/ArrayList;

    .line 436
    :cond_e
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .prologue
    .line 249
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_d

    .line 250
    invoke-virtual {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/duoku/platform/view/StickyListHeadersListView;->a(I)V

    .line 252
    :cond_d
    invoke-direct {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->b()V

    .line 253
    iget-boolean v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->b:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->d:Landroid/view/View;

    if-nez v0, :cond_1c

    .line 254
    :cond_18
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 272
    :goto_1b
    return-void

    .line 258
    :cond_1c
    iget-boolean v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->q:Z

    if-nez v0, :cond_38

    .line 259
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->h:Landroid/graphics/Rect;

    .line 260
    const/4 v1, 0x0

    iget v2, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->c:I

    invoke-virtual {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 261
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 262
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->h:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 265
    :cond_38
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 267
    iget-boolean v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->q:Z

    if-nez v0, :cond_42

    .line 268
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 271
    :cond_42
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/StickyListHeadersListView;->a(Landroid/graphics/Canvas;)V

    goto :goto_1b
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    .prologue
    .line 142
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 144
    if-eqz p1, :cond_f

    .line 145
    invoke-direct {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->a()V

    .line 146
    invoke-virtual {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/duoku/platform/view/StickyListHeadersListView;->a(I)V

    .line 148
    :cond_f
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    const/high16 v4, -0x40800000    # -1.0f

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 535
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 536
    if-nez v0, :cond_35

    .line 537
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->c:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_35

    .line 538
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->k:F

    .line 539
    iput-boolean v6, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->l:Z

    .line 540
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->d:Landroid/view/View;

    if-eqz v0, :cond_2b

    .line 541
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->d:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 542
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 544
    :cond_2b
    invoke-virtual {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->c:I

    invoke-virtual {p0, v3, v3, v0, v1}, Lcom/duoku/platform/view/StickyListHeadersListView;->invalidate(IIII)V

    .line 575
    :cond_34
    :goto_34
    return v6

    .line 547
    :cond_35
    iget-boolean v1, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->l:Z

    if-eqz v1, :cond_a3

    .line 548
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->k:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->o:Landroid/view/ViewConfiguration;

    .line 549
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_88

    .line 550
    if-eq v0, v6, :cond_54

    .line 551
    const/4 v1, 0x3

    if-ne v0, v1, :cond_34

    .line 552
    :cond_54
    iput v4, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->k:F

    .line 553
    iput-boolean v3, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->l:Z

    .line 554
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->d:Landroid/view/View;

    if-eqz v0, :cond_66

    .line 555
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 556
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 558
    :cond_66
    invoke-virtual {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->c:I

    invoke-virtual {p0, v3, v3, v0, v1}, Lcom/duoku/platform/view/StickyListHeadersListView;->invalidate(IIII)V

    .line 559
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->m:Lcom/duoku/platform/view/StickyListHeadersListView$a;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->d:Landroid/view/View;

    if-eqz v0, :cond_34

    .line 560
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->m:Lcom/duoku/platform/view/StickyListHeadersListView$a;

    iget-object v2, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->d:Landroid/view/View;

    .line 561
    iget v3, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->n:I

    iget-object v1, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->i:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v1, p0

    .line 560
    invoke-interface/range {v0 .. v6}, Lcom/duoku/platform/view/StickyListHeadersListView$a;->a(Lcom/duoku/platform/view/StickyListHeadersListView;Landroid/view/View;IJZ)V

    goto :goto_34

    .line 566
    :cond_88
    iput v4, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->k:F

    .line 567
    iput-boolean v3, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->l:Z

    .line 568
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->d:Landroid/view/View;

    if-eqz v0, :cond_9a

    .line 569
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 570
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 572
    :cond_9a
    invoke-virtual {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->c:I

    invoke-virtual {p0, v3, v3, v0, v1}, Lcom/duoku/platform/view/StickyListHeadersListView;->invalidate(IIII)V

    .line 575
    :cond_a3
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_34
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .registers 6

    .prologue
    .line 158
    instance-of v0, p1, Lcom/baidu/bdgame/sdk/obf/nx;

    if-eqz v0, :cond_8

    .line 159
    check-cast p1, Lcom/baidu/bdgame/sdk/obf/nx;

    iget-object p1, p1, Lcom/baidu/bdgame/sdk/obf/nx;->a:Landroid/view/View;

    .line 161
    :cond_8
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 441
    invoke-super {p0, p1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 442
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 443
    const/4 v0, 0x1

    .line 445
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 208
    invoke-virtual {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 209
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 225
    :goto_a
    return-void

    .line 212
    :cond_b
    if-nez p1, :cond_16

    .line 213
    iput-object v1, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->j:Lcom/duoku/platform/view/a;

    .line 214
    invoke-direct {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->a()V

    .line 215
    invoke-super {p0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_a

    .line 218
    :cond_16
    instance-of v0, p1, Lcom/duoku/platform/view/i;

    if-nez v0, :cond_22

    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 220
    const-string v1, "Adapter must implement StickyListHeadersAdapter"

    .line 219
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_22
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/StickyListHeadersListView;->a(Landroid/widget/ListAdapter;)Lcom/duoku/platform/view/a;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->j:Lcom/duoku/platform/view/a;

    .line 223
    invoke-direct {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->a()V

    .line 224
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->j:Lcom/duoku/platform/view/a;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_a
.end method

.method public setClipToPadding(Z)V
    .registers 3

    .prologue
    .line 347
    invoke-super {p0, p1}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 348
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->g:Ljava/lang/Boolean;

    .line 349
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .prologue
    .line 166
    iput-object p1, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->f:Landroid/graphics/drawable/Drawable;

    .line 167
    if-eqz p1, :cond_d

    .line 168
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 169
    if-ltz v0, :cond_d

    .line 170
    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/StickyListHeadersListView;->setDividerHeight(I)V

    .line 173
    :cond_d
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->j:Lcom/duoku/platform/view/a;

    if-eqz v0, :cond_1c

    .line 174
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->j:Lcom/duoku/platform/view/a;

    invoke-virtual {v0, p1}, Lcom/duoku/platform/view/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 175
    invoke-virtual {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->requestLayout()V

    .line 176
    invoke-virtual {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->invalidate()V

    .line 178
    :cond_1c
    return-void
.end method

.method public setDividerHeight(I)V
    .registers 3

    .prologue
    .line 182
    iput p1, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->e:I

    .line 183
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->j:Lcom/duoku/platform/view/a;

    if-eqz v0, :cond_11

    .line 184
    iget-object v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->j:Lcom/duoku/platform/view/a;

    invoke-virtual {v0, p1}, Lcom/duoku/platform/view/a;->a(I)V

    .line 185
    invoke-virtual {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->requestLayout()V

    .line 186
    invoke-virtual {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->invalidate()V

    .line 188
    :cond_11
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .registers 2

    .prologue
    .line 192
    iput-object p1, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    .line 193
    return-void
.end method

.method public setSelectionFromTop(II)V
    .registers 3

    .prologue
    .line 496
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 497
    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->b:Z

    if-eqz v0, :cond_9

    .line 503
    invoke-direct {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->e()I

    move-result v0

    add-int/2addr p2, v0

    .line 505
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(II)V

    .line 506
    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 512
    iget-boolean v0, p0, Lcom/duoku/platform/view/StickyListHeadersListView;->b:Z

    if-eqz v0, :cond_9

    .line 513
    invoke-direct {p0}, Lcom/duoku/platform/view/StickyListHeadersListView;->e()I

    move-result v0

    add-int/2addr p2, v0

    .line 515
    :cond_9
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    .line 516
    return-void
.end method
