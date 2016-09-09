.class public Lcom/baidu/platformsdk/BindPhoneActivity;
.super Lcom/baidu/platformsdk/LoginWatchActivity;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "bundle_key_user"


# instance fields
.field private b:Lcom/baidu/bdgame/sdk/obf/ct;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/baidu/platformsdk/LoginWatchActivity;-><init>()V

    return-void
.end method

.method private b()V
    .registers 4

    .prologue
    .line 76
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 77
    const-string v1, "intent_key_callback_result_code"

    const/16 v2, -0xfa1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    const-string v1, "intent_key_callback_result_desc"

    const-string v2, "bdp_fail"

    invoke-static {p0, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/baidu/platformsdk/BindPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/baidu/platformsdk/BindPhoneActivity;->setResult(ILandroid/content/Intent;)V

    .line 81
    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/bdgame/sdk/obf/ct;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/baidu/platformsdk/BindPhoneActivity;->b:Lcom/baidu/bdgame/sdk/obf/ct;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/baidu/platformsdk/BindPhoneActivity;->b:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ct;->a(IILandroid/content/Intent;)V

    .line 93
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/baidu/platformsdk/BindPhoneActivity;->b:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->c()Z

    move-result v0

    if-nez v0, :cond_b

    .line 86
    invoke-super {p0}, Lcom/baidu/platformsdk/LoginWatchActivity;->onBackPressed()V

    .line 88
    :cond_b
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/baidu/platformsdk/LoginWatchActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 98
    iget-object v0, p0, Lcom/baidu/platformsdk/BindPhoneActivity;->b:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->d()V

    .line 99
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/baidu/platformsdk/LoginWatchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-direct {p0}, Lcom/baidu/platformsdk/BindPhoneActivity;->b()V

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_10

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/BindPhoneActivity;->setFinishOnTouchOutside(Z)V

    .line 43
    :cond_10
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "bdp_blank"

    invoke-static {p0, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 45
    if-nez v1, :cond_4e

    .line 46
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/mi;->c(Landroid/content/Context;)I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 50
    :goto_2f
    invoke-virtual {p0, v0, v1}, Lcom/baidu/platformsdk/BindPhoneActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ct;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/platformsdk/BindPhoneActivity;->b:Lcom/baidu/bdgame/sdk/obf/ct;

    .line 52
    invoke-virtual {p0}, Lcom/baidu/platformsdk/BindPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bundle_key_user"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/fy;

    .line 53
    if-nez v0, :cond_55

    .line 54
    iget-object v0, p0, Lcom/baidu/platformsdk/BindPhoneActivity;->b:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->e()V

    .line 70
    :goto_4d
    return-void

    .line 48
    :cond_4e
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/mi;->c(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_2f

    .line 57
    :cond_55
    invoke-virtual {p0}, Lcom/baidu/platformsdk/BindPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 58
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fy;->e()Z

    move-result v2

    if-eqz v2, :cond_70

    .line 60
    iget-object v0, p0, Lcom/baidu/platformsdk/BindPhoneActivity;->b:Lcom/baidu/bdgame/sdk/obf/ct;

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/ex;

    iget-object v3, p0, Lcom/baidu/platformsdk/BindPhoneActivity;->b:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-direct {v2, v3}, Lcom/baidu/bdgame/sdk/obf/ex;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    invoke-virtual {v0, v2, v1}, Lcom/baidu/bdgame/sdk/obf/ct;->a(Lcom/baidu/bdgame/sdk/obf/cs;Landroid/os/Bundle;)V

    goto :goto_4d

    .line 62
    :cond_70
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fy;->a()Z

    move-result v2

    if-eqz v2, :cond_89

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fy;->d()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 64
    iget-object v0, p0, Lcom/baidu/platformsdk/BindPhoneActivity;->b:Lcom/baidu/bdgame/sdk/obf/ct;

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/dw;

    iget-object v3, p0, Lcom/baidu/platformsdk/BindPhoneActivity;->b:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-direct {v2, v3}, Lcom/baidu/bdgame/sdk/obf/dw;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    invoke-virtual {v0, v2, v1}, Lcom/baidu/bdgame/sdk/obf/ct;->a(Lcom/baidu/bdgame/sdk/obf/cs;Landroid/os/Bundle;)V

    goto :goto_4d

    .line 67
    :cond_89
    iget-object v0, p0, Lcom/baidu/platformsdk/BindPhoneActivity;->b:Lcom/baidu/bdgame/sdk/obf/ct;

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/gz;

    iget-object v3, p0, Lcom/baidu/platformsdk/BindPhoneActivity;->b:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-direct {v2, v3}, Lcom/baidu/bdgame/sdk/obf/gz;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    invoke-virtual {v0, v2, v1}, Lcom/baidu/bdgame/sdk/obf/ct;->a(Lcom/baidu/bdgame/sdk/obf/cs;Landroid/os/Bundle;)V

    goto :goto_4d
.end method
