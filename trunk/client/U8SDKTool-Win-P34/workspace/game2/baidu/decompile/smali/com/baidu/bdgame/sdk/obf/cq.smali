.class public Lcom/baidu/bdgame/sdk/obf/cq;
.super Lcom/baidu/bdgame/sdk/obf/cs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/cq$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/FrameLayout;

.field private b:Lcom/baidu/bdgame/sdk/obf/cq$a;

.field private c:Lcom/baidu/bdgame/sdk/obf/cq$a;

.field private d:Lcom/baidu/bdgame/sdk/obf/cq$a;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ct;)V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cs;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    .line 25
    return-void
.end method

.method private c(Lcom/baidu/bdgame/sdk/obf/ct;)V
    .registers 5

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cq;->a(Lcom/baidu/bdgame/sdk/obf/ct;)Lcom/baidu/bdgame/sdk/obf/cr;

    move-result-object v0

    .line 35
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cq;->l()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cr;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    .line 36
    new-instance v2, Lcom/baidu/bdgame/sdk/obf/cq$a;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/cq$a;-><init>()V

    iput-object v2, p0, Lcom/baidu/bdgame/sdk/obf/cq;->c:Lcom/baidu/bdgame/sdk/obf/cq$a;

    .line 37
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/cq;->c:Lcom/baidu/bdgame/sdk/obf/cq$a;

    iput-object v0, v2, Lcom/baidu/bdgame/sdk/obf/cq$a;->a:Lcom/baidu/bdgame/sdk/obf/cr;

    .line 38
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/cq;->c:Lcom/baidu/bdgame/sdk/obf/cq$a;

    iput-object v1, v2, Lcom/baidu/bdgame/sdk/obf/cq$a;->b:Landroid/view/View;

    .line 39
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/cq;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 40
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/cq;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 42
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/cq;->c:Lcom/baidu/bdgame/sdk/obf/cq$a;

    iput-object v2, p0, Lcom/baidu/bdgame/sdk/obf/cq;->d:Lcom/baidu/bdgame/sdk/obf/cq$a;

    .line 43
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cq;->l()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/baidu/bdgame/sdk/obf/cr;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 44
    return-void
.end method

.method private d(Lcom/baidu/bdgame/sdk/obf/ct;)V
    .registers 5

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cq;->b(Lcom/baidu/bdgame/sdk/obf/ct;)Lcom/baidu/bdgame/sdk/obf/cr;

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cq;->l()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cr;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    .line 49
    new-instance v2, Lcom/baidu/bdgame/sdk/obf/cq$a;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/cq$a;-><init>()V

    iput-object v2, p0, Lcom/baidu/bdgame/sdk/obf/cq;->b:Lcom/baidu/bdgame/sdk/obf/cq$a;

    .line 50
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/cq;->b:Lcom/baidu/bdgame/sdk/obf/cq$a;

    iput-object v0, v2, Lcom/baidu/bdgame/sdk/obf/cq$a;->a:Lcom/baidu/bdgame/sdk/obf/cr;

    .line 51
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/cq;->b:Lcom/baidu/bdgame/sdk/obf/cq$a;

    iput-object v1, v2, Lcom/baidu/bdgame/sdk/obf/cq$a;->b:Landroid/view/View;

    .line 52
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/cq;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 53
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/cq;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 55
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/cq;->b:Lcom/baidu/bdgame/sdk/obf/cq$a;

    iput-object v2, p0, Lcom/baidu/bdgame/sdk/obf/cq;->d:Lcom/baidu/bdgame/sdk/obf/cq$a;

    .line 56
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cq;->l()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/baidu/bdgame/sdk/obf/cr;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 57
    return-void
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)Landroid/view/View;
    .registers 3

    .prologue
    .line 29
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->a:Landroid/widget/FrameLayout;

    .line 30
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->a:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/ct;)Lcom/baidu/bdgame/sdk/obf/cr;
    .registers 3

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a(I)V
    .registers 4

    .prologue
    .line 151
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->d:Lcom/baidu/bdgame/sdk/obf/cq$a;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cq;->b:Lcom/baidu/bdgame/sdk/obf/cq$a;

    if-eq v0, v1, :cond_19

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->b:Lcom/baidu/bdgame/sdk/obf/cq$a;

    if-eqz v0, :cond_19

    .line 152
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->b:Lcom/baidu/bdgame/sdk/obf/cq$a;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/cq$a;->a:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/cr;->b(I)V

    .line 156
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->d:Lcom/baidu/bdgame/sdk/obf/cq$a;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/cq$a;->a:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/cr;->a(I)V

    .line 157
    return-void

    .line 153
    :cond_19
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->d:Lcom/baidu/bdgame/sdk/obf/cq$a;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cq;->c:Lcom/baidu/bdgame/sdk/obf/cq$a;

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->c:Lcom/baidu/bdgame/sdk/obf/cq$a;

    if-eqz v0, :cond_11

    .line 154
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->c:Lcom/baidu/bdgame/sdk/obf/cq$a;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/cq$a;->a:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/cr;->b(I)V

    goto :goto_11
.end method

.method protected a(ILandroid/content/Intent;)V
    .registers 3

    .prologue
    .line 82
    return-void
.end method

.method protected a(Landroid/app/Activity;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 71
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/lv;->f(Landroid/content/Context;)I

    move-result v0

    .line 72
    if-nez v0, :cond_e

    .line 73
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cq;->i()Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/cq;->d(Lcom/baidu/bdgame/sdk/obf/ct;)V

    .line 77
    :goto_d
    return-void

    .line 75
    :cond_e
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cq;->i()Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/cq;->c(Lcom/baidu/bdgame/sdk/obf/ct;)V

    goto :goto_d
.end method

.method protected final a(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->d:Lcom/baidu/bdgame/sdk/obf/cq$a;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cq;->b:Lcom/baidu/bdgame/sdk/obf/cq$a;

    if-eq v0, v1, :cond_19

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->b:Lcom/baidu/bdgame/sdk/obf/cq$a;

    if-eqz v0, :cond_19

    .line 143
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->b:Lcom/baidu/bdgame/sdk/obf/cq$a;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/cq$a;->a:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/cr;->a(Ljava/lang/Object;)V

    .line 147
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->d:Lcom/baidu/bdgame/sdk/obf/cq$a;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/cq$a;->a:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/cr;->a(Ljava/lang/Object;)V

    .line 148
    return-void

    .line 144
    :cond_19
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->d:Lcom/baidu/bdgame/sdk/obf/cq$a;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cq;->c:Lcom/baidu/bdgame/sdk/obf/cq$a;

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->c:Lcom/baidu/bdgame/sdk/obf/cq$a;

    if-eqz v0, :cond_11

    .line 145
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->c:Lcom/baidu/bdgame/sdk/obf/cq$a;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/cq$a;->a:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/cr;->a(Ljava/lang/Object;)V

    goto :goto_11
.end method

.method protected a(ZLandroid/os/Bundle;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 86
    if-eqz p1, :cond_c

    .line 87
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->d:Lcom/baidu/bdgame/sdk/obf/cq$a;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/cq$a;->a:Lcom/baidu/bdgame/sdk/obf/cr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/cr;->a(ZLandroid/os/Bundle;)V

    .line 93
    :goto_b
    return-void

    .line 89
    :cond_c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->d:Lcom/baidu/bdgame/sdk/obf/cq$a;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/cq$a;->a:Lcom/baidu/bdgame/sdk/obf/cr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/cr;->a(ZLandroid/os/Bundle;)V

    goto :goto_b
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->d:Lcom/baidu/bdgame/sdk/obf/cq$a;

    if-eqz v0, :cond_d

    .line 182
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->d:Lcom/baidu/bdgame/sdk/obf/cq$a;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/cq$a;->a:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->a()Z

    move-result v0

    .line 184
    :goto_c
    return v0

    :cond_d
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/cs;->a()Z

    move-result v0

    goto :goto_c
.end method

.method protected b(Lcom/baidu/bdgame/sdk/obf/ct;)Lcom/baidu/bdgame/sdk/obf/cr;
    .registers 3

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method protected b()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 97
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cq;->l()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/lv;->f(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_51

    .line 98
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->b:Lcom/baidu/bdgame/sdk/obf/cq$a;

    if-eqz v0, :cond_1e

    .line 99
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->b:Lcom/baidu/bdgame/sdk/obf/cq$a;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/cq$a;->a:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->c()V

    .line 100
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->b:Lcom/baidu/bdgame/sdk/obf/cq$a;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/cq$a;->a:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->f()V

    .line 103
    :cond_1e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->c:Lcom/baidu/bdgame/sdk/obf/cq$a;

    if-nez v0, :cond_38

    .line 104
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cq;->i()Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/cq;->c(Lcom/baidu/bdgame/sdk/obf/ct;)V

    .line 105
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->c:Lcom/baidu/bdgame/sdk/obf/cq$a;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/cq$a;->a:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/cr;->a(ZLandroid/os/Bundle;)V

    .line 114
    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->d:Lcom/baidu/bdgame/sdk/obf/cq$a;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/cq$a;->a:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->g()V

    .line 134
    :goto_37
    return-void

    .line 107
    :cond_38
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->d:Lcom/baidu/bdgame/sdk/obf/cq$a;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cq;->c:Lcom/baidu/bdgame/sdk/obf/cq$a;

    if-eq v0, v1, :cond_30

    .line 108
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->c:Lcom/baidu/bdgame/sdk/obf/cq$a;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->d:Lcom/baidu/bdgame/sdk/obf/cq$a;

    .line 109
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 110
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->a:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cq;->d:Lcom/baidu/bdgame/sdk/obf/cq$a;

    iget-object v1, v1, Lcom/baidu/bdgame/sdk/obf/cq$a;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_30

    .line 116
    :cond_51
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->c:Lcom/baidu/bdgame/sdk/obf/cq$a;

    if-eqz v0, :cond_63

    .line 117
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->c:Lcom/baidu/bdgame/sdk/obf/cq$a;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/cq$a;->a:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->c()V

    .line 118
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->c:Lcom/baidu/bdgame/sdk/obf/cq$a;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/cq$a;->a:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->f()V

    .line 121
    :cond_63
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->b:Lcom/baidu/bdgame/sdk/obf/cq$a;

    if-nez v0, :cond_7d

    .line 122
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cq;->i()Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/cq;->d(Lcom/baidu/bdgame/sdk/obf/ct;)V

    .line 123
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->b:Lcom/baidu/bdgame/sdk/obf/cq$a;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/cq$a;->a:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/cr;->a(ZLandroid/os/Bundle;)V

    .line 132
    :cond_75
    :goto_75
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->d:Lcom/baidu/bdgame/sdk/obf/cq$a;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/cq$a;->a:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->g()V

    goto :goto_37

    .line 125
    :cond_7d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->d:Lcom/baidu/bdgame/sdk/obf/cq$a;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cq;->b:Lcom/baidu/bdgame/sdk/obf/cq$a;

    if-eq v0, v1, :cond_75

    .line 126
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->b:Lcom/baidu/bdgame/sdk/obf/cq$a;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->d:Lcom/baidu/bdgame/sdk/obf/cq$a;

    .line 127
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 128
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->a:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cq;->d:Lcom/baidu/bdgame/sdk/obf/cq$a;

    iget-object v1, v1, Lcom/baidu/bdgame/sdk/obf/cq$a;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_75
.end method

.method protected c()V
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->d:Lcom/baidu/bdgame/sdk/obf/cq$a;

    if-eqz v0, :cond_b

    .line 162
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->d:Lcom/baidu/bdgame/sdk/obf/cq$a;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/cq$a;->a:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->c()V

    .line 164
    :cond_b
    return-void
.end method

.method protected d()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/cs;->d()V

    .line 169
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->b:Lcom/baidu/bdgame/sdk/obf/cq$a;

    if-eqz v0, :cond_11

    .line 170
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->b:Lcom/baidu/bdgame/sdk/obf/cq$a;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/cq$a;->a:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->d()V

    .line 171
    iput-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cq;->b:Lcom/baidu/bdgame/sdk/obf/cq$a;

    .line 173
    :cond_11
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->c:Lcom/baidu/bdgame/sdk/obf/cq$a;

    if-eqz v0, :cond_1e

    .line 174
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->c:Lcom/baidu/bdgame/sdk/obf/cq$a;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/cq$a;->a:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->d()V

    .line 175
    iput-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cq;->c:Lcom/baidu/bdgame/sdk/obf/cq$a;

    .line 177
    :cond_1e
    return-void
.end method
