.class public Lcom/bbk/payment/dealRecord/VivoListViewFooter;
.super Landroid/widget/LinearLayout;


# static fields
.field public static final STATE_LOADING:I = 0x2

.field public static final STATE_NORMAL:I = 0x0

.field public static final STATE_READY:I = 0x1


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->a:Landroid/content/Context;

    const-string v1, "id"

    invoke-static {v0, v1, p1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 6

    iput-object p1, p0, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "vivo_listview_footer"

    iget-object v2, p0, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->a:Landroid/content/Context;

    const-string v3, "layout"

    invoke-static {v2, v3, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "xlistview_footer_content"

    invoke-direct {p0, v1}, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->b:Landroid/view/View;

    const-string v1, "xlistview_footer_progressbar"

    invoke-direct {p0, v1}, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->c:Landroid/view/View;

    const-string v1, "xlistview_footer_hint_textview"

    invoke-direct {p0, v1}, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->hide()V

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->a:Landroid/content/Context;

    const-string v2, "string"

    invoke-static {v1, v2, p1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBottomMargin()I
    .registers 2

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    return v0
.end method

.method public hide()V
    .registers 3

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public loading()V
    .registers 3

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public normal()V
    .registers 3

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setBottomMargin(I)V
    .registers 4

    if-gez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public setState(I)V
    .registers 5

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_28

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->d:Landroid/widget/TextView;

    const-string v1, "xlistview_footer_hint_ready"

    invoke-direct {p0, v1}, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->hide()V

    :goto_27
    return-void

    :cond_28
    const/4 v0, 0x2

    if-ne p1, v0, :cond_34

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->show()V

    goto :goto_27

    :cond_34
    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->d:Landroid/widget/TextView;

    const-string v1, "xlistview_footer_hint_normal"

    invoke-direct {p0, v1}, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->hide()V

    goto :goto_27
.end method

.method public show()V
    .registers 3

    iget-object v0, p0, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/bbk/payment/dealRecord/VivoListViewFooter;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
