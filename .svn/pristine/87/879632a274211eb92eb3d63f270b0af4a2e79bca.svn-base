.class Lcom/baidu/paysdk/b/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;


# instance fields
.field final synthetic a:Lcom/baidu/paysdk/b/a/h;


# direct methods
.method constructor <init>(Lcom/baidu/paysdk/b/a/h;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/b/a/i;->a:Lcom/baidu/paysdk/b/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/paysdk/b/a/i;->a:Lcom/baidu/paysdk/b/a/h;

    invoke-static {v0}, Lcom/baidu/paysdk/b/a/h;->b(Lcom/baidu/paysdk/b/a/h;)Lcom/baidu/paysdk/b/a/r;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/baidu/paysdk/b/a/i;->a:Lcom/baidu/paysdk/b/a/h;

    invoke-static {v0}, Lcom/baidu/paysdk/b/a/h;->b(Lcom/baidu/paysdk/b/a/h;)Lcom/baidu/paysdk/b/a/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/paysdk/b/a/r;->clearSmsEditText()V

    iget-object v0, p0, Lcom/baidu/paysdk/b/a/i;->a:Lcom/baidu/paysdk/b/a/h;

    invoke-static {v0}, Lcom/baidu/paysdk/b/a/h;->b(Lcom/baidu/paysdk/b/a/h;)Lcom/baidu/paysdk/b/a/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/paysdk/b/a/r;->doStopCountDown()V

    :cond_1a
    iget-object v0, p0, Lcom/baidu/paysdk/b/a/i;->a:Lcom/baidu/paysdk/b/a/h;

    invoke-static {v0}, Lcom/baidu/paysdk/b/a/h;->a(Lcom/baidu/paysdk/b/a/h;)Lcom/baidu/paysdk/datamodel/BindFastRequest;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/baidu/paysdk/b/a/i;->a:Lcom/baidu/paysdk/b/a/h;

    invoke-static {v0}, Lcom/baidu/paysdk/b/a/h;->a(Lcom/baidu/paysdk/b/a/h;)Lcom/baidu/paysdk/datamodel/BindFastRequest;

    move-result-object v0

    iget v0, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_34

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getPassWordInstance()Lcom/baidu/wallet/base/controllers/PasswordController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/baidu/wallet/base/controllers/PasswordController;->setPassByUserFail(Ljava/lang/String;)V

    :cond_34
    return-void
.end method

.method public onSucceed(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/paysdk/b/a/i;->a:Lcom/baidu/paysdk/b/a/h;

    invoke-static {v0}, Lcom/baidu/paysdk/b/a/h;->a(Lcom/baidu/paysdk/b/a/h;)Lcom/baidu/paysdk/datamodel/BindFastRequest;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/baidu/paysdk/b/a/i;->a:Lcom/baidu/paysdk/b/a/h;

    invoke-static {v0}, Lcom/baidu/paysdk/b/a/h;->a(Lcom/baidu/paysdk/b/a/h;)Lcom/baidu/paysdk/datamodel/BindFastRequest;

    move-result-object v0

    iget v0, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1b

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getPassWordInstance()Lcom/baidu/wallet/base/controllers/PasswordController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/base/controllers/PasswordController;->setPassByUserSucceed(Ljava/lang/String;)V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    iget-object v0, p0, Lcom/baidu/paysdk/b/a/i;->a:Lcom/baidu/paysdk/b/a/h;

    invoke-static {v0}, Lcom/baidu/paysdk/b/a/h;->a(Lcom/baidu/paysdk/b/a/h;)Lcom/baidu/paysdk/datamodel/BindFastRequest;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/baidu/paysdk/b/a/i;->a:Lcom/baidu/paysdk/b/a/h;

    invoke-static {v0}, Lcom/baidu/paysdk/b/a/h;->a(Lcom/baidu/paysdk/b/a/h;)Lcom/baidu/paysdk/datamodel/BindFastRequest;

    move-result-object v0

    iget v0, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBindFrom:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1a

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getPassWordInstance()Lcom/baidu/wallet/base/controllers/PasswordController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/base/controllers/PasswordController;->forgetPasswdSucceed(Ljava/lang/String;)V

    goto :goto_1a
.end method
