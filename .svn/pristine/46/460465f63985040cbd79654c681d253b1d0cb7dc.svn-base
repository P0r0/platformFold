.class Lcom/baidu/scancode/ui/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;


# instance fields
.field final synthetic a:Lcom/baidu/scancode/ui/ScanCodePwdPayActivity;


# direct methods
.method constructor <init>(Lcom/baidu/scancode/ui/ScanCodePwdPayActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/scancode/ui/e;->a:Lcom/baidu/scancode/ui/ScanCodePwdPayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onSucceed(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/scancode/ui/e;->a:Lcom/baidu/scancode/ui/ScanCodePwdPayActivity;

    invoke-static {v0}, Lcom/baidu/scancode/ui/ScanCodePwdPayActivity;->a(Lcom/baidu/scancode/ui/ScanCodePwdPayActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/scancode/ui/e;->a:Lcom/baidu/scancode/ui/ScanCodePwdPayActivity;

    invoke-static {v0}, Lcom/baidu/scancode/ui/ScanCodePwdPayActivity;->a(Lcom/baidu/scancode/ui/ScanCodePwdPayActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    iget-object v0, p0, Lcom/baidu/scancode/ui/e;->a:Lcom/baidu/scancode/ui/ScanCodePwdPayActivity;

    iget-object v1, p0, Lcom/baidu/scancode/ui/e;->a:Lcom/baidu/scancode/ui/ScanCodePwdPayActivity;

    const-string v2, "ebpay_set_pwd_success"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/scancode/ui/e;->a:Lcom/baidu/scancode/ui/ScanCodePwdPayActivity;

    invoke-static {v0}, Lcom/baidu/scancode/ui/ScanCodePwdPayActivity;->a(Lcom/baidu/wallet/core/BaseActivity;)V

    return-void
.end method
