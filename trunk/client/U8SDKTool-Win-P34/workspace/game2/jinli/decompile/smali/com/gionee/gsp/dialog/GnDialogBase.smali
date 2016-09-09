.class public Lcom/gionee/gsp/dialog/GnDialogBase;
.super Landroid/app/Dialog;
.source "GnDialogBase.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const v0, 0x103000f

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 30
    iput-object p1, p0, Lcom/gionee/gsp/dialog/GnDialogBase;->mContext:Landroid/content/Context;

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/gionee/gsp/dialog/GnDialogBase;->requestWindowFeature(I)Z

    .line 32
    new-instance v0, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;

    invoke-direct {v0, p1}, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/gionee/gsp/ui/layout/GnDownloadDialogLayout;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gionee/gsp/dialog/GnDialogBase;->setContentView(Landroid/view/View;)V

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/gionee/gsp/dialog/GnDialogBase;->setCancelable(Z)V

    .line 34
    invoke-virtual {p0}, Lcom/gionee/gsp/dialog/GnDialogBase;->init()V

    .line 35
    invoke-virtual {p0, p1}, Lcom/gionee/gsp/dialog/GnDialogBase;->initRequestedOrientation(Landroid/content/Context;)V

    .line 36
    return-void
.end method


# virtual methods
.method public init()V
    .registers 3

    .prologue
    .line 69
    sget v0, Lcom/gionee/gsp/ui/values/GnPublic$id;->cancel_button:I

    invoke-virtual {p0, v0}, Lcom/gionee/gsp/dialog/GnDialogBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/gionee/gsp/dialog/GnDialogBase$1;

    invoke-direct {v1, p0}, Lcom/gionee/gsp/dialog/GnDialogBase$1;-><init>(Lcom/gionee/gsp/dialog/GnDialogBase;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void
.end method

.method protected initRequestedOrientation(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/gionee/gsp/dialog/GnDialogBase;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 41
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 42
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 43
    .local v1, "d":Landroid/util/DisplayMetrics;
    const/16 v4, 0x8

    invoke-static {p1, v4}, Lcom/gionee/gsp/util/GnCommonUtil;->parsePxByDp(Landroid/content/Context;I)I

    move-result v3

    .line 44
    .local v3, "marginPx":I
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3d

    .line 48
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 61
    :cond_27
    :goto_27
    const/16 v4, 0xfa

    invoke-static {p1, v4}, Lcom/gionee/gsp/util/GnCommonUtil;->parsePxByDp(Landroid/content/Context;I)I

    move-result v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 62
    const/16 v4, 0x50

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 63
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 64
    invoke-virtual {p0}, Lcom/gionee/gsp/dialog/GnDialogBase;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 65
    return-void

    .line 50
    :cond_3d
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_27

    .line 53
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v5, v3, 0x2

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_27
.end method
