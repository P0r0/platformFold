.class public Lcom/bbk/payment/dealRecord/VivoListViewHeader;
.super Landroid/widget/LinearLayout;


# static fields
.field public static final STATE_NORMAL:I = 0x0

.field public static final STATE_READY:I = 0x1

.field public static final STATE_REFRESHING:I = 0x2


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ProgressBar;

.field private d:Landroid/widget/TextView;

.field private e:I

.field private f:Landroid/view/animation/Animation;

.field private g:Landroid/view/animation/Animation;

.field private h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->e:I

    invoke-direct {p0, p1}, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->e:I

    invoke-direct {p0, p1}, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->h:Landroid/content/Context;

    const-string v1, "id"

    invoke-static {v0, v1, p1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 16

    const-wide/16 v12, 0xb4

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    iput-object p1, p0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->h:Landroid/content/Context;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v6, "vivo_listview_header"

    iget-object v7, p0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->h:Landroid/content/Context;

    const-string v8, "layout"

    invoke-static {v7, v8, v6}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->a:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v5}, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->setGravity(I)V

    const-string v0, "xlistview_header_arrow"

    invoke-direct {p0, v0}, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->b:Landroid/widget/ImageView;

    const-string v0, "xlistview_header_hint_textview"

    invoke-direct {p0, v0}, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->d:Landroid/widget/TextView;

    const-string v0, "xlistview_header_progressbar"

    invoke-direct {p0, v0}, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->c:Landroid/widget/ProgressBar;

    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->f:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v5, Landroid/view/animation/RotateAnimation;

    move v6, v2

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v5, p0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->g:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->g:Landroid/view/animation/Animation;

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->g:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->h:Landroid/content/Context;

    iget-object v1, p0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->h:Landroid/content/Context;

    const-string v2, "string"

    invoke-static {v1, v2, p1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getVisiableHeight()I
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v0
.end method

.method public setState(I)V
    .registers 7

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->e:I

    if-ne p1, v0, :cond_9

    :goto_8
    return-void

    :cond_9
    if-ne p1, v3, :cond_20

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_1a
    packed-switch p1, :pswitch_data_74

    :cond_1d
    :goto_1d
    iput p1, p0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->e:I

    goto :goto_8

    :cond_20
    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1a

    :pswitch_2b
    iget v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->e:I

    if-ne v0, v2, :cond_36

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->g:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_36
    iget v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->e:I

    if-ne v0, v3, :cond_3f

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    :cond_3f
    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->d:Landroid/widget/TextView;

    const-string v1, "xlistview_header_hint_normal"

    invoke-direct {p0, v1}, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1d

    :pswitch_4b
    iget v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->e:I

    if-eq v0, v2, :cond_1d

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->d:Landroid/widget/TextView;

    const-string v1, "xlistview_header_hint_ready"

    invoke-direct {p0, v1}, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1d

    :pswitch_67
    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->d:Landroid/widget/TextView;

    const-string v1, "xlistview_header_hint_loading"

    invoke-direct {p0, v1}, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1d

    nop

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_4b
        :pswitch_67
    .end packed-switch
.end method

.method public setVisiableHeight(I)V
    .registers 4

    if-gez p1, :cond_3

    const/4 p1, 0x0

    :cond_3
    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/bbk/payment/dealRecord/VivoListViewHeader;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
