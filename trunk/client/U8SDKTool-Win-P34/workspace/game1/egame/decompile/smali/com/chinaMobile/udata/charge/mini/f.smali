.class final Lcom/chinaMobile/udata/charge/mini/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SpinnerAdapter;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/chinaMobile/udata/charge/mini/f;->a:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/chinaMobile/udata/charge/mini/f;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/chinaMobile/udata/charge/mini/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    iget-object v0, p0, Lcom/chinaMobile/udata/charge/mini/f;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iget-object v1, p0, Lcom/chinaMobile/udata/charge/mini/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/chinaMobile/udata/charge/mini/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    iget-object v0, p0, Lcom/chinaMobile/udata/charge/mini/f;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090008

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/chinaMobile/udata/charge/mini/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public final getViewTypeCount()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hasStableIds()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final isEmpty()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 2

    return-void
.end method

.method public final unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 2

    return-void
.end method
