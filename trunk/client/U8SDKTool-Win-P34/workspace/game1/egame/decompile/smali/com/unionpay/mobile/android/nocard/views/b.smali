.class public abstract Lcom/unionpay/mobile/android/nocard/views/b;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine$a;
.implements Lcom/unionpay/mobile/android/nocard/views/a;
.implements Lcom/unionpay/mobile/android/upwidget/UPScrollView$a;
.implements Lcom/unionpay/mobile/android/widgets/ax$a;
.implements Lcom/unionpay/mobile/android/widgets/z$a;


# instance fields
.field protected a:Lcom/unionpay/mobile/android/model/b;

.field protected b:Lcom/unionpay/mobile/android/widgets/m;

.field protected c:Lcom/unionpay/mobile/android/resource/c;

.field protected d:Landroid/content/Context;

.field protected e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

.field protected f:I

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected j:Z

.field protected k:Landroid/widget/RelativeLayout;

.field protected l:Landroid/view/ViewGroup;

.field protected m:Landroid/widget/RelativeLayout;

.field protected n:Lcom/unionpay/mobile/android/widgets/ar;

.field protected o:Lcom/unionpay/mobile/android/upwidget/UPScrollView;

.field protected p:Lcom/unionpay/mobile/android/model/e;

.field protected q:Ljava/lang/String;

.field private r:Landroid/widget/LinearLayout;

.field private s:Landroid/widget/LinearLayout;

.field private t:Landroid/widget/LinearLayout;

.field private u:I

.field private v:I

.field private w:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/unionpay/mobile/android/nocard/views/b;-><init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/e;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/e;)V
    .registers 7

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iput-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->b:Lcom/unionpay/mobile/android/widgets/m;

    iput-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->c:Lcom/unionpay/mobile/android/resource/c;

    iput-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    iput-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    iput-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->g:Ljava/lang/String;

    iput-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->h:Ljava/lang/String;

    iput-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->i:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->j:Z

    iput-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->k:Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->l:Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->m:Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->n:Lcom/unionpay/mobile/android/widgets/ar;

    iput-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->o:Lcom/unionpay/mobile/android/upwidget/UPScrollView;

    const-string v0, "uppay"

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->q:Ljava/lang/String;

    iput-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->w:Landroid/app/Activity;

    const/4 v0, 0x0

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->f:I

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->w:Landroid/app/Activity;

    :cond_39
    iput-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->p:Lcom/unionpay/mobile/android/model/e;

    move-object v0, p1

    check-cast v0, Lcom/unionpay/mobile/android/plugin/BaseActivity;

    const-class v1, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    move-object v0, p1

    check-cast v0, Lcom/unionpay/mobile/android/plugin/BaseActivity;

    invoke-virtual {v0, v2}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/model/b;

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    move-object v0, p1

    check-cast v0, Lcom/unionpay/mobile/android/plugin/BaseActivity;

    const-class v1, Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/widgets/m;

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-static {p1}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->c:Lcom/unionpay/mobile/android/resource/c;

    const/16 v0, 0x22b8

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/b;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v3}, Lcom/unionpay/mobile/android/nocard/views/b;->setBackgroundColor(I)V

    const-string v0, "uppayEx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UPViewBase:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/nocard/views/b;I)I
    .registers 2

    iput p1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->u:I

    return p1
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/nocard/views/b;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->r:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private a(IIZZ)V
    .registers 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    check-cast v0, Lcom/unionpay/mobile/android/plugin/BaseActivity;

    packed-switch p1, :pswitch_data_98

    :pswitch_8
    move-object v1, v2

    :goto_9
    if-eqz v1, :cond_e

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->a(Lcom/unionpay/mobile/android/nocard/views/b;)V

    :cond_e
    return-void

    :pswitch_f
    invoke-virtual {v0, p1, v2}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->a(ILcom/unionpay/mobile/android/model/e;)Lcom/unionpay/mobile/android/nocard/views/b;

    move-result-object v1

    goto :goto_9

    :pswitch_14
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    if-eqz v3, :cond_37

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_37

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget v3, v3, Lcom/unionpay/mobile/android/model/b;->I:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unionpay/mobile/android/model/c;

    invoke-interface {v1}, Lcom/unionpay/mobile/android/model/c;->c()I

    move-result v1

    :cond_37
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->i()Z

    move-result v3

    if-nez v3, :cond_3f

    if-nez v1, :cond_4d

    :cond_3f
    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v1, v1, Lcom/unionpay/mobile/android/model/b;->bl:Z

    if-nez v1, :cond_4d

    new-instance v1, Lcom/unionpay/mobile/android/nocard/views/at;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/unionpay/mobile/android/nocard/views/at;-><init>(Landroid/content/Context;)V

    goto :goto_9

    :cond_4d
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->a(ILcom/unionpay/mobile/android/model/e;)Lcom/unionpay/mobile/android/nocard/views/b;

    move-result-object v1

    goto :goto_9

    :pswitch_53
    new-instance v1, Lcom/unionpay/mobile/android/nocard/views/bd;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/unionpay/mobile/android/nocard/views/bd;-><init>(Landroid/content/Context;)V

    goto :goto_9

    :pswitch_5b
    new-instance v1, Lcom/unionpay/mobile/android/nocard/views/g;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/unionpay/mobile/android/nocard/views/g;-><init>(Landroid/content/Context;)V

    goto :goto_9

    :pswitch_63
    new-instance v1, Lcom/unionpay/mobile/android/nocard/views/ak;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/unionpay/mobile/android/nocard/views/ak;-><init>(Landroid/content/Context;)V

    goto :goto_9

    :pswitch_6b
    new-instance v1, Lcom/unionpay/mobile/android/nocard/views/ai;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/unionpay/mobile/android/nocard/views/ai;-><init>(Landroid/content/Context;)V

    goto :goto_9

    :pswitch_73
    new-instance v1, Lcom/unionpay/mobile/android/nocard/views/af;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/unionpay/mobile/android/nocard/views/af;-><init>(Landroid/content/Context;)V

    goto :goto_9

    :pswitch_7b
    new-instance v1, Lcom/unionpay/mobile/android/nocard/views/o;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v3, v2}, Lcom/unionpay/mobile/android/nocard/views/o;-><init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/e;)V

    goto :goto_9

    :pswitch_83
    new-instance v1, Lcom/unionpay/mobile/android/nocard/views/bi;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v2, p2, p3, p4}, Lcom/unionpay/mobile/android/nocard/views/bi;-><init>(Landroid/content/Context;IZZ)V

    goto/16 :goto_9

    :pswitch_8c
    invoke-virtual {v0, p1, v2}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->a(ILcom/unionpay/mobile/android/model/e;)Lcom/unionpay/mobile/android/nocard/views/b;

    move-result-object v1

    goto/16 :goto_9

    :pswitch_92
    invoke-virtual {v0, p1, v2}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->a(ILcom/unionpay/mobile/android/model/e;)Lcom/unionpay/mobile/android/nocard/views/b;

    move-result-object v1

    goto/16 :goto_9

    :pswitch_data_98
    .packed-switch 0x2
        :pswitch_f
        :pswitch_8
        :pswitch_8
        :pswitch_5b
        :pswitch_14
        :pswitch_8
        :pswitch_53
        :pswitch_8
        :pswitch_63
        :pswitch_6b
        :pswitch_73
        :pswitch_7b
        :pswitch_83
        :pswitch_8
        :pswitch_8
        :pswitch_8c
        :pswitch_92
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/unionpay/mobile/android/nocard/views/b;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 8

    sget-boolean v0, Lcom/unionpay/mobile/android/global/a;->L:Z

    if-eqz v0, :cond_5d

    const-string v0, "uppay-TD"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", keys:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", values:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_5e

    if-eqz p3, :cond_5e

    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_41

    array-length v0, p2

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
    array-length v2, p2

    if-ge v0, v2, :cond_5a

    aget-object v2, p2, v0

    aget-object v3, p3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    :cond_5a
    invoke-static {p0, p1, p1, v1}, Lcom/unionpay/sdk/UPAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_5d
    :goto_5d
    return-void

    :cond_5e
    invoke-static {p0, p1}, Lcom/unionpay/sdk/UPAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5d
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/nocard/views/b;I)I
    .registers 2

    iput p1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->v:I

    return p1
.end method

.method protected static b(Ljava/lang/String;)Z
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

.method protected static p()Landroid/content/res/ColorStateList;
    .registers 4

    sget v0, Lcom/unionpay/mobile/android/global/b;->b:I

    sget v1, Lcom/unionpay/mobile/android/global/b;->c:I

    sget v2, Lcom/unionpay/mobile/android/global/b;->c:I

    sget v3, Lcom/unionpay/mobile/android/global/b;->d:I

    invoke-static {v0, v1, v2, v3}, Lcom/unionpay/mobile/android/utils/g;->a(IIII)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private final t()Landroid/widget/RelativeLayout;
    .registers 8

    const/16 v6, 0x8

    const/4 v4, 0x0

    const/4 v5, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->k:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1c

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_1c
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1, v0}, Lcom/unionpay/mobile/android/nocard/views/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v2, Lcom/unionpay/mobile/android/upwidget/UPScrollView;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/unionpay/mobile/android/upwidget/UPScrollView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->o:Lcom/unionpay/mobile/android/upwidget/UPScrollView;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->o:Lcom/unionpay/mobile/android/upwidget/UPScrollView;

    invoke-virtual {v2, v4, v4, v4, v4}, Lcom/unionpay/mobile/android/upwidget/UPScrollView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->o:Lcom/unionpay/mobile/android/upwidget/UPScrollView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {v2, v5, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v0, v3}, Lcom/unionpay/mobile/android/utils/f;->a(Landroid/content/Context;F)I

    move-result v0

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/b;->t:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/b;->t:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/b;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setId(I)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/b;->t:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v3, v3, Lcom/unionpay/mobile/android/model/b;->aH:Z

    if-eqz v3, :cond_e7

    sget-boolean v3, Lcom/unionpay/mobile/android/model/b;->bg:Z

    if-nez v3, :cond_e7

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/b;->t:Landroid/widget/LinearLayout;

    const v4, -0x8581

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :goto_78
    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/b;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const-string v0, ""

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->am:Ljava/lang/String;

    invoke-static {v3}, Lcom/unionpay/mobile/android/nocard/views/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->am:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9e
    invoke-static {v0}, Lcom/unionpay/mobile/android/nocard/views/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f7

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v4, v4, Lcom/unionpay/mobile/android/model/b;->aH:Z

    if-eqz v4, :cond_f0

    sget-boolean v4, Lcom/unionpay/mobile/android/model/b;->bg:Z

    if-nez v4, :cond_f0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_b8
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_c5
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v1, -0x10100c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->o:Lcom/unionpay/mobile/android/upwidget/UPScrollView;

    invoke-virtual {v2, v0, v1}, Lcom/unionpay/mobile/android/upwidget/UPScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0

    :cond_e7
    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/b;->t:Landroid/widget/LinearLayout;

    const v4, -0x41448

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_78

    :cond_f0
    const v4, -0x99999a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_b8

    :cond_f7
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_c5
.end method


# virtual methods
.method protected final a()Landroid/widget/RelativeLayout;
    .registers 5

    const/4 v3, -0x1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0, v0, v1}, Lcom/unionpay/mobile/android/nocard/views/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected final a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/y;
    .registers 10

    const/4 v1, 0x0

    const-string v0, "type"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/unionpay/mobile/android/global/a;->I:I

    sget v3, Lcom/unionpay/mobile/android/global/a;->f:I

    mul-int/lit8 v3, v3, 0x4

    sub-int v4, v2, v3

    const-string v2, "pan"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    new-instance v1, Lcom/unionpay/mobile/android/widgets/ae;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v0, v4, p1, p2}, Lcom/unionpay/mobile/android/widgets/ae;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V

    :cond_1e
    :goto_1e
    if-eqz v1, :cond_2a

    instance-of v0, v1, Lcom/unionpay/mobile/android/widgets/z;

    if-eqz v0, :cond_2a

    move-object v0, v1

    check-cast v0, Lcom/unionpay/mobile/android/widgets/z;

    invoke-virtual {v0, p0}, Lcom/unionpay/mobile/android/widgets/z;->a(Lcom/unionpay/mobile/android/widgets/z$a;)V

    :cond_2a
    return-object v1

    :cond_2b
    const-string v2, "mobile"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    new-instance v1, Lcom/unionpay/mobile/android/widgets/ag;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v0, v4, p1, p2}, Lcom/unionpay/mobile/android/widgets/ag;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1e

    :cond_3b
    const-string v2, "sms"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    new-instance v1, Lcom/unionpay/mobile/android/widgets/ao;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v0, v4, p1, p2}, Lcom/unionpay/mobile/android/widgets/ao;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1e

    :cond_4b
    const-string v2, "cvn2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b

    new-instance v1, Lcom/unionpay/mobile/android/widgets/e;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v0, v4, p1, p2}, Lcom/unionpay/mobile/android/widgets/e;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1e

    :cond_5b
    const-string v2, "expire"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6b

    new-instance v1, Lcom/unionpay/mobile/android/widgets/au;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v0, v4, p1, p2}, Lcom/unionpay/mobile/android/widgets/au;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1e

    :cond_6b
    const-string v2, "pwd"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_84

    new-instance v0, Lcom/unionpay/mobile/android/widgets/UPWidget;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v2}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c()J

    move-result-wide v2

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/unionpay/mobile/android/widgets/UPWidget;-><init>(Landroid/content/Context;JILorg/json/JSONObject;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_1e

    :cond_84
    const-string v2, "text"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_94

    new-instance v1, Lcom/unionpay/mobile/android/widgets/as;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v0, v4, p1, p2}, Lcom/unionpay/mobile/android/widgets/as;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1e

    :cond_94
    const-string v2, "string"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a5

    new-instance v1, Lcom/unionpay/mobile/android/widgets/ac;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v0, p1, p2}, Lcom/unionpay/mobile/android/widgets/ac;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_1e

    :cond_a5
    const-string v2, "cert_id"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b6

    new-instance v1, Lcom/unionpay/mobile/android/widgets/f;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v0, v4, p1, p2}, Lcom/unionpay/mobile/android/widgets/f;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_1e

    :cond_b6
    const-string v2, "cert_type"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c7

    new-instance v1, Lcom/unionpay/mobile/android/widgets/g;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v0, p1, p2}, Lcom/unionpay/mobile/android/widgets/g;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_1e

    :cond_c7
    const-string v2, "name"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d8

    new-instance v1, Lcom/unionpay/mobile/android/widgets/ad;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v0, v4, p1, p2}, Lcom/unionpay/mobile/android/widgets/ad;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_1e

    :cond_d8
    const-string v2, "hidden"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e9

    new-instance v1, Lcom/unionpay/mobile/android/widgets/x;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v0, p1, p2}, Lcom/unionpay/mobile/android/widgets/x;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_1e

    :cond_e9
    const-string v2, "user_name"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_fa

    new-instance v1, Lcom/unionpay/mobile/android/widgets/at;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v0, v4, p1, p2}, Lcom/unionpay/mobile/android/widgets/at;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_1e

    :cond_fa
    const-string v2, "password"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v1, Lcom/unionpay/mobile/android/widgets/an;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v0, v4, p1, p2}, Lcom/unionpay/mobile/android/widgets/an;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_1e
.end method

.method public final a(I)V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    check-cast v0, Lcom/unionpay/mobile/android/plugin/BaseActivity;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->a(I)V

    return-void
.end method

.method protected final a(ILcom/unionpay/mobile/android/model/e;)V
    .registers 6

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    check-cast v0, Lcom/unionpay/mobile/android/plugin/BaseActivity;

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_9e

    :goto_8
    :pswitch_8
    if-eqz v1, :cond_d

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->a(Lcom/unionpay/mobile/android/nocard/views/b;)V

    :cond_d
    return-void

    :pswitch_e
    invoke-virtual {v0, p1, p2}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->a(ILcom/unionpay/mobile/android/model/e;)Lcom/unionpay/mobile/android/nocard/views/b;

    move-result-object v1

    goto :goto_8

    :pswitch_13
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_36

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget v2, v2, Lcom/unionpay/mobile/android/model/b;->I:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unionpay/mobile/android/model/c;

    invoke-interface {v1}, Lcom/unionpay/mobile/android/model/c;->c()I

    move-result v1

    :cond_36
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->i()Z

    move-result v2

    if-nez v2, :cond_4a

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget v1, v1, Lcom/unionpay/mobile/android/model/b;->aK:I

    sget-object v2, Lcom/unionpay/mobile/android/views/order/l;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_58

    :cond_4a
    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v1, v1, Lcom/unionpay/mobile/android/model/b;->bl:Z

    if-nez v1, :cond_58

    new-instance v1, Lcom/unionpay/mobile/android/nocard/views/at;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Lcom/unionpay/mobile/android/nocard/views/at;-><init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/e;)V

    goto :goto_8

    :cond_58
    const/4 v1, 0x6

    invoke-virtual {v0, v1, p2}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->a(ILcom/unionpay/mobile/android/model/e;)Lcom/unionpay/mobile/android/nocard/views/b;

    move-result-object v1

    goto :goto_8

    :pswitch_5e
    new-instance v1, Lcom/unionpay/mobile/android/nocard/views/bd;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/unionpay/mobile/android/nocard/views/bd;-><init>(Landroid/content/Context;)V

    goto :goto_8

    :pswitch_66
    new-instance v1, Lcom/unionpay/mobile/android/nocard/views/g;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/unionpay/mobile/android/nocard/views/g;-><init>(Landroid/content/Context;)V

    goto :goto_8

    :pswitch_6e
    new-instance v1, Lcom/unionpay/mobile/android/nocard/views/ak;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/unionpay/mobile/android/nocard/views/ak;-><init>(Landroid/content/Context;)V

    goto :goto_8

    :pswitch_76
    new-instance v1, Lcom/unionpay/mobile/android/nocard/views/ai;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/unionpay/mobile/android/nocard/views/ai;-><init>(Landroid/content/Context;)V

    goto :goto_8

    :pswitch_7e
    new-instance v1, Lcom/unionpay/mobile/android/nocard/views/af;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/unionpay/mobile/android/nocard/views/af;-><init>(Landroid/content/Context;)V

    goto :goto_8

    :pswitch_86
    new-instance v1, Lcom/unionpay/mobile/android/nocard/views/o;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Lcom/unionpay/mobile/android/nocard/views/o;-><init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/e;)V

    goto/16 :goto_8

    :pswitch_8f
    new-instance v1, Lcom/unionpay/mobile/android/nocard/views/bi;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/unionpay/mobile/android/nocard/views/bi;-><init>(Landroid/content/Context;)V

    goto/16 :goto_8

    :pswitch_98
    invoke-virtual {v0, p1, p2}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->a(ILcom/unionpay/mobile/android/model/e;)Lcom/unionpay/mobile/android/nocard/views/b;

    move-result-object v1

    goto/16 :goto_8

    :pswitch_data_9e
    .packed-switch 0x2
        :pswitch_e
        :pswitch_8
        :pswitch_8
        :pswitch_66
        :pswitch_13
        :pswitch_8
        :pswitch_5e
        :pswitch_8
        :pswitch_6e
        :pswitch_76
        :pswitch_7e
        :pswitch_86
        :pswitch_8f
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_98
    .end packed-switch
.end method

.method public final a(ILjava/lang/String;)V
    .registers 11

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x2

    iput-boolean v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->j:Z

    const-string v1, "uppay"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/unionpay/mobile/android/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_14f

    const-string v1, "uppay"

    const-string v3, "parserResponseMesage() +++"

    invoke-static {v1, v3}, Lcom/unionpay/mobile/android/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz p2, :cond_2f

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4e

    :cond_2f
    const-string v0, "uppay"

    const-string v3, " ERROR_MSG_FORMAT"

    invoke-static {v0, v3}, Lcom/unionpay/mobile/android/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    :cond_37
    :goto_37
    if-eqz v0, :cond_14a

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->h:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/unionpay/mobile/android/nocard/views/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_46

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/b;->b(I)V

    :cond_46
    :goto_46
    const-string v0, "uppay"

    const-string v1, "parserResponseMesage() ---"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4d
    return-void

    :cond_4e
    :try_start_4e
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "resp"

    invoke-static {v3, v4}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/b;->g:Ljava/lang/String;

    const-string v4, "msg"

    invoke-static {v3, v4}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/b;->h:Ljava/lang/String;

    const-string v4, "cmd"

    invoke-static {v3, v4}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/b;->i:Ljava/lang/String;

    const-string v4, "params"

    invoke-static {v3, v4}, Lcom/unionpay/mobile/android/utils/i;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/b;->g:Ljava/lang/String;

    const-string v4, "00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_37

    const-string v0, "pay"

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a1

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->z:Ljava/lang/String;

    if-eqz v0, :cond_ca

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->z:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_ca

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->z:Ljava/lang/String;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ca

    :cond_a1
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/b;->q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/unionpay/mobile/android/utils/o;->j:[Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/unionpay/mobile/android/nocard/views/b;->g:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/unionpay/mobile/android/nocard/views/b;->h:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v0, v3, v4, v5}, Lcom/unionpay/mobile/android/nocard/views/b;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_ca
    const-string v0, "rules"

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fd

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/b;->q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_cardNO_fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/unionpay/mobile/android/utils/o;->j:[Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/unionpay/mobile/android/nocard/views/b;->g:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/unionpay/mobile/android/nocard/views/b;->h:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v0, v3, v4, v5}, Lcom/unionpay/mobile/android/nocard/views/b;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_fd
    const-string v0, "getuserinfo"

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11d

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    const-string v3, "login_fail"

    sget-object v4, Lcom/unionpay/mobile/android/utils/o;->j:[Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/unionpay/mobile/android/nocard/views/b;->g:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/unionpay/mobile/android/nocard/views/b;->h:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v0, v3, v4, v5}, Lcom/unionpay/mobile/android/nocard/views/b;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11d
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->g:Ljava/lang/String;

    const-string v3, "21"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_140

    const/16 v0, 0x11

    const-string v3, "uppay"

    const-string v4, " ERROR_ORDER_TIMEOUT"

    invoke-static {v3, v4}, Lcom/unionpay/mobile/android/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_130
    .catch Lorg/json/JSONException; {:try_start_4e .. :try_end_130} :catch_132

    goto/16 :goto_37

    :catch_132
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string v0, "uppay"

    const-string v3, " ERROR_MSG_FORMAT"

    invoke-static {v0, v3}, Lcom/unionpay/mobile/android/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto/16 :goto_37

    :cond_140
    const/4 v0, 0x3

    :try_start_141
    const-string v3, "uppay"

    const-string v4, " ERROR_TRANSACTION"

    invoke-static {v3, v4}, Lcom/unionpay/mobile/android/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_148
    .catch Lorg/json/JSONException; {:try_start_141 .. :try_end_148} :catch_132

    goto/16 :goto_37

    :cond_14a
    invoke-virtual {p0, v1}, Lcom/unionpay/mobile/android/nocard/views/b;->a(Lorg/json/JSONObject;)V

    goto/16 :goto_46

    :cond_14f
    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/b;->b(I)V

    goto/16 :goto_4d
.end method

.method public final a(Lcom/unionpay/mobile/android/widgets/t;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/unionpay/mobile/android/nocard/views/b;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method protected final a(Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .registers 10

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v0, p2, p3}, Lcom/unionpay/mobile/android/widgets/m;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->Y:Ljava/lang/String;

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v3, v2, Lcom/unionpay/mobile/android/languages/c;->W:Ljava/lang/String;

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v4, v2, Lcom/unionpay/mobile/android/languages/c;->X:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/unionpay/mobile/android/nocard/views/b;->a(Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;IZZ)V
    .registers 9

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iput-object p2, v0, Lcom/unionpay/mobile/android/model/b;->ab:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iput-object p1, v0, Lcom/unionpay/mobile/android/model/b;->aa:Ljava/lang/String;

    const/16 v0, 0xe

    invoke-direct {p0, v0, p3, p4, p5}, Lcom/unionpay/mobile/android/nocard/views/b;->a(IIZZ)V

    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/unionpay/mobile/android/nocard/views/b;->a(Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method protected final a(Ljava/lang/String;Z)V
    .registers 6

    new-instance v0, Lcom/unionpay/mobile/android/nocard/views/d;

    invoke-direct {v0, p0, p2}, Lcom/unionpay/mobile/android/nocard/views/d;-><init>(Lcom/unionpay/mobile/android/nocard/views/b;Z)V

    const-string v1, "uppay"

    const-string v2, " showErrDialog(msg, boolean)  "

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->b:Lcom/unionpay/mobile/android/widgets/m;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/unionpay/mobile/android/widgets/m;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->Y:Ljava/lang/String;

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->W:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method protected b()V
    .registers 1

    return-void
.end method

.method public b(I)V
    .registers 4

    const/16 v0, 0x8

    if-eq p1, v0, :cond_c

    const/16 v0, 0x11

    if-eq p1, v0, :cond_c

    const/16 v0, 0x13

    if-ne p1, v0, :cond_24

    :cond_c
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->D:Lcom/unionpay/mobile/android/plugin/c;

    const-string v1, "fail"

    iput-object v1, v0, Lcom/unionpay/mobile/android/plugin/c;->f:Ljava/lang/String;

    const-string v0, "uppay"

    const-string v1, "showErrDialog 1"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/b;->c(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/unionpay/mobile/android/nocard/views/b;->a(Ljava/lang/String;Z)V

    :goto_23
    return-void

    :cond_24
    const-string v0, "uppay"

    const-string v1, "showErrDialog 2"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/b;->c(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/unionpay/mobile/android/nocard/views/b;->a(Ljava/lang/String;Z)V

    goto :goto_23
.end method

.method protected b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    return-void
.end method

.method protected final b(Lorg/json/JSONObject;)Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {v1, p1}, Lcom/unionpay/mobile/android/nocard/utils/f;->c(Lcom/unionpay/mobile/android/model/b;Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/b;->c(Lorg/json/JSONObject;)V

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method protected final c(I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_48

    :pswitch_3
    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/languages/c;->aA:Ljava/lang/String;

    :goto_7
    return-object v0

    :pswitch_8
    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/languages/c;->aB:Ljava/lang/String;

    goto :goto_7

    :pswitch_d
    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/languages/c;->aG:Ljava/lang/String;

    goto :goto_7

    :pswitch_12
    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/languages/c;->aH:Ljava/lang/String;

    goto :goto_7

    :pswitch_17
    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/languages/c;->aI:Ljava/lang/String;

    goto :goto_7

    :pswitch_1c
    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/languages/c;->az:Ljava/lang/String;

    goto :goto_7

    :pswitch_21
    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/languages/c;->aJ:Ljava/lang/String;

    goto :goto_7

    :pswitch_26
    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/languages/c;->aK:Ljava/lang/String;

    goto :goto_7

    :pswitch_2b
    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/languages/c;->aL:Ljava/lang/String;

    goto :goto_7

    :pswitch_30
    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/languages/c;->aM:Ljava/lang/String;

    goto :goto_7

    :pswitch_35
    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/languages/c;->aN:Ljava/lang/String;

    goto :goto_7

    :pswitch_3a
    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/languages/c;->aO:Ljava/lang/String;

    goto :goto_7

    :pswitch_3f
    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/languages/c;->aP:Ljava/lang/String;

    goto :goto_7

    :pswitch_44
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->h:Ljava/lang/String;

    goto :goto_7

    nop

    :pswitch_data_48
    .packed-switch 0x2
        :pswitch_8
        :pswitch_44
        :pswitch_1c
        :pswitch_12
        :pswitch_17
        :pswitch_d
        :pswitch_21
        :pswitch_26
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_30
        :pswitch_44
        :pswitch_3f
        :pswitch_35
        :pswitch_3a
        :pswitch_2b
    .end packed-switch
.end method

.method protected c()V
    .registers 1

    return-void
.end method

.method protected final c(Lorg/json/JSONObject;)V
    .registers 7

    new-instance v0, Lcom/unionpay/mobile/android/nocard/views/e;

    invoke-direct {v0, p0, p1}, Lcom/unionpay/mobile/android/nocard/views/e;-><init>(Lcom/unionpay/mobile/android/nocard/views/b;Lorg/json/JSONObject;)V

    new-instance v1, Lcom/unionpay/mobile/android/nocard/views/f;

    invoke-direct {v1, p0, p1}, Lcom/unionpay/mobile/android/nocard/views/f;-><init>(Lcom/unionpay/mobile/android/nocard/views/b;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v2, v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->b:Lcom/unionpay/mobile/android/widgets/m;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->aB:Ljava/lang/String;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->aC:Ljava/lang/String;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->aD:Ljava/lang/String;

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v4, v4, Lcom/unionpay/mobile/android/model/b;->aF:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected d()V
    .registers 2

    invoke-direct {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->t()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->m:Landroid/widget/RelativeLayout;

    return-void
.end method

.method protected final d(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/unionpay/mobile/android/nocard/views/b;->a(IIZZ)V

    return-void
.end method

.method protected final e()V
    .registers 6

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->a()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->b()V

    invoke-direct {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->t()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setId(I)V

    const v2, -0x110002

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->l:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->l:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->f()V

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->l:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v3, Lcom/unionpay/mobile/android/global/a;->b:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->c()V

    return-void
.end method

.method public final e(I)V
    .registers 4

    iget v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->v:I

    if-lt p1, v0, :cond_1f

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->t:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->t:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    iget v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->v:I

    iget v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->u:I

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_1e

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->t:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->t:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1e
.end method

.method protected f()V
    .registers 10

    const v8, -0x99999a

    const/4 v2, 0x1

    const/4 v7, -0x2

    const/4 v1, 0x0

    const/4 v6, -0x1

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->s:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->aH:Z

    if-eqz v0, :cond_178

    sget-boolean v0, Lcom/unionpay/mobile/android/model/b;->bg:Z

    if-nez v0, :cond_178

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->s:Landroid/widget/LinearLayout;

    const v3, -0x8581

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :goto_27
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v0, v3}, Lcom/unionpay/mobile/android/utils/f;->a(Landroid/content/Context;F)I

    move-result v3

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->am:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/mobile/android/nocard/views/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_182

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :goto_3e
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/b;->l:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/b;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, ""

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v4, v4, Lcom/unionpay/mobile/android/model/b;->ao:Ljava/lang/String;

    invoke-static {v4}, Lcom/unionpay/mobile/android/nocard/views/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v4, v4, Lcom/unionpay/mobile/android/model/b;->ao:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6d
    invoke-static {v0}, Lcom/unionpay/mobile/android/nocard/views/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18e

    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v5, v5, Lcom/unionpay/mobile/android/model/b;->aH:Z

    if-eqz v5, :cond_189

    sget-boolean v5, Lcom/unionpay/mobile/android/model/b;->bg:Z

    if-nez v5, :cond_189

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_87
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_94
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->r:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->aH:Z

    if-eqz v0, :cond_197

    sget-boolean v0, Lcom/unionpay/mobile/android/model/b;->bg:Z

    if-nez v0, :cond_197

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->r:Landroid/widget/LinearLayout;

    const v4, -0x8581

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :goto_b4
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/b;->l:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/b;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, ""

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->am:Ljava/lang/String;

    invoke-static {v3}, Lcom/unionpay/mobile/android/nocard/views/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->am:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_e8
    invoke-static {v0}, Lcom/unionpay/mobile/android/nocard/views/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a6

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v4, v4, Lcom/unionpay/mobile/android/model/b;->aH:Z

    if-eqz v4, :cond_1a1

    sget-boolean v4, Lcom/unionpay/mobile/android/model/b;->bg:Z

    if-nez v4, :cond_1a1

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_102
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_10f
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v3, Lcom/unionpay/mobile/android/nocard/views/c;

    invoke-direct {v3, p0}, Lcom/unionpay/mobile/android/nocard/views/c;-><init>(Lcom/unionpay/mobile/android/nocard/views/b;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    new-instance v3, Lcom/unionpay/mobile/android/views/order/m;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v3, v0}, Lcom/unionpay/mobile/android/views/order/m;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->c:Lcom/unionpay/mobile/android/resource/c;

    const/16 v4, 0x3eb

    invoke-virtual {v0, v4}, Lcom/unionpay/mobile/android/resource/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/b;->c:Lcom/unionpay/mobile/android/resource/c;

    const/16 v5, 0x3e9

    invoke-virtual {v4, v5}, Lcom/unionpay/mobile/android/resource/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/unionpay/mobile/android/views/order/m;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    instance-of v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;

    if-eqz v0, :cond_1af

    move v0, v1

    :goto_13c
    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->e:Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->f:Lorg/json/JSONObject;

    invoke-virtual {v3, v0, v1, v2}, Lcom/unionpay/mobile/android/views/order/m;->a(ZLorg/json/JSONArray;Lorg/json/JSONObject;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->l:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->c:Lcom/unionpay/mobile/android/resource/c;

    const/16 v1, 0x402

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/resource/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_165

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_165
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/f;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->l:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_178
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->s:Landroid/widget/LinearLayout;

    const v3, -0x41448

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_27

    :cond_182
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_3e

    :cond_189
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_87

    :cond_18e
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->s:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_94

    :cond_197
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->r:Landroid/widget/LinearLayout;

    const v4, -0x41448

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_b4

    :cond_1a1
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_102

    :cond_1a6
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->r:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_10f

    :cond_1af
    move v0, v2

    goto :goto_13c
.end method

.method protected final g()V
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->m:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public final h()I
    .registers 2

    iget v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->f:I

    return v0
.end method

.method protected final i()Z
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->E:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method protected final j()V
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->b:Lcom/unionpay/mobile/android/widgets/m;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/m;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/m;->c()V

    :cond_11
    return-void
.end method

.method public final k()V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/nocard/utils/d;->a(Landroid/content/Context;Lcom/unionpay/mobile/android/model/b;)V

    return-void
.end method

.method public l()V
    .registers 2

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->j:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->n()V

    :cond_7
    return-void
.end method

.method public final m()V
    .registers 1

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->l()V

    return-void
.end method

.method public final n()V
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    check-cast v0, Lcom/unionpay/mobile/android/plugin/BaseActivity;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->b()V

    return-void
.end method

.method protected final o()Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->b:Lcom/unionpay/mobile/android/widgets/m;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/widgets/m;->a()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    const-string v1, "uppay"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " dialog showing:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 4

    const-string v0, "uppayEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onAttachedToWindow()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v0, p0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a(Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine$a;)V

    return-void
.end method

.method protected final q()Z
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->c:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final r()V
    .registers 4

    sget-boolean v0, Lcom/unionpay/mobile/android/global/a;->L:Z

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->w:Landroid/app/Activity;

    if-eqz v0, :cond_46

    const-string v0, "uppay-TD"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "page start: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_View"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->w:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_View"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/sdk/UPAgent;->onPageStart(Landroid/content/Context;Ljava/lang/String;)V

    :cond_46
    return-void
.end method

.method public final s()V
    .registers 4

    sget-boolean v0, Lcom/unionpay/mobile/android/global/a;->L:Z

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->w:Landroid/app/Activity;

    if-eqz v0, :cond_46

    const-string v0, "uppay-TD"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "page end: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_View"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->w:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_View"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/sdk/UPAgent;->onPageEnd(Landroid/content/Context;Ljava/lang/String;)V

    :cond_46
    return-void
.end method
