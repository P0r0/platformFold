.class public Lcom/baidu/bdgame/sdk/obf/aa;
.super Lcom/baidu/bdgame/sdk/obf/cs;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/aa$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ScrollView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/Button;

.field private f:Lcom/baidu/bdgame/sdk/obf/ae;

.field private g:Lcom/baidu/bdgame/sdk/obf/aa$a;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ct;Lcom/baidu/bdgame/sdk/obf/ae;Lcom/baidu/bdgame/sdk/obf/aa$a;)V
    .registers 4

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cs;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    .line 29
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/aa;->f:Lcom/baidu/bdgame/sdk/obf/ae;

    .line 30
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/aa;->g:Lcom/baidu/bdgame/sdk/obf/aa$a;

    .line 31
    return-void
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)Landroid/view/View;
    .registers 5

    .prologue
    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "bdp_view_controller_account_authenticate_success"

    invoke-static {p1, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 36
    const-string v0, "sv_view"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/aa;->a:Landroid/widget/ScrollView;

    .line 37
    const-string v0, "txt_name"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/aa;->b:Landroid/widget/TextView;

    .line 38
    const-string v0, "txt_id"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/aa;->c:Landroid/widget/TextView;

    .line 39
    const-string v0, "txt_age"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/aa;->d:Landroid/widget/TextView;

    .line 40
    const-string v0, "btn_complete"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/aa;->e:Landroid/widget/Button;

    .line 41
    return-object v1
.end method

.method protected a(Landroid/app/Activity;Landroid/view/View;)V
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 46
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/aa;->f:Lcom/baidu/bdgame/sdk/obf/ae;

    if-eqz v0, :cond_65

    .line 47
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/aa;->a:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 48
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/aa;->b:Landroid/widget/TextView;

    const-string v1, "bdp_account_authenticate_success_name"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/aa;->f:Lcom/baidu/bdgame/sdk/obf/ae;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/ae;->f()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p1, v1, v2}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/aa;->c:Landroid/widget/TextView;

    const-string v1, "bdp_account_authenticate_success_id"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/aa;->f:Lcom/baidu/bdgame/sdk/obf/ae;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/ae;->g()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p1, v1, v2}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/aa;->d:Landroid/widget/TextView;

    const-string v2, "bdp_account_authenticate_success_age"

    new-array v3, v4, [Ljava/lang/Object;

    const-string v0, "1"

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/aa;->f:Lcom/baidu/bdgame/sdk/obf/ae;

    invoke-virtual {v4}, Lcom/baidu/bdgame/sdk/obf/ae;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    const-string v0, "bdp_no"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4f
    aput-object v0, v3, v5

    invoke-static {p1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :goto_58
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/aa;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void

    .line 50
    :cond_5e
    const-string v0, "bdp_yes"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4f

    .line 54
    :cond_65
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/aa;->a:Landroid/widget/ScrollView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_58
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/aa;->e:Landroid/widget/Button;

    if-ne p1, v0, :cond_d

    .line 67
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/aa;->g:Lcom/baidu/bdgame/sdk/obf/aa$a;

    if-eqz v0, :cond_d

    .line 68
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/aa;->g:Lcom/baidu/bdgame/sdk/obf/aa$a;

    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/aa$a;->a()V

    .line 71
    :cond_d
    return-void
.end method
