.class public Lcom/baidu/platformsdk/CashierDeskActivity;
.super Lcom/baidu/platformsdk/LoginWatchActivity;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String; = "user"

.field public static final b:Ljava/lang/String; = "order"

.field static final c:Ljava/lang/String; = "callback_extra"


# instance fields
.field private f:Lcom/baidu/bdgame/sdk/obf/ct;

.field private g:Lcom/baidu/bdgame/sdk/obf/db;

.field private h:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/baidu/platformsdk/LoginWatchActivity;-><init>()V

    return-void
.end method

.method private b()V
    .registers 5

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/baidu/platformsdk/CashierDeskActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/lv;->f(Landroid/content/Context;)I

    move-result v0

    .line 73
    invoke-virtual {p0}, Lcom/baidu/platformsdk/CashierDeskActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lv;->a(Landroid/content/Context;F)I

    move-result v1

    .line 74
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1e

    .line 75
    iget-object v0, p0, Lcom/baidu/platformsdk/CashierDeskActivity;->h:Landroid/view/ViewGroup;

    div-int/lit8 v2, v1, 0x2

    div-int/lit8 v3, v1, 0x2

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 79
    :cond_1d
    :goto_1d
    return-void

    .line 76
    :cond_1e
    if-nez v0, :cond_1d

    .line 77
    iget-object v0, p0, Lcom/baidu/platformsdk/CashierDeskActivity;->h:Landroid/view/ViewGroup;

    div-int/lit8 v2, v1, 0x2

    div-int/lit8 v3, v1, 0x2

    invoke-virtual {v0, v2, v1, v3, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_1d
.end method

.method private c()V
    .registers 4

    .prologue
    .line 109
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 110
    const-string v1, "intent_key_callback_result_code"

    const/16 v2, -0xbb9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    const-string v1, "intent_key_callback_result_desc"

    const-string v2, "bdp_passport_pay_cancel"

    invoke-static {p0, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/baidu/platformsdk/CashierDeskActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/baidu/platformsdk/CashierDeskActivity;->setResult(ILandroid/content/Intent;)V

    .line 116
    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/bdgame/sdk/obf/ct;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/baidu/platformsdk/CashierDeskActivity;->f:Lcom/baidu/bdgame/sdk/obf/ct;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/baidu/platformsdk/CashierDeskActivity;->f:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ct;->a(IILandroid/content/Intent;)V

    .line 103
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/baidu/platformsdk/CashierDeskActivity;->f:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->c()Z

    move-result v0

    if-nez v0, :cond_b

    .line 96
    invoke-super {p0}, Lcom/baidu/platformsdk/LoginWatchActivity;->onBackPressed()V

    .line 98
    :cond_b
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/baidu/platformsdk/LoginWatchActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 84
    invoke-virtual {p0}, Lcom/baidu/platformsdk/CashierDeskActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lv;->a(Landroid/content/Context;F)I

    move-result v0

    .line 85
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_20

    .line 86
    iget-object v1, p0, Lcom/baidu/platformsdk/CashierDeskActivity;->h:Landroid/view/ViewGroup;

    div-int/lit8 v2, v0, 0x2

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 90
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/baidu/platformsdk/CashierDeskActivity;->f:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->d()V

    .line 91
    return-void

    .line 87
    :cond_20
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    .line 88
    iget-object v1, p0, Lcom/baidu/platformsdk/CashierDeskActivity;->h:Landroid/view/ViewGroup;

    div-int/lit8 v2, v0, 0x2

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {v1, v2, v0, v3, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_1a
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 35
    invoke-super {p0, p1}, Lcom/baidu/platformsdk/LoginWatchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-direct {p0}, Lcom/baidu/platformsdk/CashierDeskActivity;->c()V

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_11

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/CashierDeskActivity;->setFinishOnTouchOutside(Z)V

    .line 42
    :cond_11
    const-string v0, "bdp_paycenter_blank"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/CashierDeskActivity;->setContentView(I)V

    .line 43
    const-string v0, "bdp_paycenter_main"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/CashierDeskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/baidu/platformsdk/CashierDeskActivity;->h:Landroid/view/ViewGroup;

    .line 45
    iget-object v0, p0, Lcom/baidu/platformsdk/CashierDeskActivity;->h:Landroid/view/ViewGroup;

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ct;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/platformsdk/CashierDeskActivity;->f:Lcom/baidu/bdgame/sdk/obf/ct;

    .line 46
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/db;

    iget-object v1, p0, Lcom/baidu/platformsdk/CashierDeskActivity;->f:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/db;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    iput-object v0, p0, Lcom/baidu/platformsdk/CashierDeskActivity;->g:Lcom/baidu/bdgame/sdk/obf/db;

    .line 48
    invoke-virtual {p0}, Lcom/baidu/platformsdk/CashierDeskActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "order"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/platformsdk/PayOrderInfo;

    .line 50
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ka;

    invoke-direct {v1}, Lcom/baidu/bdgame/sdk/obf/ka;-><init>()V

    .line 51
    invoke-virtual {p0}, Lcom/baidu/platformsdk/CashierDeskActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "callback_extra"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ka;->a(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Lcom/baidu/platformsdk/PayOrderInfo;->getExtInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ka;->b(Ljava/lang/String;)V

    .line 54
    iget-object v2, p0, Lcom/baidu/platformsdk/CashierDeskActivity;->g:Lcom/baidu/bdgame/sdk/obf/db;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jz;->a(Lcom/baidu/platformsdk/PayOrderInfo;)Lcom/baidu/bdgame/sdk/obf/jz;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/baidu/bdgame/sdk/obf/db;->a(Lcom/baidu/bdgame/sdk/obf/jz;)V

    .line 55
    iget-object v0, p0, Lcom/baidu/platformsdk/CashierDeskActivity;->g:Lcom/baidu/bdgame/sdk/obf/db;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/db;->a(Lcom/baidu/bdgame/sdk/obf/ka;)V

    .line 56
    iget-object v0, p0, Lcom/baidu/platformsdk/CashierDeskActivity;->g:Lcom/baidu/bdgame/sdk/obf/db;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/db;->a(Lcom/baidu/bdgame/sdk/obf/jv;)V

    .line 57
    iget-object v0, p0, Lcom/baidu/platformsdk/CashierDeskActivity;->g:Lcom/baidu/bdgame/sdk/obf/db;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/db;->a()V

    .line 59
    invoke-direct {p0}, Lcom/baidu/platformsdk/CashierDeskActivity;->b()V

    .line 60
    invoke-virtual {p0}, Lcom/baidu/platformsdk/CashierDeskActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setLayout(II)V

    .line 63
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/cf;->a(Landroid/content/Context;)V

    .line 69
    return-void
.end method
