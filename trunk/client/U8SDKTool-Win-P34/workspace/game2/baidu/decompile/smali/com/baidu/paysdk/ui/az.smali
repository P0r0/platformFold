.class Lcom/baidu/paysdk/ui/az;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;


# instance fields
.field final synthetic a:Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;


# direct methods
.method constructor <init>(Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/az;->a:Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onSucceed(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/az;->a:Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;

    invoke-static {v0}, Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;->a(Lcom/baidu/paysdk/ui/PrivacyProtectionActivity;)V

    return-void
.end method
