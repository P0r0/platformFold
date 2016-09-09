.class Lcom/baidu/wallet/core/beans/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/base/widget/BdMenuItem$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/baidu/wallet/core/beans/BeanActivity;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/core/beans/BeanActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/core/beans/b;->a:Lcom/baidu/wallet/core/beans/BeanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/baidu/wallet/base/widget/BdMenuItem;)V
    .registers 3

    invoke-virtual {p1}, Lcom/baidu/wallet/base/widget/BdMenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    :goto_7
    return-void

    :pswitch_8
    iget-object v0, p0, Lcom/baidu/wallet/core/beans/b;->a:Lcom/baidu/wallet/core/beans/BeanActivity;

    invoke-virtual {v0}, Lcom/baidu/wallet/core/beans/BeanActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/base/datamodel/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/AccountManager;->logout()V

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/b;->a:Lcom/baidu/wallet/core/beans/BeanActivity;

    invoke-virtual {v0}, Lcom/baidu/wallet/core/beans/BeanActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/passport/a;->d(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/paysdk/PayCallBackManager;->callBackClientCancel()V

    goto :goto_7

    :pswitch_data_26
    .packed-switch 0x23
        :pswitch_8
    .end packed-switch
.end method
