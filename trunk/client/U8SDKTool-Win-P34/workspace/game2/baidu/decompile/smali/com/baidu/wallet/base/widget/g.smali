.class Lcom/baidu/wallet/base/widget/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/base/widget/BdMenuItem$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/baidu/wallet/base/widget/BdMenu;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/base/widget/BdMenu;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/base/widget/g;->a:Lcom/baidu/wallet/base/widget/BdMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/baidu/wallet/base/widget/BdMenuItem;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/g;->a:Lcom/baidu/wallet/base/widget/BdMenu;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/BdMenu;->dismiss()V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/g;->a:Lcom/baidu/wallet/base/widget/BdMenu;

    invoke-static {v0}, Lcom/baidu/wallet/base/widget/BdMenu;->b(Lcom/baidu/wallet/base/widget/BdMenu;)Lcom/baidu/wallet/base/widget/BdMenuItem$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/g;->a:Lcom/baidu/wallet/base/widget/BdMenu;

    invoke-static {v0}, Lcom/baidu/wallet/base/widget/BdMenu;->b(Lcom/baidu/wallet/base/widget/BdMenu;)Lcom/baidu/wallet/base/widget/BdMenuItem$OnItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/wallet/base/widget/BdMenuItem$OnItemClickListener;->onClick(Lcom/baidu/wallet/base/widget/BdMenuItem;)V

    :cond_16
    return-void
.end method
