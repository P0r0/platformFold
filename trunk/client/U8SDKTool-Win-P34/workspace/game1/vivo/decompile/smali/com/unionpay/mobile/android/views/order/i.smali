.class public final Lcom/unionpay/mobile/android/views/order/i;
.super Lcom/unionpay/mobile/android/views/order/AbstractMethod;


# instance fields
.field private g:Lorg/json/JSONObject;

.field private h:Lorg/json/JSONObject;

.field private i:Lcom/unionpay/mobile/android/upviews/a;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/views/order/AbstractMethod;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/views/order/i;)Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/i;->g:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/views/order/i;)Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/i;->h:Lorg/json/JSONObject;

    return-object v0
.end method

.method private static e(Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 5

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "label"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "name"

    const-string v3, "user_name"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/unionpay/mobile/android/views/order/i;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "value"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_23
    const-string v2, "regexp"

    const-string v3, "[.@_A-Za-z0-9]{1,64}"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "type"

    const-string v3, "user_name"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "tip"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "placeholder"

    sget-object v3, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v3, v3, Lcom/unionpay/mobile/android/languages/c;->br:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "label"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "name"

    const-string v3, "password"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "type"

    const-string v3, "password"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "placeholder"

    sget-object v3, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v3, v3, Lcom/unionpay/mobile/android/languages/c;->bs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_6a} :catch_6b

    :goto_6a
    return-object v0

    :catch_6b
    move-exception v1

    goto :goto_6a
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/views/order/i;
    .registers 4

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/i;->g:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/i;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/i;->g:Lorg/json/JSONObject;

    const-string v1, "label"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/views/order/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/i;->j:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/i;->l:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/i;->l:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_27
    return-object p0
.end method

.method public final a(Landroid/widget/RelativeLayout;)V
    .registers 6

    const/4 v3, -0x1

    const/4 v2, -0x2

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/i;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/i;->b:Landroid/content/Context;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/d;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b()I
    .registers 2

    sget-object v0, Lcom/unionpay/mobile/android/views/order/l;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;)Lcom/unionpay/mobile/android/views/order/i;
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/i;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final b(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/views/order/i;
    .registers 4

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/i;->h:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/i;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/i;->h:Lorg/json/JSONObject;

    const-string v1, "label"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/views/order/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/i;->k:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/i;->l:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/i;->l:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_27
    return-object p0
.end method

.method public final b(Landroid/widget/RelativeLayout;)V
    .registers 6

    const/4 v3, -0x1

    new-instance v0, Lcom/unionpay/mobile/android/upviews/a;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/i;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/i;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/unionpay/mobile/android/utils/PreferenceUtils;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/mobile/android/views/order/i;->e(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/unionpay/mobile/android/upviews/a;-><init>(Landroid/content/Context;Lorg/json/JSONArray;Lcom/unionpay/mobile/android/upviews/a$b;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/views/order/i;->i:Lcom/unionpay/mobile/android/upviews/a;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/i;->i:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final c()Lcom/unionpay/mobile/android/upviews/a$a;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/i;->i:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/i;->i:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->b()Lcom/unionpay/mobile/android/upviews/a$a;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final c(Landroid/widget/RelativeLayout;)V
    .registers 10

    const/16 v7, 0xf

    const/high16 v6, 0x41200000    # 10.0f

    const/4 v5, -0x1

    const/4 v4, -0x2

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/i;->g:Lorg/json/JSONObject;

    const-string v1, "label"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/views/order/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/i;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/views/order/i;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/i;->j:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/unionpay/mobile/android/views/order/i;->a(Landroid/widget/TextView;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/i;->j:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2b
    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/i;->j:Landroid/widget/TextView;

    new-instance v2, Lcom/unionpay/mobile/android/views/order/j;

    invoke-direct {v2, p0}, Lcom/unionpay/mobile/android/views/order/j;-><init>(Lcom/unionpay/mobile/android/views/order/i;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/i;->b:Landroid/content/Context;

    invoke-static {v2, v6}, Lcom/unionpay/mobile/android/utils/d;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/i;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/i;->h:Lorg/json/JSONObject;

    const-string v2, "label"

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/views/order/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/unionpay/mobile/android/views/order/i;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/unionpay/mobile/android/views/order/i;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/i;->k:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/unionpay/mobile/android/views/order/i;->a(Landroid/widget/TextView;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_74

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/i;->k:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_74
    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/i;->k:Landroid/widget/TextView;

    new-instance v3, Lcom/unionpay/mobile/android/views/order/k;

    invoke-direct {v3, p0}, Lcom/unionpay/mobile/android/views/order/k;-><init>(Lcom/unionpay/mobile/android/views/order/i;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/views/order/i;->b:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/unionpay/mobile/android/utils/d;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v3, p0, Lcom/unionpay/mobile/android/views/order/i;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a9

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a9

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_a9
    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/i;->l:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public final d(Ljava/lang/String;)Lcom/unionpay/mobile/android/views/order/i;
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/i;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/i;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Z
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/i;->i:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/i;->i:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->e()Z

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

.method public final h()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/i;->i:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/i;->i:Lcom/unionpay/mobile/android/upviews/a;

    const-string v1, "user_name"

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upviews/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const-string v0, ""

    goto :goto_c
.end method

.method protected final onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/views/order/i;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    return-void
.end method

.method protected final onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/i;->i:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/i;->i:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->f()V

    :cond_c
    return-void
.end method
