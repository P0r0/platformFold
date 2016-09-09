.class public final Lcom/unionpay/mobile/android/upwidget/o;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/mobile/android/upwidget/o$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/Button;

.field private m:Z

.field private n:Landroid/content/Context;

.field private o:F

.field private p:Landroid/view/View$OnClickListener;

.field private q:Landroid/view/View$OnClickListener;

.field private r:Ljava/lang/String;

.field private s:Landroid/widget/TextView;

.field private t:Ljava/lang/String;

.field private u:Lcom/unionpay/mobile/android/upwidget/o$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/unionpay/mobile/android/upwidget/o;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;B)V
    .registers 14

    const v8, -0x593503

    const/16 v7, 0xf

    const/4 v6, 0x0

    const/4 v5, -0x2

    const/4 v4, -0x1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->j:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->l:Landroid/widget/Button;

    iput-boolean v6, p0, Lcom/unionpay/mobile/android/upwidget/o;->m:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->n:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->o:F

    new-instance v0, Lcom/unionpay/mobile/android/upwidget/p;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/upwidget/p;-><init>(Lcom/unionpay/mobile/android/upwidget/o;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->p:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/unionpay/mobile/android/upwidget/q;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/upwidget/q;-><init>(Lcom/unionpay/mobile/android/upwidget/o;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->q:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/o;->n:Landroid/content/Context;

    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->o:F

    iput-object p3, p0, Lcom/unionpay/mobile/android/upwidget/o;->t:Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p2, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->a:Ljava/lang/String;

    const-string v0, "type"

    invoke-static {p2, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->b:Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p2, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->c:Ljava/lang/String;

    const-string v0, "label"

    invoke-static {p2, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->d:Ljava/lang/String;

    const-string v0, "href_label"

    invoke-static {p2, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->e:Ljava/lang/String;

    const-string v0, "href_url"

    invoke-static {p2, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->f:Ljava/lang/String;

    const-string v0, "href_title"

    invoke-static {p2, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->g:Ljava/lang/String;

    const-string v0, "checked"

    invoke-static {p2, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->h:Ljava/lang/String;

    const-string v0, "required"

    invoke-static {p2, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->i:Ljava/lang/String;

    const-string v0, "error_info"

    invoke-static {p2, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->j:Ljava/lang/String;

    const-string v0, "ckb_style"

    invoke-static {p2, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->r:Ljava/lang/String;

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/o;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->k:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/unionpay/mobile/android/global/a;->n:I

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/o;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcom/unionpay/mobile/android/upwidget/o;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->n:Landroid/content/Context;

    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/upwidget/o;->l:Landroid/widget/Button;

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->l:Landroid/widget/Button;

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/o;->l:Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/mobile/android/upwidget/o;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b7

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->h:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->m:Z

    :goto_ea
    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->l:Landroid/widget/Button;

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/o;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/unionpay/mobile/android/upwidget/o;->c()V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/o;->n:Landroid/content/Context;

    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/f;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/unionpay/mobile/android/upwidget/o;->n:Landroid/content/Context;

    const/high16 v3, 0x42080000    # 34.0f

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/f;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/o;->k:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/upwidget/o;->l:Landroid/widget/Button;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->u:Lcom/unionpay/mobile/android/upwidget/o$a;

    if-eqz v0, :cond_125

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->u:Lcom/unionpay/mobile/android/upwidget/o$a;

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/o;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/unionpay/mobile/android/upwidget/o;->m:Z

    invoke-interface {v0, v1, v2}, Lcom/unionpay/mobile/android/upwidget/o$a;->a(Ljava/lang/String;Z)V

    :cond_125
    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/mobile/android/upwidget/o;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17c

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/mobile/android/upwidget/o;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17c

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/o;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/o;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/unionpay/mobile/android/upwidget/o;->o:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/o;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, -0xa35c26

    const v2, -0x666667

    invoke-static {v1, v8, v8, v2}, Lcom/unionpay/mobile/android/utils/g;->a(IIII)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/upwidget/o;->l:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getId()I

    move-result v2

    invoke-virtual {v1, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/upwidget/o;->n:Landroid/content/Context;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/f;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v2, p0, Lcom/unionpay/mobile/android/upwidget/o;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_17c
    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/mobile/android/upwidget/o;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b6

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/o;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->s:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->s:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/o;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->s:Landroid/widget/TextView;

    iget v1, p0, Lcom/unionpay/mobile/android/upwidget/o;->o:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->s:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/o;->k:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/upwidget/o;->s:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1b6
    return-void

    :cond_1b7
    iput-boolean v6, p0, Lcom/unionpay/mobile/android/upwidget/o;->m:Z

    goto/16 :goto_ea
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/upwidget/o;)V
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->m:Z

    if-nez v0, :cond_5e

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->m:Z

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->m:Z

    if-eqz v0, :cond_60

    const-string v0, "y"

    :goto_f
    iget-object v3, p0, Lcom/unionpay/mobile/android/upwidget/o;->n:Landroid/content/Context;

    iget-object v4, p0, Lcom/unionpay/mobile/android/upwidget/o;->t:Ljava/lang/String;

    sget-object v5, Lcom/unionpay/mobile/android/utils/o;->g:[Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v2

    sget-boolean v0, Lcom/unionpay/mobile/android/global/a;->L:Z

    if-eqz v0, :cond_78

    const-string v0, "uppay-TD"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "event:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", keys:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", values:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/unionpay/mobile/android/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_89

    array-length v0, v5

    array-length v6, v1

    if-ne v0, v6, :cond_58

    array-length v0, v5

    const/16 v6, 0xa

    if-le v0, v6, :cond_63

    :cond_58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_5e
    move v0, v2

    goto :goto_7

    :cond_60
    const-string v0, "n"

    goto :goto_f

    :cond_63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_68
    array-length v6, v5

    if-ge v2, v6, :cond_75

    aget-object v6, v5, v2

    aget-object v7, v1, v2

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_68

    :cond_75
    invoke-static {v3, v4, v4, v0}, Lcom/unionpay/sdk/UPAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_78
    :goto_78
    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->u:Lcom/unionpay/mobile/android/upwidget/o$a;

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->u:Lcom/unionpay/mobile/android/upwidget/o$a;

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/o;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/unionpay/mobile/android/upwidget/o;->m:Z

    invoke-interface {v0, v1, v2}, Lcom/unionpay/mobile/android/upwidget/o$a;->a(Ljava/lang/String;Z)V

    :cond_85
    invoke-direct {p0}, Lcom/unionpay/mobile/android/upwidget/o;->c()V

    return-void

    :cond_89
    invoke-static {v3, v4}, Lcom/unionpay/sdk/UPAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_78
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/upwidget/o;)V
    .registers 4

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->u:Lcom/unionpay/mobile/android/upwidget/o$a;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->u:Lcom/unionpay/mobile/android/upwidget/o$a;

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/o;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/unionpay/mobile/android/upwidget/o;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/unionpay/mobile/android/upwidget/o$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method private c()V
    .registers 6

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->l:Landroid/widget/Button;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->m:Z

    if-eqz v0, :cond_2b

    const/16 v0, 0x3f2

    :goto_b
    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/o;->n:Landroid/content/Context;

    invoke-static {v1}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object v1

    iget-object v2, p0, Lcom/unionpay/mobile/android/upwidget/o;->n:Landroid/content/Context;

    const/high16 v3, 0x42700000    # 60.0f

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/f;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/unionpay/mobile/android/upwidget/o;->n:Landroid/content/Context;

    const/high16 v4, 0x42080000    # 34.0f

    invoke-static {v3, v4}, Lcom/unionpay/mobile/android/utils/f;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/o;->l:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_2b
    const/16 v0, 0x3f1

    goto :goto_b
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->s:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->s:Landroid/widget/TextView;

    const v1, -0xcccccd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_c
    return-void
.end method

.method public final a(F)V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->s:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->s:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_9
    return-void
.end method

.method public final a(Lcom/unionpay/mobile/android/upwidget/o$a;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/o;->u:Lcom/unionpay/mobile/android/upwidget/o$a;

    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/unionpay/mobile/android/upwidget/o;->m:Z

    invoke-direct {p0}, Lcom/unionpay/mobile/android/upwidget/o;->c()V

    return-void
.end method

.method public final b()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/o;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/unionpay/mobile/android/upwidget/o;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/o;->i:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/upwidget/o;->m:Z

    :cond_15
    return v0
.end method
