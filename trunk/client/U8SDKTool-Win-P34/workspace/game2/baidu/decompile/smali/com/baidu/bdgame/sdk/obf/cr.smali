.class public Lcom/baidu/bdgame/sdk/obf/cr;
.super Lcom/baidu/bdgame/sdk/obf/cs;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/bdgame/sdk/obf/cq;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ct;Lcom/baidu/bdgame/sdk/obf/cq;)V
    .registers 3

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cs;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    .line 16
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/cr;->a:Lcom/baidu/bdgame/sdk/obf/cq;

    .line 17
    return-void
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)Landroid/view/View;
    .registers 3

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cs;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a(I)V
    .registers 2

    .prologue
    .line 79
    return-void
.end method

.method protected final a(ILandroid/content/Intent;)V
    .registers 3

    .prologue
    .line 107
    return-void
.end method

.method protected a(Landroid/app/Activity;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 31
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 21
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cr;->a:Lcom/baidu/bdgame/sdk/obf/cq;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/cq;->a(Landroid/content/Intent;)V

    .line 22
    return-void
.end method

.method protected final a(Landroid/view/View;II)V
    .registers 4

    .prologue
    .line 103
    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 71
    return-void
.end method

.method protected a(ZLandroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 40
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/cs;->a(ZLandroid/os/Bundle;)V

    .line 41
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 61
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/cs;->a()Z

    move-result v0

    return v0
.end method

.method protected b(I)V
    .registers 2

    .prologue
    .line 87
    return-void
.end method

.method protected c()V
    .registers 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/cs;->c()V

    .line 48
    return-void
.end method

.method protected d()V
    .registers 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/cs;->d()V

    .line 55
    return-void
.end method

.method protected e()Z
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cr;->a:Lcom/baidu/bdgame/sdk/obf/cq;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cq;->e()Z

    move-result v0

    return v0
.end method

.method protected f()V
    .registers 1

    .prologue
    .line 93
    return-void
.end method

.method protected g()V
    .registers 1

    .prologue
    .line 98
    return-void
.end method
