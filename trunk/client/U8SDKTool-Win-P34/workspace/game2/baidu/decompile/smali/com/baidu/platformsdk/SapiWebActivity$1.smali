.class final Lcom/baidu/platformsdk/SapiWebActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/platformsdk/SapiWebActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/platformsdk/SapiWebActivity;


# direct methods
.method constructor <init>(Lcom/baidu/platformsdk/SapiWebActivity;)V
    .registers 2

    .prologue
    .line 130
    iput-object p1, p0, Lcom/baidu/platformsdk/SapiWebActivity$1;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 134
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity$1;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/SapiWebActivity;->a(Lcom/baidu/platformsdk/SapiWebActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_24

    .line 135
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity$1;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/SapiWebActivity;->b(Lcom/baidu/platformsdk/SapiWebActivity;)Lcom/baidu/sapi2/SapiWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiWebView;->loadForgetPwd()V

    .line 136
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity$1;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/SapiWebActivity;->c(Lcom/baidu/platformsdk/SapiWebActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/platformsdk/SapiWebActivity$1;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    const-string v2, "bdp_account_login_find_pass"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 163
    :goto_23
    return-void

    .line 140
    :cond_24
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_38

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ax;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 142
    :cond_38
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity$1;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-virtual {v0}, Lcom/baidu/platformsdk/SapiWebActivity;->finish()V

    goto :goto_23

    .line 145
    :cond_3e
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ax;->a()Ljava/lang/String;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/baidu/platformsdk/SapiWebActivity$1;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-static {v1}, Lcom/baidu/platformsdk/SapiWebActivity;->a(Lcom/baidu/platformsdk/SapiWebActivity;)I

    move-result v1

    packed-switch v1, :pswitch_data_aa

    .line 160
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity$1;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/SapiWebActivity;->c(Lcom/baidu/platformsdk/SapiWebActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_23

    .line 148
    :pswitch_57
    iget-object v1, p0, Lcom/baidu/platformsdk/SapiWebActivity$1;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-static {v1}, Lcom/baidu/platformsdk/SapiWebActivity;->b(Lcom/baidu/platformsdk/SapiWebActivity;)Lcom/baidu/sapi2/SapiWebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/SapiWebView;->loadModifyPwd(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity$1;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/SapiWebActivity;->c(Lcom/baidu/platformsdk/SapiWebActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/platformsdk/SapiWebActivity$1;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    const-string v2, "bdp_account_pwd_modify_title"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_23

    .line 152
    :pswitch_72
    iget-object v1, p0, Lcom/baidu/platformsdk/SapiWebActivity$1;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-static {v1}, Lcom/baidu/platformsdk/SapiWebActivity;->b(Lcom/baidu/platformsdk/SapiWebActivity;)Lcom/baidu/sapi2/SapiWebView;

    move-result-object v1

    sget-object v2, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;->BIND_MOBILE:Lcom/baidu/sapi2/utils/enums/BindWidgetAction;

    invoke-virtual {v1, v2, v0}, Lcom/baidu/sapi2/SapiWebView;->loadBindWidget(Lcom/baidu/sapi2/utils/enums/BindWidgetAction;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity$1;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/SapiWebActivity;->c(Lcom/baidu/platformsdk/SapiWebActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;->BIND_MOBILE:Lcom/baidu/sapi2/utils/enums/BindWidgetAction;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_23

    .line 156
    :pswitch_8d
    iget-object v1, p0, Lcom/baidu/platformsdk/SapiWebActivity$1;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-static {v1}, Lcom/baidu/platformsdk/SapiWebActivity;->b(Lcom/baidu/platformsdk/SapiWebActivity;)Lcom/baidu/sapi2/SapiWebView;

    move-result-object v1

    sget-object v2, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;->REBIND_MOBILE:Lcom/baidu/sapi2/utils/enums/BindWidgetAction;

    invoke-virtual {v1, v2, v0}, Lcom/baidu/sapi2/SapiWebView;->loadBindWidget(Lcom/baidu/sapi2/utils/enums/BindWidgetAction;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/baidu/platformsdk/SapiWebActivity$1;->a:Lcom/baidu/platformsdk/SapiWebActivity;

    invoke-static {v0}, Lcom/baidu/platformsdk/SapiWebActivity;->c(Lcom/baidu/platformsdk/SapiWebActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;->REBIND_MOBILE:Lcom/baidu/sapi2/utils/enums/BindWidgetAction;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_23

    .line 146
    nop

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_57
        :pswitch_72
        :pswitch_8d
    .end packed-switch
.end method
