.class Lcom/baidu/wallet/core/plugins/pluginmanager/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/f;->a:Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/f;->a:Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->a(Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;)Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->dismiss()V

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/f;->a:Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ev_plugin_grade_showgradedialog_negativeListener_prefix"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/f;->a:Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    invoke-static {v2}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->b(Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->a(Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;Ljava/lang/String;)V

    return-void
.end method
