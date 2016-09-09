.class abstract Lcom/unionpay/mobile/android/widgets/az;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/mobile/android/widgets/az$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field protected c:Landroid/content/Context;

.field protected d:I

.field protected e:I

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Z

.field protected i:Ljava/lang/String;

.field protected j:Landroid/widget/LinearLayout;

.field protected k:Landroid/widget/TextView;

.field protected l:Landroid/widget/RelativeLayout;

.field protected m:Lorg/json/JSONObject;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/ImageView;

.field private r:Z

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 10

    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, -0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/unionpay/mobile/android/widgets/az;->c:Landroid/content/Context;

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/unionpay/mobile/android/widgets/az;->d:I

    const v0, -0x777778

    iput v0, p0, Lcom/unionpay/mobile/android/widgets/az;->e:I

    iput-object v2, p0, Lcom/unionpay/mobile/android/widgets/az;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/unionpay/mobile/android/widgets/az;->f:Ljava/lang/String;

    iput-object v2, p0, Lcom/unionpay/mobile/android/widgets/az;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/unionpay/mobile/android/widgets/az;->g:Ljava/lang/String;

    iput-object v2, p0, Lcom/unionpay/mobile/android/widgets/az;->n:Ljava/lang/String;

    iput-object v2, p0, Lcom/unionpay/mobile/android/widgets/az;->o:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/unionpay/mobile/android/widgets/az;->h:Z

    iput-object v2, p0, Lcom/unionpay/mobile/android/widgets/az;->i:Ljava/lang/String;

    iput-object v2, p0, Lcom/unionpay/mobile/android/widgets/az;->p:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/unionpay/mobile/android/widgets/az;->j:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/unionpay/mobile/android/widgets/az;->k:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/unionpay/mobile/android/widgets/az;->q:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/unionpay/mobile/android/widgets/az;->l:Landroid/widget/RelativeLayout;

    iput-boolean v1, p0, Lcom/unionpay/mobile/android/widgets/az;->r:Z

    const-string v0, "uppay"

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->s:Ljava/lang/String;

    iput-object p2, p0, Lcom/unionpay/mobile/android/widgets/az;->m:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/az;->c:Landroid/content/Context;

    const-string v0, "label"

    invoke-static {p2, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->g:Ljava/lang/String;

    const-string v0, "placeholder"

    invoke-static {p2, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->o:Ljava/lang/String;

    const-string v0, "tip"

    invoke-static {p2, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->n:Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p2, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->a:Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p2, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->f:Ljava/lang/String;

    const-string v0, "type"

    invoke-static {p2, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->b:Ljava/lang/String;

    const-string v0, "regexp"

    invoke-static {p2, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->i:Ljava/lang/String;

    const-string v0, "readonly"

    invoke-static {p2, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_82

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_82

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/widgets/az;->h:Z

    :cond_82
    const-string v0, "margin"

    invoke-static {p2, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_172

    const/4 v0, 0x1

    :goto_8f
    iput-boolean v0, p0, Lcom/unionpay/mobile/android/widgets/az;->r:Z

    iput-object p3, p0, Lcom/unionpay/mobile/android/widgets/az;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->c:Landroid/content/Context;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/widgets/az;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1}, Lcom/unionpay/mobile/android/widgets/az;->setBackgroundColor(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/widgets/az;->setOrientation(I)V

    invoke-virtual {p0, v5, v5, v5, v5}, Lcom/unionpay/mobile/android/widgets/az;->setPadding(IIII)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->b:Ljava/lang/String;

    const-string v2, "string"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_192

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->g:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/unionpay/mobile/android/widgets/az;->a(Landroid/widget/LinearLayout;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f8

    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/az;->c:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->p:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->p:Landroid/widget/TextView;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->p:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->p:Landroid/widget/TextView;

    iget v2, p0, Lcom/unionpay/mobile/android/widgets/az;->d:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v2, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/az;->p:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v0}, Lcom/unionpay/mobile/android/widgets/az;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->g:Ljava/lang/String;

    if-eqz v0, :cond_f1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_175

    :cond_f1
    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->p:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_f8
    :goto_f8
    invoke-direct {p0}, Lcom/unionpay/mobile/android/widgets/az;->a()V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/az;->b_()Z

    move-result v0

    if-nez v0, :cond_171

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/az;->c:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->j:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->j:Landroid/widget/LinearLayout;

    const v2, -0x41448

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/az;->j:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2, v0}, Lcom/unionpay/mobile/android/widgets/az;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/az;->c:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->k:Landroid/widget/TextView;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->k:Landroid/widget/TextView;

    iget v2, p0, Lcom/unionpay/mobile/android/widgets/az;->e:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/az;->c:Landroid/content/Context;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/f;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/az;->c:Landroid/content/Context;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/f;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/az;->j:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/az;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->n:Ljava/lang/String;

    if-eqz v0, :cond_163

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_185

    :cond_163
    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->j:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->q:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_171
    :goto_171
    return-void

    :cond_172
    move v0, v1

    goto/16 :goto_8f

    :cond_175
    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->p:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/az;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->p:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_f8

    :cond_185
    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/az;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_171

    :cond_192
    invoke-direct {p0}, Lcom/unionpay/mobile/android/widgets/az;->a()V

    goto :goto_171
.end method

.method private a()V
    .registers 6

    const/4 v4, -0x1

    const/4 v3, -0x2

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/az;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/unionpay/mobile/android/widgets/az;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/az;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/widgets/az;->l:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/az;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/az;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/widgets/az;->q:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/az;->q:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/az;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object v2

    const/16 v3, 0x40e

    invoke-virtual {v2, v3}, Lcom/unionpay/mobile/android/resource/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/az;->c:Landroid/content/Context;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/f;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/az;->c:Landroid/content/Context;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/f;->a(Landroid/content/Context;F)I

    move-result v2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x50

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/az;->c:Landroid/content/Context;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/f;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/az;->q:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/az;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/unionpay/mobile/android/widgets/az;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 9

    sget-boolean v0, Lcom/unionpay/mobile/android/global/a;->L:Z

    if-eqz v0, :cond_5d

    const-string v0, "uppay-TD"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", keys:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", values:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_5e

    if-eqz p4, :cond_5e

    array-length v0, p3

    array-length v1, p4

    if-ne v0, v1, :cond_41

    array-length v0, p3

    const/16 v1, 0xa

    if-le v0, v1, :cond_47

    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_47
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    :goto_4d
    array-length v2, p3

    if-ge v0, v2, :cond_5a

    aget-object v2, p3, v0

    aget-object v3, p4, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    :cond_5a
    invoke-static {p1, p2, p2, v1}, Lcom/unionpay/sdk/UPAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_5d
    :goto_5d
    return-void

    :cond_5e
    invoke-static {p1, p2}, Lcom/unionpay/sdk/UPAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5d
.end method

.method protected final a(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .registers 4

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->p:Landroid/widget/TextView;

    if-eqz v0, :cond_11

    if-eqz p1, :cond_11

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_11

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_11
    return-void
.end method

.method protected a(Landroid/widget/LinearLayout;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected b_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected final c(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_11

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_11

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_11
    return-void
.end method

.method protected d()Ljava/lang/String;
    .registers 2

    const-string v0, "_input_method"

    return-object v0
.end method

.method public f()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final u()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->o:Ljava/lang/String;

    return-object v0
.end method

.method protected final v()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->s:Ljava/lang/String;

    return-object v0
.end method

.method protected final w()V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->p:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->p:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method protected final x()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_f
    return-void
.end method

.method protected final y()V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->p:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/az;->p:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_b
    return-void
.end method
