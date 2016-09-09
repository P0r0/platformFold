.class public Lcom/baidu/bdgame/sdk/obf/gp;
.super Lcom/baidu/bdgame/sdk/obf/jq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/gp$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x378

.field public static final b:I = 0x379


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/jg;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private h:J

.field private i:I

.field private j:Lcom/baidu/bdgame/sdk/obf/he;

.field private k:Lcom/baidu/bdgame/sdk/obf/hf;

.field private l:Lcom/baidu/bdgame/sdk/obf/gp$a;

.field private m:Lcom/baidu/bdgame/sdk/obf/gg;

.field private n:Lcom/baidu/bdgame/sdk/obf/gh;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ct;)V
    .registers 3

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/jq;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/gp;->i:I

    .line 39
    return-void
.end method


# virtual methods
.method protected a(Lcom/baidu/bdgame/sdk/obf/ct;)Lcom/baidu/bdgame/sdk/obf/cr;
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 44
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/go;

    invoke-direct {v0, p1, p0}, Lcom/baidu/bdgame/sdk/obf/go;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;Lcom/baidu/bdgame/sdk/obf/gp;)V

    .line 45
    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/go;->d(I)V

    .line 46
    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/go;->b(Z)V

    .line 47
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gp;->g:Landroid/content/Context;

    const-string v2, "bdp_paycenter_layout_paymode_cashcard_land"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/go;->f(I)V

    .line 49
    return-object v0
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/baidu/bdgame/sdk/obf/gp;->d:J

    .line 145
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/gp$a;)V
    .registers 2

    .prologue
    .line 198
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gp;->l:Lcom/baidu/bdgame/sdk/obf/gp$a;

    .line 199
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/he;)V
    .registers 2

    .prologue
    .line 170
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gp;->j:Lcom/baidu/bdgame/sdk/obf/he;

    .line 171
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/hf;)V
    .registers 2

    .prologue
    .line 177
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gp;->k:Lcom/baidu/bdgame/sdk/obf/hf;

    .line 178
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/jg;)V
    .registers 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gp;->j:Lcom/baidu/bdgame/sdk/obf/he;

    if-eqz v0, :cond_c

    .line 157
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gp;->j:Lcom/baidu/bdgame/sdk/obf/he;

    invoke-interface {v0, p1}, Lcom/baidu/bdgame/sdk/obf/he;->a(Lcom/baidu/bdgame/sdk/obf/jg;)V

    .line 158
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gp;->a()Z

    .line 160
    :cond_c
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/jg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gp;->c:Ljava/util/List;

    .line 133
    return-void
.end method

.method protected a(ZLandroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(ZLandroid/os/Bundle;)V

    .line 66
    if-eqz p1, :cond_9

    .line 67
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gp;->g()V

    .line 80
    :cond_8
    :goto_8
    return-void

    .line 69
    :cond_9
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gp;->c:Ljava/util/List;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gp;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1f

    .line 70
    :cond_15
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gp;->l:Lcom/baidu/bdgame/sdk/obf/gp$a;

    if-eqz v0, :cond_8

    .line 71
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gp;->l:Lcom/baidu/bdgame/sdk/obf/gp$a;

    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/gp$a;->b()V

    goto :goto_8

    .line 74
    :cond_1f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gp;->n:Lcom/baidu/bdgame/sdk/obf/gh;

    if-eqz v0, :cond_2c

    .line 75
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gp;->n:Lcom/baidu/bdgame/sdk/obf/gh;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gp;->q()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gh;->b(Ljava/util/List;)V

    .line 77
    :cond_2c
    const/16 v0, 0x378

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/gp;->a(I)V

    goto :goto_8
.end method

.method protected b(Lcom/baidu/bdgame/sdk/obf/ct;)Lcom/baidu/bdgame/sdk/obf/cr;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 55
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/go;

    invoke-direct {v0, p1, p0}, Lcom/baidu/bdgame/sdk/obf/go;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;Lcom/baidu/bdgame/sdk/obf/gp;)V

    .line 56
    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/go;->d(I)V

    .line 57
    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/go;->b(Z)V

    .line 58
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gp;->g:Landroid/content/Context;

    const-string v2, "bdp_paycenter_layout_paymode_cashcard"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/go;->f(I)V

    .line 60
    return-object v0
.end method

.method protected b()V
    .registers 2

    .prologue
    .line 224
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/jq;->b()V

    .line 225
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gp;->m:Lcom/baidu/bdgame/sdk/obf/gg;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gp;->m:Lcom/baidu/bdgame/sdk/obf/gg;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gg;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 226
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gp;->m:Lcom/baidu/bdgame/sdk/obf/gg;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gg;->a()I

    .line 228
    :cond_14
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gp;->n:Lcom/baidu/bdgame/sdk/obf/gh;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gp;->n:Lcom/baidu/bdgame/sdk/obf/gh;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gh;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 229
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gp;->n:Lcom/baidu/bdgame/sdk/obf/gh;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gh;->a()I

    .line 231
    :cond_25
    return-void
.end method

.method public b(I)V
    .registers 2

    .prologue
    .line 93
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/gp;->i:I

    .line 94
    return-void
.end method

.method public b(J)V
    .registers 6

    .prologue
    .line 148
    invoke-static {p1, p2}, Lcom/baidu/bdgame/sdk/obf/ju;->e(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/gp;->h:J

    .line 149
    return-void
.end method

.method public d(I)V
    .registers 5

    .prologue
    .line 206
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gp;->m:Lcom/baidu/bdgame/sdk/obf/gg;

    if-nez v0, :cond_11

    .line 207
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/gg;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gp;->l()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/baidu/bdgame/sdk/obf/hb;->b:Lcom/baidu/bdgame/sdk/obf/hb;

    invoke-direct {v0, v1, v2, p1}, Lcom/baidu/bdgame/sdk/obf/gg;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/hb;I)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gp;->m:Lcom/baidu/bdgame/sdk/obf/gg;

    .line 209
    :cond_11
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gp;->m:Lcom/baidu/bdgame/sdk/obf/gg;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gg;->show()V

    .line 210
    return-void
.end method

.method public f()I
    .registers 2

    .prologue
    .line 97
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/gp;->i:I

    return v0
.end method

.method protected g()V
    .registers 2

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/gp;->b(Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public o()V
    .registers 3

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gp;->k()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_tips_bank_card_removebind_fail"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kb;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gp;->n:Lcom/baidu/bdgame/sdk/obf/gh;

    if-eqz v0, :cond_13

    .line 110
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gp;->n:Lcom/baidu/bdgame/sdk/obf/gh;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gh;->show()V

    .line 115
    :goto_12
    return-void

    .line 112
    :cond_13
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gp;->v()V

    goto :goto_12
.end method

.method public p()V
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gp;->c:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gp;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_16

    .line 122
    :cond_c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gp;->l:Lcom/baidu/bdgame/sdk/obf/gp$a;

    if-eqz v0, :cond_15

    .line 123
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gp;->l:Lcom/baidu/bdgame/sdk/obf/gp$a;

    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/gp$a;->a()V

    .line 129
    :cond_15
    :goto_15
    return-void

    .line 126
    :cond_16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gp;->n:Lcom/baidu/bdgame/sdk/obf/gh;

    .line 127
    const/16 v0, 0x378

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/gp;->a(I)V

    goto :goto_15
.end method

.method public q()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/jg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gp;->c:Ljava/util/List;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .registers 3

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/gp;->d:J

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ju;->b(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()J
    .registers 3

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/gp;->h:J

    return-wide v0
.end method

.method public t()V
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gp;->j:Lcom/baidu/bdgame/sdk/obf/he;

    if-eqz v0, :cond_c

    .line 164
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gp;->j:Lcom/baidu/bdgame/sdk/obf/he;

    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/he;->a()V

    .line 165
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gp;->a()Z

    .line 167
    :cond_c
    return-void
.end method

.method public u()Lcom/baidu/bdgame/sdk/obf/hf;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gp;->k:Lcom/baidu/bdgame/sdk/obf/hf;

    return-object v0
.end method

.method public v()V
    .registers 4

    .prologue
    .line 214
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gp;->n:Lcom/baidu/bdgame/sdk/obf/gh;

    if-nez v0, :cond_23

    .line 215
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/gh;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gp;->l()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/baidu/bdgame/sdk/obf/hb;->b:Lcom/baidu/bdgame/sdk/obf/hb;

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/gh;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/hb;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gp;->n:Lcom/baidu/bdgame/sdk/obf/gh;

    .line 216
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gp;->n:Lcom/baidu/bdgame/sdk/obf/gh;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gp;->q()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gh;->a(Ljava/util/List;)V

    .line 217
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gp;->n:Lcom/baidu/bdgame/sdk/obf/gh;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gp;->u()Lcom/baidu/bdgame/sdk/obf/hf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gh;->a(Lcom/baidu/bdgame/sdk/obf/hf;)V

    .line 219
    :cond_23
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gp;->n:Lcom/baidu/bdgame/sdk/obf/gh;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gh;->show()V

    .line 220
    return-void
.end method
