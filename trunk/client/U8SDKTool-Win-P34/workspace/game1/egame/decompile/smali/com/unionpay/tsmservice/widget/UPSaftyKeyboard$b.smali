.class final Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;


# direct methods
.method private constructor <init>(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)V
    .registers 3

    iput-object p1, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;-><init>(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)V

    return-void
.end method

.method static synthetic a()V
    .registers 1

    invoke-static {}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    return-void
.end method

.method private a(Landroid/widget/TextView;)V
    .registers 5

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0x777778

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget-object v2, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v0, v1}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    const/16 v0, 0xc

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 4

    const/16 v0, 0x9

    if-ne p1, v0, :cond_12

    iget-object v0, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v0}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->i(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "Del"

    :goto_e
    return-object v0

    :cond_f
    const-string v0, "OK"

    goto :goto_e

    :cond_12
    const/16 v0, 0xb

    if-ne p1, v0, :cond_24

    iget-object v0, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v0}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->i(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "OK"

    goto :goto_e

    :cond_21
    const-string v0, "Del"

    goto :goto_e

    :cond_24
    const/16 v0, 0xa

    if-ne p1, v0, :cond_37

    invoke-static {}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->a()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_37
    invoke-static {}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public final getItemId(I)J
    .registers 7

    const-wide/16 v0, 0x14

    const-wide/16 v2, 0xa

    const/16 v4, 0x9

    if-ne p1, v4, :cond_13

    iget-object v4, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v4}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->i(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)Z

    move-result v4

    if-eqz v4, :cond_11

    :cond_10
    :goto_10
    return-wide v0

    :cond_11
    move-wide v0, v2

    goto :goto_10

    :cond_13
    const/16 v4, 0xb

    if-ne p1, v4, :cond_21

    iget-object v4, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v4}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->i(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)Z

    move-result v4

    if-eqz v4, :cond_10

    move-wide v0, v2

    goto :goto_10

    :cond_21
    const/16 v0, 0xa

    if-ne p1, v0, :cond_37

    invoke-static {}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->a()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    goto :goto_10

    :cond_37
    invoke-static {}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    goto :goto_10
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14

    const/4 v9, -0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v0}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->j(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)I

    move-result v0

    if-eq v9, v0, :cond_3c

    iget-object v0, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    iget-object v1, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v1}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->j(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)I

    move-result v1

    iget-object v2, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v2}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->k(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v2}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->l(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v2}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->m(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v2}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->n(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v2}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->o(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x3

    invoke-static {v0, v1}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->a(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;I)I

    :cond_3c
    iget-object v0, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    iget-object v1, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v1}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->p(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)I

    move-result v1

    iget-object v2, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v2}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->q(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v2}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->r(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v2}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->s(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v2}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->t(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v2}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->u(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v2}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->v(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->b(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;I)I

    new-instance v2, Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v0}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->w(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    iget-object v1, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v1}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->x(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)I

    move-result v1

    iget-object v3, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v3}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->y(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v0}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->w(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v0}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->z(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v0}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->A(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v8, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    iget-object v3, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v3}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->x(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)I

    move-result v3

    iget-object v4, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v4}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->y(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v0}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->B(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)Z

    move-result v0

    if-nez v0, :cond_de

    invoke-virtual {v2, v8}, Landroid/widget/ImageButton;->setSoundEffectsEnabled(Z)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    :cond_de
    invoke-virtual {p0, p1}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {p0, p1}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide/16 v6, 0xa

    cmp-long v3, v6, v4

    if-nez v3, :cond_156

    iget-object v3, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v3}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->C(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_fe

    iget-object v3, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v3}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->D(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_135

    :cond_fe
    iget-object v0, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v0}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->C(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_10f

    iget-object v0, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v0}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->C(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_10f
    iget-object v0, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v0}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->D(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_128

    iget-object v0, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v0}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->D(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_128
    iget-object v0, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v0}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->E(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)Z

    move-result v0

    if-nez v0, :cond_196

    invoke-virtual {v2, v8}, Landroid/widget/ImageButton;->setEnabled(Z)V

    move-object v0, v2

    :goto_134
    return-object v0

    :cond_135
    invoke-direct {p0, v1}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a(Landroid/widget/TextView;)V

    iget-object v2, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v2}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->E(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)Z

    move-result v2

    if-nez v2, :cond_142

    move-object v0, v1

    goto :goto_134

    :cond_142
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->getItemId(I)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    iget-object v0, v0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v1

    goto :goto_134

    :cond_156
    const-wide/16 v6, 0x14

    cmp-long v3, v6, v4

    if-nez v3, :cond_1bf

    iget-object v3, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v3}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->F(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_16c

    iget-object v3, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v3}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->G(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1a7

    :cond_16c
    iget-object v0, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v0}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->F(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_17d

    iget-object v0, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v0}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->F(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_17d
    iget-object v0, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v0}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->G(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_196

    iget-object v0, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v0}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->G(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_196
    :goto_196
    invoke-virtual {p0, p1}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->getItemId(I)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setId(I)V

    iget-object v0, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    iget-object v0, v0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v2

    goto :goto_134

    :cond_1a7
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v1}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a(Landroid/widget/TextView;)V

    invoke-virtual {p0, p1}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->getItemId(I)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    iget-object v0, v0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v1

    goto/16 :goto_134

    :cond_1bf
    iget-object v0, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v0}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->H(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_226

    long-to-int v0, v4

    iget-object v1, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v1}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->H(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_1e5

    iget-object v1, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v1}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->H(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1e5
    iget-object v1, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v1}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->J(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_20b

    iget-object v1, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v1}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->J(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_20b

    iget-object v1, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v1}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->J(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_196

    :cond_20b
    iget-object v0, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v0}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->I(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_196

    iget-object v0, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v0}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->I(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_196

    :cond_226
    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v0}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->I(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_259

    iget-object v0, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v0}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->I(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_247
    invoke-virtual {p0, p1}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->getItemId(I)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    iget-object v0, v0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v1

    goto/16 :goto_134

    :cond_259
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0x777778

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget-object v3, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v0, v2}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_247
.end method
