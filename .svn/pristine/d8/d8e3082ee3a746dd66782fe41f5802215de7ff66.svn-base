.class public final Lcom/alipay/sdk/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/app/Activity;

.field b:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/alipay/sdk/widget/a;->a:Landroid/app/Activity;

    .line 22
    return-void
.end method

.method private static synthetic a(Lcom/alipay/sdk/widget/a;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcom/alipay/sdk/widget/a;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private static synthetic a(Lcom/alipay/sdk/widget/a;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 14
    iput-object p1, p0, Lcom/alipay/sdk/widget/a;->b:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method private a(Ljava/lang/CharSequence;)V
    .registers 4

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/alipay/sdk/widget/a;->c()V

    .line 35
    new-instance v0, Lcom/alipay/sdk/widget/b;

    invoke-direct {v0, p0, p1}, Lcom/alipay/sdk/widget/b;-><init>(Lcom/alipay/sdk/widget/a;Ljava/lang/CharSequence;)V

    .line 52
    iget-object v1, p0, Lcom/alipay/sdk/widget/a;->a:Landroid/app/Activity;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/alipay/sdk/widget/a;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_19

    .line 53
    iget-object v1, p0, Lcom/alipay/sdk/widget/a;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 54
    :cond_19
    return-void
.end method

.method private static synthetic b(Lcom/alipay/sdk/widget/a;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcom/alipay/sdk/widget/a;->a:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/sdk/widget/a;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/alipay/sdk/widget/a;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 29
    const-string v0, "\u6b63\u5728\u52a0\u8f7d"

    invoke-virtual {p0}, Lcom/alipay/sdk/widget/a;->c()V

    new-instance v1, Lcom/alipay/sdk/widget/b;

    invoke-direct {v1, p0, v0}, Lcom/alipay/sdk/widget/b;-><init>(Lcom/alipay/sdk/widget/a;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/sdk/widget/a;->a:Landroid/app/Activity;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/alipay/sdk/widget/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/alipay/sdk/widget/a;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 30
    :cond_1b
    return-void
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 57
    new-instance v0, Lcom/alipay/sdk/widget/c;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/widget/c;-><init>(Lcom/alipay/sdk/widget/a;)V

    .line 70
    iget-object v1, p0, Lcom/alipay/sdk/widget/a;->a:Landroid/app/Activity;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/alipay/sdk/widget/a;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_16

    .line 71
    iget-object v1, p0, Lcom/alipay/sdk/widget/a;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 72
    :cond_16
    return-void
.end method
