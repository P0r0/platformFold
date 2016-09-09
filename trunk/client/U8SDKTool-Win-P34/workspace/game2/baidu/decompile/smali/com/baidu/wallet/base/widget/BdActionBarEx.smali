.class public Lcom/baidu/wallet/base/widget/BdActionBarEx;
.super Lcom/baidu/wallet/base/widget/BdActionBar;


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/wallet/base/widget/BdActionBar;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/BdActionBarEx;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/baidu/wallet/base/widget/BdActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/BdActionBarEx;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/wallet/base/widget/BdActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/BdActionBarEx;->a()V

    return-void
.end method

.method private a()V
    .registers 3

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/BdActionBarEx;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "title_close_txt"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/BdActionBarEx;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/BdActionBarEx;->a:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method protected getLayoutId()Ljava/lang/String;
    .registers 2

    const-string v0, "wallet_lightapp_action_bar"

    return-object v0
.end method

.method public setCloseOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/BdActionBarEx;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/BdActionBarEx;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
