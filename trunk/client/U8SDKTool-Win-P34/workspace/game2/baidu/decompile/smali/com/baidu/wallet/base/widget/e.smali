.class Lcom/baidu/wallet/base/widget/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/baidu/wallet/base/widget/BdMenuItem;

.field final synthetic b:Lcom/baidu/wallet/base/widget/BdContextMenuView;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/base/widget/BdContextMenuView;Lcom/baidu/wallet/base/widget/BdMenuItem;)V
    .registers 3

    iput-object p1, p0, Lcom/baidu/wallet/base/widget/e;->b:Lcom/baidu/wallet/base/widget/BdContextMenuView;

    iput-object p2, p0, Lcom/baidu/wallet/base/widget/e;->a:Lcom/baidu/wallet/base/widget/BdMenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/e;->a:Lcom/baidu/wallet/base/widget/BdMenuItem;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/BdMenuItem;->getOnClickListener()Lcom/baidu/wallet/base/widget/BdMenuItem$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/e;->a:Lcom/baidu/wallet/base/widget/BdMenuItem;

    invoke-interface {v0, v1}, Lcom/baidu/wallet/base/widget/BdMenuItem$OnItemClickListener;->onClick(Lcom/baidu/wallet/base/widget/BdMenuItem;)V

    :cond_d
    return-void
.end method
