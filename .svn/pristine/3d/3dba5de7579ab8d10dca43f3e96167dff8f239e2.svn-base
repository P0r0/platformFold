.class public abstract Lcom/baidu/bdgame/sdk/obf/mq;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/mq$a;,
        Lcom/baidu/bdgame/sdk/obf/mq$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final g:I = 0x0

.field public static final h:I = 0x1

.field public static final i:I = 0x2


# instance fields
.field public b:I

.field c:I

.field d:Z

.field e:Lcom/baidu/bdgame/sdk/obf/mq$a;

.field f:I

.field private j:Landroid/content/Context;

.field private k:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/baidu/bdgame/sdk/obf/mq;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/mq;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 48
    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/mq;->b:I

    .line 49
    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/mq;->c:I

    .line 50
    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/mq;->d:Z

    .line 53
    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/mq;->f:I

    .line 332
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/mq$2;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/mq$2;-><init>(Lcom/baidu/bdgame/sdk/obf/mq;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mq;->k:Landroid/os/Handler;

    .line 38
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/mq;->j:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private a()V
    .registers 1

    .prologue
    .line 325
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 326
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/mq;)V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/mq;->a()V

    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/mq;)V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/mq;->k()V

    return-void
.end method

.method private k()V
    .registers 1

    .prologue
    .line 329
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 330
    return-void
.end method


# virtual methods
.method protected a(Lcom/baidu/bdgame/sdk/obf/mq$b;)I
    .registers 4

    .prologue
    .line 225
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mq;->j:Landroid/content/Context;

    const-string v1, "bdp_white"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 227
    return v0
.end method

.method public abstract a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract a(Landroid/view/View;II)V
.end method

.method protected a(Landroid/view/View;ILcom/baidu/bdgame/sdk/obf/mq$b;)V
    .registers 5

    .prologue
    .line 238
    if-nez p1, :cond_3

    .line 244
    :goto_2
    return-void

    .line 242
    :cond_3
    invoke-virtual {p0, p3}, Lcom/baidu/bdgame/sdk/obf/mq;->a(Lcom/baidu/bdgame/sdk/obf/mq$b;)I

    move-result v0

    .line 243
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method protected abstract a(Landroid/view/View;IZ)V
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/mq$a;)V
    .registers 2

    .prologue
    .line 60
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/mq;->e:Lcom/baidu/bdgame/sdk/obf/mq$a;

    .line 61
    return-void
.end method

.method protected abstract a(Z)V
.end method

.method protected b()Landroid/content/Context;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mq;->j:Landroid/content/Context;

    return-object v0
.end method

.method protected abstract b(I)V
.end method

.method public c()I
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/mq;->f:I

    return v0
.end method

.method public c(I)I
    .registers 4

    .prologue
    .line 86
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mq;->getCount()I

    move-result v0

    if-nez v0, :cond_a

    .line 87
    :cond_8
    const/4 v0, 0x0

    .line 98
    :goto_9
    return v0

    .line 92
    :cond_a
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/mq;->getSectionForPosition(I)I

    move-result v0

    .line 93
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/mq;->getPositionForSection(I)I

    move-result v0

    .line 94
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1d

    .line 95
    const/4 v0, 0x2

    goto :goto_9

    .line 98
    :cond_1d
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public d()V
    .registers 2

    .prologue
    .line 113
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/mq;->c:I

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/mq;->b:I

    .line 114
    return-void
.end method

.method public d(I)V
    .registers 2

    .prologue
    .line 106
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/mq;->c:I

    .line 107
    return-void
.end method

.method protected e(I)Lcom/baidu/bdgame/sdk/obf/mq$b;
    .registers 4

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mq;->getCount()I

    move-result v0

    .line 191
    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 192
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/mq$b;->d:Lcom/baidu/bdgame/sdk/obf/mq$b;

    .line 206
    :goto_9
    return-object v0

    .line 196
    :cond_a
    if-nez p1, :cond_f

    .line 197
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/mq$b;->a:Lcom/baidu/bdgame/sdk/obf/mq$b;

    goto :goto_9

    .line 201
    :cond_f
    add-int/lit8 v1, p1, 0x1

    if-ne v1, v0, :cond_16

    .line 202
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/mq$b;->c:Lcom/baidu/bdgame/sdk/obf/mq$b;

    goto :goto_9

    .line 206
    :cond_16
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/mq$b;->b:Lcom/baidu/bdgame/sdk/obf/mq$b;

    goto :goto_9
.end method

.method public e()V
    .registers 2

    .prologue
    .line 120
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/mq;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/mq;->b:I

    .line 121
    return-void
.end method

.method public f()V
    .registers 2

    .prologue
    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/mq;->d:Z

    .line 248
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mq;->e:Lcom/baidu/bdgame/sdk/obf/mq$a;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mq;->e:Lcom/baidu/bdgame/sdk/obf/mq$a;

    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/mq$a;->a()V

    .line 249
    :cond_c
    return-void
.end method

.method public f(I)V
    .registers 3

    .prologue
    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/mq;->a(Z)V

    .line 285
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/mq;->b(I)V

    .line 286
    return-void
.end method

.method public g()V
    .registers 2

    .prologue
    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/mq;->d:Z

    .line 255
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mq;->e:Lcom/baidu/bdgame/sdk/obf/mq$a;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mq;->e:Lcom/baidu/bdgame/sdk/obf/mq$a;

    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/mq$a;->c()V

    .line 256
    :cond_c
    return-void
.end method

.method public abstract getPositionForSection(I)I
.end method

.method public abstract getSectionForPosition(I)I
.end method

.method public abstract getSections()[Ljava/lang/Object;
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v0, 0x0

    .line 161
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/mq;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 164
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mq;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_1a

    iget-boolean v2, p0, Lcom/baidu/bdgame/sdk/obf/mq;->d:Z

    if-eqz v2, :cond_1a

    .line 166
    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/mq;->d:Z

    .line 167
    iget v2, p0, Lcom/baidu/bdgame/sdk/obf/mq;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/baidu/bdgame/sdk/obf/mq;->f(I)V

    .line 170
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/mq;->getSectionForPosition(I)I

    move-result v2

    .line 171
    invoke-virtual {p0, v2}, Lcom/baidu/bdgame/sdk/obf/mq;->getPositionForSection(I)I

    move-result v2

    if-ne v2, p1, :cond_25

    const/4 v0, 0x1

    .line 173
    :cond_25
    invoke-virtual {p0, v1, p1, v0}, Lcom/baidu/bdgame/sdk/obf/mq;->a(Landroid/view/View;IZ)V

    .line 176
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/mq;->e(I)Lcom/baidu/bdgame/sdk/obf/mq$b;

    move-result-object v0

    invoke-virtual {p0, v1, p1, v0}, Lcom/baidu/bdgame/sdk/obf/mq;->a(Landroid/view/View;ILcom/baidu/bdgame/sdk/obf/mq$b;)V

    .line 178
    return-object v1
.end method

.method public h()V
    .registers 2

    .prologue
    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/mq;->d:Z

    .line 260
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mq;->e:Lcom/baidu/bdgame/sdk/obf/mq$a;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mq;->e:Lcom/baidu/bdgame/sdk/obf/mq$a;

    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/mq$a;->b()V

    .line 261
    :cond_c
    return-void
.end method

.method public i()V
    .registers 2

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mq;->j()V

    .line 267
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mq;->notifyDataSetChanged()V

    .line 268
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mq;->d()V

    .line 269
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mq;->h()V

    .line 270
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/mq;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/mq;->f(I)V

    .line 271
    return-void
.end method

.method protected abstract j()V
.end method

.method public notifyDataSetChanged()V
    .registers 1

    .prologue
    .line 125
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 127
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .registers 1

    .prologue
    .line 131
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 133
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 6
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 137
    instance-of v0, p1, Lcom/baidu/platformsdk/widget/AmazingListView;

    if-eqz v0, :cond_9

    .line 138
    check-cast p1, Lcom/baidu/platformsdk/widget/AmazingListView;

    .end local p1    # "view":Landroid/widget/AbsListView;
    invoke-virtual {p1, p2}, Lcom/baidu/platformsdk/widget/AmazingListView;->a(I)V

    .line 140
    :cond_9
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 144
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/mq;->f:I

    if-eq p2, v0, :cond_10

    if-nez p2, :cond_10

    .line 145
    iput p2, p0, Lcom/baidu/bdgame/sdk/obf/mq;->f:I

    .line 146
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/mq$1;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/mq$1;-><init>(Lcom/baidu/bdgame/sdk/obf/mq;)V

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 156
    :cond_10
    iput p2, p0, Lcom/baidu/bdgame/sdk/obf/mq;->f:I

    .line 157
    return-void
.end method
