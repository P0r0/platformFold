.class public Lcom/duoku/platform/view/a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/view/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/view/a$a;
    }
.end annotation


# instance fields
.field final a:Lcom/duoku/platform/view/i;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:I

.field private f:Lcom/duoku/platform/view/a$a;

.field private g:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/duoku/platform/view/i;)V
    .registers 4

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/view/a;->b:Ljava/util/List;

    .line 39
    new-instance v0, Lcom/duoku/platform/view/a$1;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/a$1;-><init>(Lcom/duoku/platform/view/a;)V

    iput-object v0, p0, Lcom/duoku/platform/view/a;->g:Landroid/database/DataSetObserver;

    .line 55
    iput-object p1, p0, Lcom/duoku/platform/view/a;->c:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/duoku/platform/view/a;->a:Lcom/duoku/platform/view/i;

    .line 57
    iget-object v0, p0, Lcom/duoku/platform/view/a;->g:Landroid/database/DataSetObserver;

    invoke-interface {p2, v0}, Lcom/duoku/platform/view/i;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 58
    return-void
.end method

.method private a()Landroid/view/View;
    .registers 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/duoku/platform/view/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 150
    iget-object v0, p0, Lcom/duoku/platform/view/a;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 152
    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/nx;I)Landroid/view/View;
    .registers 5

    .prologue
    .line 128
    iget-object v0, p1, Lcom/baidu/bdgame/sdk/obf/nx;->d:Landroid/view/View;

    if-nez v0, :cond_18

    invoke-direct {p0}, Lcom/duoku/platform/view/a;->a()Landroid/view/View;

    move-result-object v0

    .line 129
    :goto_8
    iget-object v1, p0, Lcom/duoku/platform/view/a;->a:Lcom/duoku/platform/view/i;

    invoke-interface {v1, p2, v0, p1}, Lcom/duoku/platform/view/i;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 130
    if-nez v0, :cond_1b

    .line 131
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Header view must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_18
    iget-object v0, p1, Lcom/baidu/bdgame/sdk/obf/nx;->d:Landroid/view/View;

    goto :goto_8

    .line 134
    :cond_1b
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 135
    new-instance v1, Lcom/duoku/platform/view/a$2;

    invoke-direct {v1, p0, p2}, Lcom/duoku/platform/view/a$2;-><init>(Lcom/duoku/platform/view/a;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    return-object v0
.end method

.method static synthetic a(Lcom/duoku/platform/view/a;)Ljava/util/List;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/duoku/platform/view/a;->b:Ljava/util/List;

    return-object v0
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/nx;)V
    .registers 4

    .prologue
    .line 117
    iget-object v0, p1, Lcom/baidu/bdgame/sdk/obf/nx;->d:Landroid/view/View;

    .line 118
    if-eqz v0, :cond_9

    .line 119
    iget-object v1, p0, Lcom/duoku/platform/view/a;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_9
    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/view/a;)V
    .registers 1

    .prologue
    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.method private b(I)Z
    .registers 6

    .prologue
    .line 157
    if-eqz p1, :cond_16

    .line 158
    iget-object v0, p0, Lcom/duoku/platform/view/a;->a:Lcom/duoku/platform/view/i;

    invoke-interface {v0, p1}, Lcom/duoku/platform/view/i;->getHeaderId(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/duoku/platform/view/a;->a:Lcom/duoku/platform/view/i;

    .line 159
    add-int/lit8 v3, p1, -0x1

    invoke-interface {v2, v3}, Lcom/duoku/platform/view/i;->getHeaderId(I)J

    move-result-wide v2

    .line 158
    cmp-long v0, v0, v2

    if-nez v0, :cond_16

    .line 157
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method static synthetic c(Lcom/duoku/platform/view/a;)V
    .registers 1

    .prologue
    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic d(Lcom/duoku/platform/view/a;)Lcom/duoku/platform/view/a$a;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/duoku/platform/view/a;->f:Lcom/duoku/platform/view/a$a;

    return-object v0
.end method


# virtual methods
.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Lcom/baidu/bdgame/sdk/obf/nx;
    .registers 8

    .prologue
    .line 164
    if-nez p2, :cond_32

    new-instance p2, Lcom/baidu/bdgame/sdk/obf/nx;

    iget-object v0, p0, Lcom/duoku/platform/view/a;->c:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/baidu/bdgame/sdk/obf/nx;-><init>(Landroid/content/Context;)V

    .line 165
    :goto_9
    iget-object v0, p0, Lcom/duoku/platform/view/a;->a:Lcom/duoku/platform/view/i;

    iget-object v1, p2, Lcom/baidu/bdgame/sdk/obf/nx;->a:Landroid/view/View;

    invoke-interface {v0, p1, v1, p2}, Lcom/duoku/platform/view/i;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 166
    const/4 v0, 0x0

    .line 167
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/a;->b(I)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 168
    invoke-direct {p0, p2}, Lcom/duoku/platform/view/a;->a(Lcom/baidu/bdgame/sdk/obf/nx;)V

    .line 172
    :goto_1b
    instance-of v2, v1, Landroid/widget/Checkable;

    if-eqz v2, :cond_3a

    instance-of v2, p2, Lcom/baidu/bdgame/sdk/obf/nv;

    if-nez v2, :cond_3a

    .line 174
    new-instance p2, Lcom/baidu/bdgame/sdk/obf/nv;

    iget-object v2, p0, Lcom/duoku/platform/view/a;->c:Landroid/content/Context;

    invoke-direct {p2, v2}, Lcom/baidu/bdgame/sdk/obf/nv;-><init>(Landroid/content/Context;)V

    .line 178
    :cond_2a
    :goto_2a
    iget-object v2, p0, Lcom/duoku/platform/view/a;->d:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/duoku/platform/view/a;->e:I

    invoke-virtual {p2, v1, v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/nx;->a(Landroid/view/View;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 179
    return-object p2

    .line 164
    :cond_32
    check-cast p2, Lcom/baidu/bdgame/sdk/obf/nx;

    goto :goto_9

    .line 170
    :cond_35
    invoke-direct {p0, p2, p1}, Lcom/duoku/platform/view/a;->a(Lcom/baidu/bdgame/sdk/obf/nx;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1b

    .line 175
    :cond_3a
    instance-of v2, v1, Landroid/widget/Checkable;

    if-nez v2, :cond_2a

    instance-of v2, p2, Lcom/baidu/bdgame/sdk/obf/nv;

    if-eqz v2, :cond_2a

    .line 176
    new-instance p2, Lcom/baidu/bdgame/sdk/obf/nx;

    iget-object v2, p0, Lcom/duoku/platform/view/a;->c:Landroid/content/Context;

    invoke-direct {p2, v2}, Lcom/baidu/bdgame/sdk/obf/nx;-><init>(Landroid/content/Context;)V

    goto :goto_2a
.end method

.method a(I)V
    .registers 2

    .prologue
    .line 65
    iput p1, p0, Lcom/duoku/platform/view/a;->e:I

    .line 66
    return-void
.end method

.method a(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .prologue
    .line 61
    iput-object p1, p0, Lcom/duoku/platform/view/a;->d:Landroid/graphics/drawable/Drawable;

    .line 62
    return-void
.end method

.method public a(Lcom/duoku/platform/view/a$a;)V
    .registers 2

    .prologue
    .line 183
    iput-object p1, p0, Lcom/duoku/platform/view/a;->f:Lcom/duoku/platform/view/a$a;

    .line 184
    return-void
.end method

.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/duoku/platform/view/a;->a:Lcom/duoku/platform/view/i;

    invoke-interface {v0}, Lcom/duoku/platform/view/i;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/duoku/platform/view/a;->a:Lcom/duoku/platform/view/i;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/duoku/platform/view/a;->a:Lcom/duoku/platform/view/i;

    invoke-interface {v0}, Lcom/duoku/platform/view/i;->getCount()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .prologue
    .line 193
    iget-object v0, p0, Lcom/duoku/platform/view/a;->a:Lcom/duoku/platform/view/i;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/BaseAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderId(I)J
    .registers 4

    .prologue
    .line 223
    iget-object v0, p0, Lcom/duoku/platform/view/a;->a:Lcom/duoku/platform/view/i;

    invoke-interface {v0, p1}, Lcom/duoku/platform/view/i;->getHeaderId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .prologue
    .line 218
    iget-object v0, p0, Lcom/duoku/platform/view/a;->a:Lcom/duoku/platform/view/i;

    invoke-interface {v0, p1, p2, p3}, Lcom/duoku/platform/view/i;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/duoku/platform/view/a;->a:Lcom/duoku/platform/view/i;

    invoke-interface {v0, p1}, Lcom/duoku/platform/view/i;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/duoku/platform/view/a;->a:Lcom/duoku/platform/view/i;

    invoke-interface {v0, p1}, Lcom/duoku/platform/view/i;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/duoku/platform/view/a;->a:Lcom/duoku/platform/view/i;

    invoke-interface {v0, p1}, Lcom/duoku/platform/view/i;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public synthetic getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/duoku/platform/view/a;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Lcom/baidu/bdgame/sdk/obf/nx;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/duoku/platform/view/a;->a:Lcom/duoku/platform/view/i;

    invoke-interface {v0}, Lcom/duoku/platform/view/i;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/duoku/platform/view/a;->a:Lcom/duoku/platform/view/i;

    invoke-interface {v0}, Lcom/duoku/platform/view/i;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/duoku/platform/view/a;->a:Lcom/duoku/platform/view/i;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/duoku/platform/view/a;->a:Lcom/duoku/platform/view/i;

    invoke-interface {v0}, Lcom/duoku/platform/view/i;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .registers 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/duoku/platform/view/a;->a:Lcom/duoku/platform/view/i;

    invoke-interface {v0, p1}, Lcom/duoku/platform/view/i;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/duoku/platform/view/a;->a:Lcom/duoku/platform/view/i;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 204
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/duoku/platform/view/a;->a:Lcom/duoku/platform/view/i;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 209
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/duoku/platform/view/a;->a:Lcom/duoku/platform/view/i;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
