.class public final Lcom/baidu/wallet/core/utils/support/AnimatorProxy;
.super Landroid/view/animation/Animation;


# static fields
.field public static final NEEDS_PROXY:Z

.field private static final a:Ljava/util/WeakHashMap;


# instance fields
.field private final b:Ljava/lang/ref/WeakReference;

.field private final c:Landroid/graphics/Camera;

.field private d:Z

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private final o:Landroid/graphics/RectF;

.field private final p:Landroid/graphics/RectF;

.field private final q:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_19

    const/4 v0, 0x1

    :goto_f
    sput-boolean v0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->NEEDS_PROXY:Z

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->a:Ljava/util/WeakHashMap;

    return-void

    :cond_19
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private constructor <init>(Landroid/view/View;)V
    .registers 4

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->c:Landroid/graphics/Camera;

    iput v1, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->e:F

    iput v1, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->k:F

    iput v1, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->l:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->o:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->p:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->q:Landroid/graphics/Matrix;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->setDuration(J)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->setFillAfter(Z)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->o:Landroid/graphics/RectF;

    invoke-direct {p0, v1, v0}, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->a(Landroid/graphics/RectF;Landroid/view/View;)V

    :cond_f
    return-void
.end method

.method private a(Landroid/graphics/Matrix;Landroid/view/View;)V
    .registers 13

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v3, v0

    iget-boolean v4, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->d:Z

    if-eqz v4, :cond_6f

    iget v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->f:F

    move v1, v0

    :goto_16
    if-eqz v4, :cond_73

    iget v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->g:F

    :goto_1a
    iget v4, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->h:F

    iget v5, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->i:F

    iget v6, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->j:F

    cmpl-float v7, v4, v8

    if-nez v7, :cond_2c

    cmpl-float v7, v5, v8

    if-nez v7, :cond_2c

    cmpl-float v7, v6, v8

    if-eqz v7, :cond_49

    :cond_2c
    iget-object v7, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->c:Landroid/graphics/Camera;

    invoke-virtual {v7}, Landroid/graphics/Camera;->save()V

    invoke-virtual {v7, v4}, Landroid/graphics/Camera;->rotateX(F)V

    invoke-virtual {v7, v5}, Landroid/graphics/Camera;->rotateY(F)V

    neg-float v4, v6

    invoke-virtual {v7, v4}, Landroid/graphics/Camera;->rotateZ(F)V

    invoke-virtual {v7, p1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v7}, Landroid/graphics/Camera;->restore()V

    neg-float v4, v1

    neg-float v5, v0

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_49
    iget v4, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->k:F

    iget v5, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->l:F

    cmpl-float v6, v4, v9

    if-nez v6, :cond_55

    cmpl-float v6, v5, v9

    if-eqz v6, :cond_67

    :cond_55
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    div-float/2addr v1, v2

    neg-float v1, v1

    mul-float/2addr v4, v2

    sub-float v2, v4, v2

    mul-float/2addr v1, v2

    div-float/2addr v0, v3

    neg-float v0, v0

    mul-float v2, v5, v3

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_67
    iget v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->m:F

    iget v1, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->n:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    :cond_6f
    div-float v0, v2, v5

    move v1, v0

    goto :goto_16

    :cond_73
    div-float v0, v3, v5

    goto :goto_1a
.end method

.method private a(Landroid/graphics/RectF;Landroid/view/View;)V
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->q:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    invoke-direct {p0, v0, p2}, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->a(Landroid/graphics/Matrix;Landroid/view/View;)V

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->q:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_38

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iput v1, p1, Landroid/graphics/RectF;->right:F

    iput v0, p1, Landroid/graphics/RectF;->left:F

    :cond_38
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_48

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iput v1, p1, Landroid/graphics/RectF;->top:F

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    :cond_48
    return-void
.end method

.method private b()V
    .registers 9

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v1, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->p:Landroid/graphics/RectF;

    invoke-direct {p0, v1, v0}, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->a(Landroid/graphics/RectF;Landroid/view/View;)V

    iget-object v2, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->o:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_10
.end method

.method public static wrap(Landroid/view/View;)Lcom/baidu/wallet/core/utils/support/AnimatorProxy;
    .registers 3

    sget-object v0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eq v0, v1, :cond_1a

    :cond_10
    new-instance v0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;

    invoke-direct {v0, p0}, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;-><init>(Landroid/view/View;)V

    sget-object v1, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    return-object v0
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_16

    iget v1, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->e:F

    invoke-virtual {p2, v1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->a(Landroid/graphics/Matrix;Landroid/view/View;)V

    :cond_16
    return-void
.end method

.method public getAlpha()F
    .registers 2

    iget v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->e:F

    return v0
.end method

.method public getPivotX()F
    .registers 2

    iget v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->f:F

    return v0
.end method

.method public getPivotY()F
    .registers 2

    iget v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->g:F

    return v0
.end method

.method public getRotation()F
    .registers 2

    iget v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->j:F

    return v0
.end method

.method public getRotationX()F
    .registers 2

    iget v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->h:F

    return v0
.end method

.method public getRotationY()F
    .registers 2

    iget v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->i:F

    return v0
.end method

.method public getScaleX()F
    .registers 2

    iget v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->k:F

    return v0
.end method

.method public getScaleY()F
    .registers 2

    iget v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->l:F

    return v0
.end method

.method public getScrollX()I
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    goto :goto_b
.end method

.method public getScrollY()I
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    goto :goto_b
.end method

.method public getTranslationX()F
    .registers 2

    iget v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->m:F

    return v0
.end method

.method public getTranslationY()F
    .registers 2

    iget v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->n:F

    return v0
.end method

.method public getX()F
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->m:F

    add-float/2addr v0, v1

    goto :goto_b
.end method

.method public getY()F
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->n:F

    add-float/2addr v0, v1

    goto :goto_b
.end method

.method public setAlpha(F)V
    .registers 3

    iget v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->e:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_15

    iput p1, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->e:F

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_15
    return-void
.end method

.method public setPivotX(F)V
    .registers 3

    iget-boolean v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->d:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->f:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_15

    :cond_a
    invoke-direct {p0}, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->d:Z

    iput p1, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->f:F

    invoke-direct {p0}, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->b()V

    :cond_15
    return-void
.end method

.method public setPivotY(F)V
    .registers 3

    iget-boolean v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->d:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->g:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_15

    :cond_a
    invoke-direct {p0}, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->d:Z

    iput p1, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->g:F

    invoke-direct {p0}, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->b()V

    :cond_15
    return-void
.end method

.method public setRotation(F)V
    .registers 3

    iget v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->j:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->a()V

    iput p1, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->j:F

    invoke-direct {p0}, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->b()V

    :cond_e
    return-void
.end method

.method public setRotationX(F)V
    .registers 3

    iget v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->h:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->a()V

    iput p1, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->h:F

    invoke-direct {p0}, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->b()V

    :cond_e
    return-void
.end method

.method public setRotationY(F)V
    .registers 3

    iget v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->i:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->a()V

    iput p1, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->i:F

    invoke-direct {p0}, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->b()V

    :cond_e
    return-void
.end method

.method public setScaleX(F)V
    .registers 3

    iget v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->k:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->a()V

    iput p1, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->k:F

    invoke-direct {p0}, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->b()V

    :cond_e
    return-void
.end method

.method public setScaleY(F)V
    .registers 3

    iget v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->l:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->a()V

    iput p1, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->l:F

    invoke-direct {p0}, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->b()V

    :cond_e
    return-void
.end method

.method public setScrollX(I)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->scrollTo(II)V

    :cond_11
    return-void
.end method

.method public setScrollY(I)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->scrollTo(II)V

    :cond_11
    return-void
.end method

.method public setTranslationX(F)V
    .registers 3

    iget v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->m:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->a()V

    iput p1, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->m:F

    invoke-direct {p0}, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->b()V

    :cond_e
    return-void
.end method

.method public setTranslationY(F)V
    .registers 3

    iget v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->n:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->a()V

    iput p1, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->n:F

    invoke-direct {p0}, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->b()V

    :cond_e
    return-void
.end method

.method public setX(F)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->setTranslationX(F)V

    :cond_14
    return-void
.end method

.method public setY(F)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/core/utils/support/AnimatorProxy;->setTranslationY(F)V

    :cond_14
    return-void
.end method
