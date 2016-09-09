.class public final Lcom/baidu/bdgame/sdk/obf/ks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/ks$1;,
        Lcom/baidu/bdgame/sdk/obf/ks$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ks;->a:Z

    .line 17
    iput-boolean v1, p0, Lcom/baidu/bdgame/sdk/obf/ks;->b:Z

    .line 22
    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ks;->c:Z

    .line 24
    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ks;->d:Z

    .line 27
    iput-boolean v1, p0, Lcom/baidu/bdgame/sdk/obf/ks;->e:Z

    .line 28
    iput-boolean v1, p0, Lcom/baidu/bdgame/sdk/obf/ks;->f:Z

    .line 29
    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ks;->g:Z

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bdgame/sdk/obf/ks$1;)V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ks;-><init>()V

    return-void
.end method

.method public static a()Lcom/baidu/bdgame/sdk/obf/ks;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ks$a;->a:Lcom/baidu/bdgame/sdk/obf/ks;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .registers 2

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/baidu/bdgame/sdk/obf/ks;->a:Z

    .line 51
    return-void
.end method

.method public b(Z)V
    .registers 2

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/baidu/bdgame/sdk/obf/ks;->b:Z

    .line 60
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ks;->a:Z

    return v0
.end method

.method public c(Z)V
    .registers 2

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/baidu/bdgame/sdk/obf/ks;->c:Z

    .line 70
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ks;->b:Z

    return v0
.end method

.method public d(Z)V
    .registers 2

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/baidu/bdgame/sdk/obf/ks;->d:Z

    .line 80
    return-void
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ks;->c:Z

    return v0
.end method

.method public e(Z)V
    .registers 2

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/baidu/bdgame/sdk/obf/ks;->e:Z

    .line 90
    return-void
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ks;->d:Z

    return v0
.end method

.method public f(Z)V
    .registers 2

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/baidu/bdgame/sdk/obf/ks;->f:Z

    .line 100
    return-void
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ks;->e:Z

    return v0
.end method

.method public g(Z)V
    .registers 2

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/baidu/bdgame/sdk/obf/ks;->g:Z

    .line 110
    return-void
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ks;->f:Z

    return v0
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ks;->g:Z

    return v0
.end method
