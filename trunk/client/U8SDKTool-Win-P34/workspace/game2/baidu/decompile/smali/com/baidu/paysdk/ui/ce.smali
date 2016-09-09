.class Lcom/baidu/paysdk/ui/ce;
.super Lcom/baidu/wallet/core/utils/PassUtil$PassNormalize;


# instance fields
.field final synthetic a:Lcom/baidu/paysdk/ui/SecurityCenterActivity;


# direct methods
.method constructor <init>(Lcom/baidu/paysdk/ui/SecurityCenterActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/ce;->a:Lcom/baidu/paysdk/ui/SecurityCenterActivity;

    invoke-direct {p0}, Lcom/baidu/wallet/core/utils/PassUtil$PassNormalize;-><init>()V

    return-void
.end method


# virtual methods
.method public onNormalize(Landroid/content/Context;ILjava/util/Map;)Z
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/wallet/core/utils/PassUtil$PassNormalize;->onNormalize(Landroid/content/Context;ILjava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/baidu/paysdk/ui/ce;->a:Lcom/baidu/paysdk/ui/SecurityCenterActivity;

    invoke-static {v0}, Lcom/baidu/paysdk/ui/SecurityCenterActivity;->c(Lcom/baidu/paysdk/ui/SecurityCenterActivity;)V

    :goto_b
    const/4 v0, 0x0

    return v0

    :cond_d
    iget-object v0, p0, Lcom/baidu/paysdk/ui/ce;->a:Lcom/baidu/paysdk/ui/SecurityCenterActivity;

    invoke-virtual {v0}, Lcom/baidu/paysdk/ui/SecurityCenterActivity;->finish()V

    goto :goto_b
.end method
