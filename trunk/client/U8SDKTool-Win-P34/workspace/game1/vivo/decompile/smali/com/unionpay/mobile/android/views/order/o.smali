.class public final Lcom/unionpay/mobile/android/views/order/o;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/mobile/android/views/order/o$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:Lorg/json/JSONObject;

.field private e:Lorg/json/JSONObject;

.field private f:Lorg/json/JSONObject;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Lorg/json/JSONArray;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

.field private m:Lcom/unionpay/mobile/android/views/order/CViewMethods;

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/unionpay/mobile/android/views/order/l;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/unionpay/mobile/android/views/order/o;->b:I

    sget-object v0, Lcom/unionpay/mobile/android/views/order/l;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/unionpay/mobile/android/views/order/o;->c:I

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/o;->a:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/views/order/o;->setOrientation(I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mobile/android/views/order/o;
    .registers 3

    new-instance v0, Lcom/unionpay/mobile/android/views/order/o;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/views/order/o;-><init>(Landroid/content/Context;)V

    iput-object p1, v0, Lcom/unionpay/mobile/android/views/order/o;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mobile/android/views/order/o;
    .registers 5

    new-instance v0, Lcom/unionpay/mobile/android/views/order/o;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/views/order/o;-><init>(Landroid/content/Context;)V

    iput-object p2, v0, Lcom/unionpay/mobile/android/views/order/o;->n:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/unionpay/mobile/android/views/order/o;->b:I

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/unionpay/mobile/android/views/order/o;->c:I

    iput-object p1, v0, Lcom/unionpay/mobile/android/views/order/o;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/views/order/o;->c()V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONArray;Ljava/util/List;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/unionpay/mobile/android/views/order/o;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONArray;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            ")",
            "Lcom/unionpay/mobile/android/views/order/o;"
        }
    .end annotation

    new-instance v0, Lcom/unionpay/mobile/android/views/order/o;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/views/order/o;-><init>(Landroid/content/Context;)V

    iput-object p4, v0, Lcom/unionpay/mobile/android/views/order/o;->n:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/unionpay/mobile/android/views/order/o;->b:I

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/unionpay/mobile/android/views/order/o;->c:I

    iput-object p3, v0, Lcom/unionpay/mobile/android/views/order/o;->g:Landroid/graphics/drawable/Drawable;

    iput-object p1, v0, Lcom/unionpay/mobile/android/views/order/o;->h:Lorg/json/JSONArray;

    iput-object p2, v0, Lcom/unionpay/mobile/android/views/order/o;->i:Ljava/util/List;

    iput-object p5, v0, Lcom/unionpay/mobile/android/views/order/o;->k:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/views/order/o;->c()V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/unionpay/mobile/android/views/order/o;->b:I

    return v0
.end method

.method public final a(I)Lcom/unionpay/mobile/android/views/order/o;
    .registers 2

    iput p1, p0, Lcom/unionpay/mobile/android/views/order/o;->c:I

    return-object p0
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mobile/android/views/order/o;
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/o;->n:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final a(Lcom/unionpay/mobile/android/views/order/o$a;)Lcom/unionpay/mobile/android/views/order/o;
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->l:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->l:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->a(Lcom/unionpay/mobile/android/views/order/AbstractMethod$b;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->l:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->a(Lcom/unionpay/mobile/android/views/order/AbstractMethod$a;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->l:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    instance-of v0, v0, Lcom/unionpay/mobile/android/views/order/b;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->l:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    check-cast v0, Lcom/unionpay/mobile/android/views/order/b;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/views/order/b;->a(Lcom/unionpay/mobile/android/views/order/b$b;)Lcom/unionpay/mobile/android/views/order/b;

    :cond_1b
    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->m:Lcom/unionpay/mobile/android/views/order/CViewMethods;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->m:Lcom/unionpay/mobile/android/views/order/CViewMethods;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/views/order/CViewMethods;->a(Lcom/unionpay/mobile/android/views/order/CViewMethods$a;)Lcom/unionpay/mobile/android/views/order/CViewMethods;

    :cond_24
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/unionpay/mobile/android/views/order/o;
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/o;->j:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Ljava/util/List;)Lcom/unionpay/mobile/android/views/order/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lcom/unionpay/mobile/android/views/order/o;"
        }
    .end annotation

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/o;->i:Ljava/util/List;

    return-object p0
.end method

.method public final a(Lorg/json/JSONArray;)Lcom/unionpay/mobile/android/views/order/o;
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/o;->h:Lorg/json/JSONArray;

    return-object p0
.end method

.method public final a(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/views/order/o;
    .registers 4

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/o;->d:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->l:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->l:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    instance-of v0, v0, Lcom/unionpay/mobile/android/views/order/b;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->l:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    check-cast v0, Lcom/unionpay/mobile/android/views/order/b;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/b;->a(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/views/order/b;

    :cond_15
    return-object p0
.end method

.method public final a(Z)Lcom/unionpay/mobile/android/views/order/o;
    .registers 2

    iput-boolean p1, p0, Lcom/unionpay/mobile/android/views/order/o;->o:Z

    return-object p0
.end method

.method public final b(I)Lcom/unionpay/mobile/android/views/order/o;
    .registers 2

    iput p1, p0, Lcom/unionpay/mobile/android/views/order/o;->b:I

    return-object p0
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mobile/android/views/order/o;
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->l:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->l:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/unionpay/mobile/android/views/order/o;
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/o;->k:Ljava/lang/String;

    return-object p0
.end method

.method public final b(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/views/order/o;
    .registers 4

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/o;->e:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->l:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->l:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    instance-of v0, v0, Lcom/unionpay/mobile/android/views/order/i;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->l:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    check-cast v0, Lcom/unionpay/mobile/android/views/order/i;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->e:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/i;->a(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/views/order/i;

    :cond_15
    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->l:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->l:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    instance-of v1, v1, Lcom/unionpay/mobile/android/views/order/i;

    if-eqz v1, :cond_13

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->l:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    check-cast v0, Lcom/unionpay/mobile/android/views/order/i;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/views/order/i;->h()Ljava/lang/String;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method public final c(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/views/order/o;
    .registers 4

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/o;->f:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->l:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->l:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    instance-of v0, v0, Lcom/unionpay/mobile/android/views/order/i;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->l:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    check-cast v0, Lcom/unionpay/mobile/android/views/order/i;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->f:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/i;->b(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/views/order/i;

    :cond_15
    return-object p0
.end method

.method public final c()V
    .registers 8

    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->l:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    iget v0, p0, Lcom/unionpay/mobile/android/views/order/o;->b:I

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_108

    iget v0, p0, Lcom/unionpay/mobile/android/views/order/o;->c:I

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/unionpay/mobile/android/views/order/o;->c:I

    new-instance v0, Lcom/unionpay/mobile/android/views/order/b;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/o;->i:Ljava/util/List;

    iget-object v3, p0, Lcom/unionpay/mobile/android/views/order/o;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/unionpay/mobile/android/views/order/b;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->bt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/b;->b(Ljava/lang/String;)Lcom/unionpay/mobile/android/views/order/b;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->bu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/b;->d(Ljava/lang/String;)Lcom/unionpay/mobile/android/views/order/b;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/b;->a(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/views/order/b;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->h:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/b;->a(Lorg/json/JSONArray;)Lcom/unionpay/mobile/android/views/order/b;

    iget-boolean v1, p0, Lcom/unionpay/mobile/android/views/order/o;->o:Z

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/b;->b(Z)Lcom/unionpay/mobile/android/views/order/b;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object v1

    const/16 v2, 0x7de

    invoke-virtual {v1, v2}, Lcom/unionpay/mobile/android/resource/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/b;->b(Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mobile/android/views/order/b;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object v1

    const/16 v2, 0x3f7

    invoke-virtual {v1, v2}, Lcom/unionpay/mobile/android/resource/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x3f8

    invoke-virtual {v1, v3}, Lcom/unionpay/mobile/android/resource/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0x3ea

    invoke-virtual {v1, v4}, Lcom/unionpay/mobile/android/resource/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/unionpay/mobile/android/views/order/b;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mobile/android/views/order/b;

    iput-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->l:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    :cond_70
    :goto_70
    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->l:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->l:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->a()V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/unionpay/mobile/android/global/b;->a:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->l:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    invoke-virtual {p0, v1, v0}, Lcom/unionpay/mobile/android/views/order/o;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_87
    new-instance v0, Lcom/unionpay/mobile/android/views/order/CViewMethods;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/unionpay/mobile/android/views/order/CViewMethods;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->m:Lcom/unionpay/mobile/android/views/order/CViewMethods;

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->m:Lcom/unionpay/mobile/android/views/order/CViewMethods;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/CViewMethods;->a(Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mobile/android/views/order/CViewMethods;

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->m:Lcom/unionpay/mobile/android/views/order/CViewMethods;

    iget v1, p0, Lcom/unionpay/mobile/android/views/order/o;->c:I

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/CViewMethods;->a(I)Lcom/unionpay/mobile/android/views/order/CViewMethods;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->b:Ljava/lang/Integer;

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->bt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->d:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/o;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->e:Ljava/lang/Integer;

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->bo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->c:Ljava/lang/Integer;

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->bv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->m:Lcom/unionpay/mobile/android/views/order/CViewMethods;

    invoke-virtual {v1, v0}, Lcom/unionpay/mobile/android/views/order/CViewMethods;->a(Ljava/util/HashMap;)Lcom/unionpay/mobile/android/views/order/CViewMethods;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->b:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/o;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->d:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/o;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->e:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/o;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->c:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/o;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->m:Lcom/unionpay/mobile/android/views/order/CViewMethods;

    invoke-virtual {v1, v0}, Lcom/unionpay/mobile/android/views/order/CViewMethods;->b(Ljava/util/HashMap;)Lcom/unionpay/mobile/android/views/order/CViewMethods;

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->m:Lcom/unionpay/mobile/android/views/order/CViewMethods;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->bx:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/CViewMethods;->a(Ljava/lang/String;)Lcom/unionpay/mobile/android/views/order/CViewMethods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/views/order/CViewMethods;->a()V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->m:Lcom/unionpay/mobile/android/views/order/CViewMethods;

    invoke-virtual {p0, v1, v0}, Lcom/unionpay/mobile/android/views/order/o;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_108
    iget v0, p0, Lcom/unionpay/mobile/android/views/order/o;->b:I

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_70

    iget v0, p0, Lcom/unionpay/mobile/android/views/order/o;->c:I

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/unionpay/mobile/android/views/order/o;->c:I

    new-instance v0, Lcom/unionpay/mobile/android/views/order/i;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/unionpay/mobile/android/views/order/i;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->bv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/i;->b(Ljava/lang/String;)Lcom/unionpay/mobile/android/views/order/i;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->bw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/i;->d(Ljava/lang/String;)Lcom/unionpay/mobile/android/views/order/i;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->e:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/i;->a(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/views/order/i;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/o;->f:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/i;->b(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/views/order/i;

    iput-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->l:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    goto/16 :goto_70
.end method

.method public final c(I)V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->l:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->l:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    instance-of v0, v0, Lcom/unionpay/mobile/android/views/order/b;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/o;->l:Lcom/unionpay/mobile/android/views/order/AbstractMethod;

    check-cast v0, Lcom/unionpay/mobile/android/views/order/b;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/views/order/b;->a(I)V

    :cond_11
    return-void
.end method
