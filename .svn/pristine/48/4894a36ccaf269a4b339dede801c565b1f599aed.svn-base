.class Lcom/baidu/paysdk/b/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;


# instance fields
.field final synthetic a:Lcom/baidu/paysdk/b/a/b;


# direct methods
.method constructor <init>(Lcom/baidu/paysdk/b/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/b/a/c;->a:Lcom/baidu/paysdk/b/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/paysdk/b/a/c;->a:Lcom/baidu/paysdk/b/a/b;

    invoke-static {v0}, Lcom/baidu/paysdk/b/a/b;->b(Lcom/baidu/paysdk/b/a/b;)Lcom/baidu/paysdk/b/a/r;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/baidu/paysdk/b/a/c;->a:Lcom/baidu/paysdk/b/a/b;

    invoke-static {v0}, Lcom/baidu/paysdk/b/a/b;->b(Lcom/baidu/paysdk/b/a/b;)Lcom/baidu/paysdk/b/a/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/paysdk/b/a/r;->clearSmsEditText()V

    iget-object v0, p0, Lcom/baidu/paysdk/b/a/c;->a:Lcom/baidu/paysdk/b/a/b;

    invoke-static {v0}, Lcom/baidu/paysdk/b/a/b;->b(Lcom/baidu/paysdk/b/a/b;)Lcom/baidu/paysdk/b/a/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/paysdk/b/a/r;->doStopCountDown()V

    :cond_1a
    return-void
.end method

.method public onSucceed(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/b/a/c;->a:Lcom/baidu/paysdk/b/a/b;

    invoke-static {v0}, Lcom/baidu/paysdk/b/a/b;->a(Lcom/baidu/paysdk/b/a/b;)Lcom/baidu/paysdk/datamodel/BindFastRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    :goto_d
    :pswitch_d
    return-void

    :pswitch_e
    invoke-static {}, Lcom/baidu/wallet/base/controllers/PayController;->getInstance()Lcom/baidu/wallet/base/controllers/PayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/base/controllers/PayController;->bindSuccess()V

    goto :goto_d

    :pswitch_16
    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getPassWordInstance()Lcom/baidu/wallet/base/controllers/PasswordController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/base/controllers/PasswordController;->forgetPasswdSucceed(Ljava/lang/String;)V

    goto :goto_d

    :pswitch_1e
    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getPassWordInstance()Lcom/baidu/wallet/base/controllers/PasswordController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/base/controllers/PasswordController;->forgetPasswdSucceed(Ljava/lang/String;)V

    goto :goto_d

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_16
        :pswitch_1e
    .end packed-switch
.end method
