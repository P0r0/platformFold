.class public Lcom/baidu/bdgame/sdk/obf/cd;
.super Lcom/baidu/bdgame/sdk/obf/cc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/baidu/bdgame/sdk/obf/cc;"
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/bdgame/sdk/obf/kz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/bdgame/sdk/obf/kz",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:Lcom/baidu/bdgame/sdk/obf/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<TT;>;"
        }
    .end annotation
.end field

.field private c:Lcom/baidu/bdgame/sdk/obf/kn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/kz",
            "<TT;>;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cc;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/cd;->a:Lcom/baidu/bdgame/sdk/obf/kz;

    .line 22
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/cd;->b:Lcom/baidu/bdgame/sdk/obf/o;

    .line 23
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cd;->c:Lcom/baidu/bdgame/sdk/obf/kn;

    if-eqz v0, :cond_c

    .line 49
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cd;->c:Lcom/baidu/bdgame/sdk/obf/kn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/kn;->a()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cd;->c:Lcom/baidu/bdgame/sdk/obf/kn;

    .line 52
    :cond_c
    return-void
.end method

.method protected final a(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 41
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cd;->c:Lcom/baidu/bdgame/sdk/obf/kn;

    .line 42
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cd;->c:Lcom/baidu/bdgame/sdk/obf/kn;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cd;->a:Lcom/baidu/bdgame/sdk/obf/kz;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/cd;->b:Lcom/baidu/bdgame/sdk/obf/o;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 43
    return-void
.end method

.method protected final a(Landroid/content/Context;ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 28
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cd;->b:Lcom/baidu/bdgame/sdk/obf/o;

    if-eqz v0, :cond_a

    .line 29
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cd;->b:Lcom/baidu/bdgame/sdk/obf/o;

    const/4 v1, 0x0

    invoke-interface {v0, p2, p3, v1}, Lcom/baidu/bdgame/sdk/obf/o;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 31
    :cond_a
    return-void
.end method

.method protected final c(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 36
    return-void
.end method
