.class public Lcom/baidu/platformsdk/LoginActivity;
.super Lcom/baidu/platformsdk/LoginWatchActivity;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/platformsdk/LoginActivity$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "bundle_key_autologin"

.field private static b:S


# instance fields
.field private c:Lcom/baidu/bdgame/sdk/obf/ct;

.field private f:Lcom/baidu/platformsdk/LoginActivity$a;

.field private g:Lcom/baidu/bdgame/sdk/obf/ng;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-short v0, Lcom/baidu/platformsdk/LoginActivity;->b:S

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/baidu/platformsdk/LoginWatchActivity;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/platformsdk/LoginActivity;->h:Z

    .line 335
    return-void
.end method

.method private a(Landroid/content/res/Configuration;)V
    .registers 7

    .prologue
    const/4 v2, -0x1

    const/4 v4, -0x2

    .line 245
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_36

    .line 246
    invoke-virtual {p0}, Lcom/baidu/platformsdk/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 247
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/mi;->b(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lcom/baidu/platformsdk/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "bdp_account_activity_land_padding"

    invoke-static {p0, v3}, Lcom/baidu/bdgame/sdk/obf/lo;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 249
    if-nez v0, :cond_33

    .line 250
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v1, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 254
    :goto_2b
    invoke-virtual {p0}, Lcom/baidu/platformsdk/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 264
    :cond_32
    :goto_32
    return-void

    .line 252
    :cond_33
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_2b

    .line 255
    :cond_36
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_32

    .line 256
    invoke-virtual {p0}, Lcom/baidu/platformsdk/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 257
    if-nez v0, :cond_52

    .line 258
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v2, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 262
    :goto_4a
    invoke-virtual {p0}, Lcom/baidu/platformsdk/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_32

    .line 260
    :cond_52
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_4a
.end method

.method static synthetic a(Lcom/baidu/platformsdk/LoginActivity;)V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/baidu/platformsdk/LoginActivity;->c()V

    return-void
.end method

.method public static b()V
    .registers 1

    .prologue
    .line 326
    const/4 v0, 0x0

    sput-short v0, Lcom/baidu/platformsdk/LoginActivity;->b:S

    .line 327
    return-void
.end method

.method static synthetic b(Lcom/baidu/platformsdk/LoginActivity;)V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/baidu/platformsdk/LoginActivity;->d()V

    return-void
.end method

.method private c()V
    .registers 2

    .prologue
    .line 112
    new-instance v0, Lcom/baidu/platformsdk/LoginActivity$2;

    invoke-direct {v0, p0}, Lcom/baidu/platformsdk/LoginActivity$2;-><init>(Lcom/baidu/platformsdk/LoginActivity;)V

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ca;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 141
    return-void
.end method

.method static synthetic c(Lcom/baidu/platformsdk/LoginActivity;)V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/baidu/platformsdk/LoginActivity;->f()V

    return-void
.end method

.method static synthetic d(Lcom/baidu/platformsdk/LoginActivity;)Lcom/baidu/bdgame/sdk/obf/ng;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginActivity;->g:Lcom/baidu/bdgame/sdk/obf/ng;

    return-object v0
.end method

.method private d()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 148
    invoke-virtual {p0}, Lcom/baidu/platformsdk/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ca;->c(Landroid/content/Context;)I

    move-result v0

    .line 149
    if-ne v0, v4, :cond_31

    .line 150
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/bq;->a(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/bp;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_2d

    .line 153
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bp;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bp;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/baidu/platformsdk/LoginActivity$3;

    invoke-direct {v3, p0}, Lcom/baidu/platformsdk/LoginActivity$3;-><init>(Lcom/baidu/platformsdk/LoginActivity;)V

    invoke-static {p0, v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/ca;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/bz;

    move-result-object v1

    .line 175
    iget-object v2, p0, Lcom/baidu/platformsdk/LoginActivity;->g:Lcom/baidu/bdgame/sdk/obf/ng;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bp;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0, v1}, Lcom/baidu/bdgame/sdk/obf/ng;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/bz;)V

    .line 212
    :goto_2c
    return-void

    .line 177
    :cond_2d
    invoke-direct {p0}, Lcom/baidu/platformsdk/LoginActivity;->c()V

    goto :goto_2c

    .line 179
    :cond_31
    if-ne v0, v3, :cond_52

    .line 180
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kr;->h:Ljava/lang/String;

    .line 181
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 183
    sget-object v1, Lcom/baidu/bdgame/sdk/obf/kr;->i:Ljava/lang/String;

    new-instance v2, Lcom/baidu/platformsdk/LoginActivity$4;

    invoke-direct {v2, p0}, Lcom/baidu/platformsdk/LoginActivity$4;-><init>(Lcom/baidu/platformsdk/LoginActivity;)V

    invoke-static {p0, v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/ca;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/bz;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/baidu/platformsdk/LoginActivity;->g:Lcom/baidu/bdgame/sdk/obf/ng;

    sget-object v2, Lcom/baidu/bdgame/sdk/obf/kr;->i:Ljava/lang/String;

    invoke-virtual {v1, v3, v2, v0}, Lcom/baidu/bdgame/sdk/obf/ng;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/bz;)V

    goto :goto_2c

    .line 207
    :cond_4e
    invoke-direct {p0}, Lcom/baidu/platformsdk/LoginActivity;->c()V

    goto :goto_2c

    .line 210
    :cond_52
    invoke-direct {p0}, Lcom/baidu/platformsdk/LoginActivity;->c()V

    goto :goto_2c
.end method

.method static synthetic e(Lcom/baidu/platformsdk/LoginActivity;)Lcom/baidu/bdgame/sdk/obf/ct;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginActivity;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    return-object v0
.end method

.method private e()V
    .registers 2

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/baidu/platformsdk/LoginActivity;->h:Z

    if-nez v0, :cond_a

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/platformsdk/LoginActivity;->h:Z

    .line 240
    const/4 v0, 0x0

    sput-short v0, Lcom/baidu/platformsdk/LoginActivity;->b:S

    .line 242
    :cond_a
    return-void
.end method

.method private f()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 268
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ci;->b(I)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 270
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/ca;->c(Landroid/content/Context;)I

    move-result v0

    .line 271
    packed-switch v0, :pswitch_data_38

    .line 284
    :goto_10
    return-void

    .line 273
    :pswitch_11
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginActivity;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nh;

    iget-object v2, p0, Lcom/baidu/platformsdk/LoginActivity;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-direct {v1, v2}, Lcom/baidu/bdgame/sdk/obf/nh;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    invoke-virtual {v0, v1, v3}, Lcom/baidu/bdgame/sdk/obf/ct;->b(Lcom/baidu/bdgame/sdk/obf/cs;Landroid/os/Bundle;)V

    goto :goto_10

    .line 276
    :pswitch_1e
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginActivity;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nf;

    iget-object v2, p0, Lcom/baidu/platformsdk/LoginActivity;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-direct {v1, v2}, Lcom/baidu/bdgame/sdk/obf/nf;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    invoke-virtual {v0, v1, v3}, Lcom/baidu/bdgame/sdk/obf/ct;->b(Lcom/baidu/bdgame/sdk/obf/cs;Landroid/os/Bundle;)V

    goto :goto_10

    .line 279
    :pswitch_2b
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginActivity;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ni;

    iget-object v2, p0, Lcom/baidu/platformsdk/LoginActivity;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-direct {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ni;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    invoke-virtual {v0, v1, v3}, Lcom/baidu/bdgame/sdk/obf/ct;->b(Lcom/baidu/bdgame/sdk/obf/cs;Landroid/os/Bundle;)V

    goto :goto_10

    .line 271
    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_11
        :pswitch_2b
        :pswitch_1e
    .end packed-switch
.end method

.method private g()V
    .registers 4

    .prologue
    .line 290
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 291
    const-string v1, "intent_key_callback_result_code"

    const/16 v2, -0x3ea

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 292
    const-string v1, "intent_key_callback_result_desc"

    const-string v2, "bdp_passport_login_cancel"

    invoke-static {p0, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/baidu/platformsdk/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/baidu/platformsdk/LoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 295
    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/bdgame/sdk/obf/ct;
    .registers 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginActivity;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    return-object v0
.end method

.method public a(Lcom/baidu/platformsdk/LoginActivity$a;)V
    .registers 2

    .prologue
    .line 318
    iput-object p1, p0, Lcom/baidu/platformsdk/LoginActivity;->f:Lcom/baidu/platformsdk/LoginActivity$a;

    .line 319
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 306
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginActivity;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ct;->a(IILandroid/content/Intent;)V

    .line 307
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginActivity;->f:Lcom/baidu/platformsdk/LoginActivity$a;

    if-eqz v0, :cond_11

    .line 308
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginActivity;->f:Lcom/baidu/platformsdk/LoginActivity$a;

    invoke-interface {v0, p1, p2, p3}, Lcom/baidu/platformsdk/LoginActivity$a;->a(IILandroid/content/Intent;)V

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platformsdk/LoginActivity;->f:Lcom/baidu/platformsdk/LoginActivity$a;

    .line 311
    :cond_11
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginActivity;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->c()Z

    move-result v0

    if-nez v0, :cond_b

    .line 300
    invoke-super {p0}, Lcom/baidu/platformsdk/LoginWatchActivity;->onBackPressed()V

    .line 302
    :cond_b
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 216
    invoke-super {p0, p1}, Lcom/baidu/platformsdk/LoginWatchActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 217
    invoke-direct {p0, p1}, Lcom/baidu/platformsdk/LoginActivity;->a(Landroid/content/res/Configuration;)V

    .line 218
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginActivity;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->d()V

    .line 219
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 61
    invoke-super {p0, p1}, Lcom/baidu/platformsdk/LoginWatchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-direct {p0}, Lcom/baidu/platformsdk/LoginActivity;->g()V

    .line 64
    sget-short v0, Lcom/baidu/platformsdk/LoginActivity;->b:S

    if-eqz v0, :cond_11

    .line 65
    invoke-virtual {p0}, Lcom/baidu/platformsdk/LoginActivity;->finish()V

    .line 106
    :goto_10
    return-void

    .line 68
    :cond_11
    sput-short v2, Lcom/baidu/platformsdk/LoginActivity;->b:S

    .line 69
    iput-boolean v3, p0, Lcom/baidu/platformsdk/LoginActivity;->h:Z

    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1e

    .line 71
    invoke-virtual {p0, v3}, Lcom/baidu/platformsdk/LoginActivity;->setFinishOnTouchOutside(Z)V

    .line 73
    :cond_1e
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "bdp_blank"

    invoke-static {p0, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 74
    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/LoginActivity;->setContentView(Landroid/view/View;)V

    .line 75
    invoke-virtual {p0}, Lcom/baidu/platformsdk/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/baidu/platformsdk/LoginActivity;->a(Landroid/content/res/Configuration;)V

    .line 76
    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ct;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/platformsdk/LoginActivity;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    .line 78
    invoke-virtual {p0}, Lcom/baidu/platformsdk/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bundle_key_autologin"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 79
    if-eqz v0, :cond_7a

    .line 81
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ng;

    iget-object v1, p0, Lcom/baidu/platformsdk/LoginActivity;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ng;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    iput-object v0, p0, Lcom/baidu/platformsdk/LoginActivity;->g:Lcom/baidu/bdgame/sdk/obf/ng;

    .line 82
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginActivity;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    iget-object v1, p0, Lcom/baidu/platformsdk/LoginActivity;->g:Lcom/baidu/bdgame/sdk/obf/ng;

    invoke-virtual {v0, v1, v4}, Lcom/baidu/bdgame/sdk/obf/ct;->b(Lcom/baidu/bdgame/sdk/obf/cs;Landroid/os/Bundle;)V

    .line 83
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginActivity;->g:Lcom/baidu/bdgame/sdk/obf/ng;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ng;->f()V

    .line 84
    invoke-virtual {p0}, Lcom/baidu/platformsdk/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ca;->c(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_71

    .line 86
    invoke-direct {p0}, Lcom/baidu/platformsdk/LoginActivity;->c()V

    goto :goto_10

    .line 88
    :cond_71
    new-instance v0, Lcom/baidu/platformsdk/LoginActivity$1;

    invoke-direct {v0, p0}, Lcom/baidu/platformsdk/LoginActivity$1;-><init>(Lcom/baidu/platformsdk/LoginActivity;)V

    invoke-static {p0, v2, v0}, Lcom/baidu/bdgame/sdk/obf/ca;->c(Landroid/content/Context;ILcom/baidu/bdgame/sdk/obf/o;)V

    goto :goto_10

    .line 104
    :cond_7a
    invoke-direct {p0}, Lcom/baidu/platformsdk/LoginActivity;->f()V

    goto :goto_10
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 233
    invoke-super {p0}, Lcom/baidu/platformsdk/LoginWatchActivity;->onDestroy()V

    .line 234
    invoke-direct {p0}, Lcom/baidu/platformsdk/LoginActivity;->e()V

    .line 235
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 225
    invoke-super {p0}, Lcom/baidu/platformsdk/LoginWatchActivity;->onPause()V

    .line 226
    invoke-virtual {p0}, Lcom/baidu/platformsdk/LoginActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 227
    invoke-direct {p0}, Lcom/baidu/platformsdk/LoginActivity;->e()V

    .line 229
    :cond_c
    return-void
.end method
