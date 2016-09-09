.class public Lcom/baidu/platformsdk/AuthenticateActivity;
.super Lcom/baidu/platformsdk/LoginWatchActivity;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "intent_key_is_check_way_login"


# instance fields
.field private b:Lcom/baidu/bdgame/sdk/obf/ct;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/baidu/platformsdk/LoginWatchActivity;-><init>()V

    return-void
.end method

.method private a(I)V
    .registers 4

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 80
    const-string v1, "intent_key_callback_result_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/baidu/platformsdk/AuthenticateActivity;->setResult(ILandroid/content/Intent;)V

    .line 83
    return-void
.end method

.method private a(Landroid/content/res/Configuration;)V
    .registers 7

    .prologue
    const/4 v2, -0x1

    const/4 v4, -0x2

    .line 57
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_36

    .line 58
    invoke-virtual {p0}, Lcom/baidu/platformsdk/AuthenticateActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 59
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/mi;->b(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lcom/baidu/platformsdk/AuthenticateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "bdp_account_activity_land_padding"

    invoke-static {p0, v3}, Lcom/baidu/bdgame/sdk/obf/lo;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 61
    if-nez v0, :cond_33

    .line 62
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v1, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 66
    :goto_2b
    invoke-virtual {p0}, Lcom/baidu/platformsdk/AuthenticateActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 76
    :cond_32
    :goto_32
    return-void

    .line 64
    :cond_33
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_2b

    .line 67
    :cond_36
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_32

    .line 68
    invoke-virtual {p0}, Lcom/baidu/platformsdk/AuthenticateActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 69
    if-nez v0, :cond_52

    .line 70
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v2, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 74
    :goto_4a
    invoke-virtual {p0}, Lcom/baidu/platformsdk/AuthenticateActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_32

    .line 72
    :cond_52
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_4a
.end method

.method static synthetic a(Lcom/baidu/platformsdk/AuthenticateActivity;I)V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/baidu/platformsdk/AuthenticateActivity;->a(I)V

    return-void
.end method


# virtual methods
.method protected a()Lcom/baidu/bdgame/sdk/obf/ct;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/baidu/platformsdk/AuthenticateActivity;->b:Lcom/baidu/bdgame/sdk/obf/ct;

    return-object v0
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/baidu/platformsdk/AuthenticateActivity;->b:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->c()Z

    move-result v0

    if-nez v0, :cond_b

    .line 88
    invoke-super {p0}, Lcom/baidu/platformsdk/LoginWatchActivity;->onBackPressed()V

    .line 90
    :cond_b
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-super {p0, p1}, Lcom/baidu/platformsdk/LoginWatchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-direct {p0, v2}, Lcom/baidu/platformsdk/AuthenticateActivity;->a(I)V

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_10

    .line 32
    invoke-virtual {p0, v2}, Lcom/baidu/platformsdk/AuthenticateActivity;->setFinishOnTouchOutside(Z)V

    .line 34
    :cond_10
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "bdp_blank"

    invoke-static {p0, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 35
    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/AuthenticateActivity;->setContentView(Landroid/view/View;)V

    .line 36
    invoke-virtual {p0}, Lcom/baidu/platformsdk/AuthenticateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/baidu/platformsdk/AuthenticateActivity;->a(Landroid/content/res/Configuration;)V

    .line 37
    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ct;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/platformsdk/AuthenticateActivity;->b:Lcom/baidu/bdgame/sdk/obf/ct;

    .line 39
    invoke-virtual {p0}, Lcom/baidu/platformsdk/AuthenticateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent_key_is_check_way_login"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 41
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/z;

    iget-object v2, p0, Lcom/baidu/platformsdk/AuthenticateActivity;->b:Lcom/baidu/bdgame/sdk/obf/ct;

    new-instance v3, Lcom/baidu/platformsdk/AuthenticateActivity$1;

    invoke-direct {v3, p0}, Lcom/baidu/platformsdk/AuthenticateActivity$1;-><init>(Lcom/baidu/platformsdk/AuthenticateActivity;)V

    invoke-direct {v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/z;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;Lcom/baidu/bdgame/sdk/obf/z$a;)V

    .line 49
    if-eqz v0, :cond_52

    .line 50
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/z;->a()V

    .line 54
    :goto_51
    return-void

    .line 52
    :cond_52
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/z;->b()V

    goto :goto_51
.end method
