.class public Lcom/bestpay/ui/ProgressWebView;
.super Landroid/webkit/WebView;
.source "ProgressWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bestpay/ui/ProgressWebView$WebChromeClient;
    }
.end annotation


# instance fields
.field private progressbar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    .line 16
    const v3, 0x1010078

    invoke-direct {v1, p1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    iput-object v1, p0, Lcom/bestpay/ui/ProgressWebView;->progressbar:Landroid/widget/ProgressBar;

    .line 17
    iget-object v1, p0, Lcom/bestpay/ui/ProgressWebView;->progressbar:Landroid/widget/ProgressBar;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v3, -0x1

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 19
    const-string v2, "progress_bar_states"

    const-string v3, "drawable"

    invoke-direct {p0, v2, v3, p1}, Lcom/bestpay/ui/ProgressWebView;->getIdentifierByStr(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    .line 18
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 20
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/bestpay/ui/ProgressWebView;->progressbar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    iget-object v1, p0, Lcom/bestpay/ui/ProgressWebView;->progressbar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1}, Lcom/bestpay/ui/ProgressWebView;->addView(Landroid/view/View;)V

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/bestpay/ui/ProgressWebView;)Landroid/widget/ProgressBar;
    .registers 2

    .prologue
    .line 11
    iget-object v0, p0, Lcom/bestpay/ui/ProgressWebView;->progressbar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private getIdentifierByStr(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/bestpay/ui/ProgressWebView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 26
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .registers 7
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 49
    iget-object v1, p0, Lcom/bestpay/ui/ProgressWebView;->progressbar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 50
    .local v0, "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    iput p1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 51
    iput p2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 52
    iget-object v1, p0, Lcom/bestpay/ui/ProgressWebView;->progressbar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 54
    return-void
.end method
