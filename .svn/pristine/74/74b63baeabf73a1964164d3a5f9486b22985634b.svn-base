.class Lcom/baidu/scancode/ui/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/baidu/scancode/ui/ScanCodePwdPayActivity;


# direct methods
.method constructor <init>(Lcom/baidu/scancode/ui/ScanCodePwdPayActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/scancode/ui/b;->a:Lcom/baidu/scancode/ui/ScanCodePwdPayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/scancode/ui/b;->a:Lcom/baidu/scancode/ui/ScanCodePwdPayActivity;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    :try_start_7
    iget-object v0, p0, Lcom/baidu/scancode/ui/b;->a:Lcom/baidu/scancode/ui/ScanCodePwdPayActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/scancode/ui/ScanCodePwdPayActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    goto :goto_14
.end method
