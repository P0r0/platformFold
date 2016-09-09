.class Lcom/baidu/wallet/base/widget/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/baidu/wallet/base/widget/a;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/base/widget/a;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/base/widget/b;->a:Lcom/baidu/wallet/base/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/b;->a:Lcom/baidu/wallet/base/widget/a;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/a;->dismiss()V

    return-void
.end method
