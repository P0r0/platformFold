.class final Lcom/vivo/sdkplugin/activity/N;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/N;->a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    const/4 v1, 0x0

    const-string v0, "BindPhoneActivityLog"

    const-string v2, "mGetVerifyCode.onClick"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/N;->a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->e(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xb

    if-le v0, v3, :cond_36

    const/4 v0, 0x1

    :goto_23
    or-int/2addr v0, v2

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/N;->a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->l(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "\u8bf7\u586b\u5199\u6b63\u786e\u7684\u624b\u673a\u53f7"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_35
    return-void

    :cond_36
    move v0, v1

    goto :goto_23

    :cond_38
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/N;->a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->c(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;I)V

    goto :goto_35
.end method
