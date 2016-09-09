.class public Lcom/bestpay/ui/CustomDialog;
.super Landroid/app/Dialog;
.source "CustomDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bestpay/ui/CustomDialog$ClickListener;
    }
.end annotation


# instance fields
.field private mCancelTv:Landroid/widget/TextView;

.field public mClickLister:Lcom/bestpay/ui/CustomDialog$ClickListener;

.field private mConfirmTv:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mMessageTv:Landroid/widget/TextView;

.field private mMsg:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 27
    sget v0, Lcom/bestpay/R$style;->MyDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 28
    iput-object p1, p0, Lcom/bestpay/ui/CustomDialog;->mContext:Landroid/content/Context;

    .line 29
    iget-object v0, p0, Lcom/bestpay/ui/CustomDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/bestpay/ui/CustomDialog;->mResources:Landroid/content/res/Resources;

    .line 30
    iput-object p2, p0, Lcom/bestpay/ui/CustomDialog;->mMsg:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public initView()V
    .registers 5

    .prologue
    .line 68
    iget-object v0, p0, Lcom/bestpay/ui/CustomDialog;->mResources:Landroid/content/res/Resources;

    .line 69
    const-string v1, "custom_dialog_confirm_cancel_tv"

    const-string v2, "id"

    .line 70
    iget-object v3, p0, Lcom/bestpay/ui/CustomDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bestpay/ui/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bestpay/ui/CustomDialog;->mMessageTv:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/bestpay/ui/CustomDialog;->mResources:Landroid/content/res/Resources;

    .line 72
    const-string v1, "custom_dialog_confirm_cancel_confirm_tv"

    const-string v2, "id"

    .line 73
    iget-object v3, p0, Lcom/bestpay/ui/CustomDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 71
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bestpay/ui/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bestpay/ui/CustomDialog;->mConfirmTv:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/bestpay/ui/CustomDialog;->mResources:Landroid/content/res/Resources;

    .line 75
    const-string v1, "custom_dialog_confirm_cancel_cancel_tv"

    const-string v2, "id"

    .line 76
    iget-object v3, p0, Lcom/bestpay/ui/CustomDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bestpay/ui/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bestpay/ui/CustomDialog;->mCancelTv:Landroid/widget/TextView;

    .line 77
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/bestpay/ui/CustomDialog;->requestWindowFeature(I)Z

    .line 42
    invoke-virtual {p0}, Lcom/bestpay/ui/CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 44
    .local v0, "manager":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/bestpay/ui/CustomDialog;->mResources:Landroid/content/res/Resources;

    const-string v2, "custom_dialog_confirm_cancel"

    .line 45
    const-string v3, "layout"

    iget-object v4, p0, Lcom/bestpay/ui/CustomDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 44
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bestpay/ui/CustomDialog;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Lcom/bestpay/ui/CustomDialog;->initView()V

    .line 49
    iget-object v1, p0, Lcom/bestpay/ui/CustomDialog;->mMessageTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bestpay/ui/CustomDialog;->mMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v1, p0, Lcom/bestpay/ui/CustomDialog;->mConfirmTv:Landroid/widget/TextView;

    new-instance v2, Lcom/bestpay/ui/CustomDialog$1;

    invoke-direct {v2, p0}, Lcom/bestpay/ui/CustomDialog$1;-><init>(Lcom/bestpay/ui/CustomDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v1, p0, Lcom/bestpay/ui/CustomDialog;->mCancelTv:Landroid/widget/TextView;

    new-instance v2, Lcom/bestpay/ui/CustomDialog$2;

    invoke-direct {v2, p0}, Lcom/bestpay/ui/CustomDialog$2;-><init>(Lcom/bestpay/ui/CustomDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void
.end method

.method public setOnClickListener(Lcom/bestpay/ui/CustomDialog$ClickListener;)V
    .registers 2
    .param p1, "clickLister"    # Lcom/bestpay/ui/CustomDialog$ClickListener;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/bestpay/ui/CustomDialog;->mClickLister:Lcom/bestpay/ui/CustomDialog$ClickListener;

    .line 87
    return-void
.end method
