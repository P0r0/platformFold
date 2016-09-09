.class public Lcom/baidu/bdgame/sdk/obf/v;
.super Lcom/baidu/bdgame/sdk/obf/cs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/v$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/baidu/bdgame/sdk/obf/v$a;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ct;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cs;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    .line 31
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/v;->d:Ljava/lang/String;

    .line 32
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 33
    const-string v0, "\\n"

    const-string v1, "\n"

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/v;->e:Ljava/lang/String;

    .line 35
    :cond_15
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/v;)Lcom/baidu/bdgame/sdk/obf/v$a;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/v;->g:Lcom/baidu/bdgame/sdk/obf/v$a;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)Landroid/view/View;
    .registers 5

    .prologue
    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "bdp_view_controller_account_tip_upgrade_done"

    invoke-static {p1, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 44
    const-string v0, "txt_title"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/v;->a:Landroid/widget/TextView;

    .line 45
    const-string v0, "txt_content"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/v;->b:Landroid/widget/TextView;

    .line 46
    const-string v0, "txt_ok"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/v;->c:Landroid/widget/TextView;

    .line 47
    return-object v1
.end method

.method protected a(Landroid/app/Activity;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/v;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/v;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/v;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/v;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/v;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 55
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/v;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/v;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :cond_1d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/v;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/v$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/v$1;-><init>(Lcom/baidu/bdgame/sdk/obf/v;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/cs;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 67
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/v$a;)V
    .registers 2

    .prologue
    .line 70
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/v;->g:Lcom/baidu/bdgame/sdk/obf/v$a;

    .line 71
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/v;->f:Ljava/lang/String;

    .line 39
    return-void
.end method
