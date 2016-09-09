.class public Lcom/baidu/bdgame/sdk/obf/cb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x57ea5

.field public static final b:I = 0x57ea5


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/kd;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 90
    if-nez v1, :cond_c

    .line 97
    :cond_b
    :goto_b
    return-object v0

    .line 93
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v2

    if-nez v2, :cond_b

    .line 97
    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/kd;->a(Lcom/baidu/bdgame/sdk/obf/ax;)Lcom/baidu/bdgame/sdk/obf/kd;

    move-result-object v0

    goto :goto_b
.end method

.method public static a(Landroid/content/Context;ILcom/baidu/bdgame/sdk/obf/o;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/cv;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/cv;-><init>()V

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p2}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/baidu/bdgame/sdk/obf/cv;->a(Landroid/content/Context;ILcom/baidu/bdgame/sdk/obf/o;)V

    .line 109
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/id;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/cv;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/cv;-><init>()V

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/cv;->c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 129
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jg;Lcom/baidu/bdgame/sdk/obf/jw;Lcom/baidu/bdgame/sdk/obf/ka;Lcom/baidu/bdgame/sdk/obf/jv;Lcom/baidu/bdgame/sdk/obf/jz;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jg;",
            "Lcom/baidu/bdgame/sdk/obf/jw;",
            "Lcom/baidu/bdgame/sdk/obf/ka;",
            "Lcom/baidu/bdgame/sdk/obf/jv;",
            "Lcom/baidu/bdgame/sdk/obf/jz;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1042
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 1043
    if-nez v1, :cond_c

    .line 1058
    :cond_b
    :goto_b
    return v0

    .line 1046
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1049
    invoke-static {p0, p2, p1, p6}, Lcom/baidu/bdgame/sdk/obf/jh;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/jg;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;)Lcom/baidu/bdgame/sdk/obf/jh;

    move-result-object v0

    .line 1052
    invoke-virtual {v0, p5}, Lcom/baidu/bdgame/sdk/obf/jh;->a(Lcom/baidu/bdgame/sdk/obf/jv;)V

    .line 1053
    invoke-virtual {v0, p4}, Lcom/baidu/bdgame/sdk/obf/jh;->a(Lcom/baidu/bdgame/sdk/obf/ka;)V

    .line 1054
    invoke-virtual {v0, p3}, Lcom/baidu/bdgame/sdk/obf/jh;->a(Lcom/baidu/bdgame/sdk/obf/jw;)V

    .line 1056
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 1057
    invoke-static {p7}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 1058
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jg;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jg;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1208
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 1209
    if-nez v1, :cond_c

    .line 1221
    :cond_b
    :goto_b
    return v0

    .line 1212
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1215
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->e()Ljava/lang/String;

    move-result-object v0

    .line 1218
    invoke-static {p0, p1, p2, v0}, Lcom/baidu/bdgame/sdk/obf/jm;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jg;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/jm;

    move-result-object v0

    .line 1219
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 1220
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 1221
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jw;Lcom/baidu/bdgame/sdk/obf/jd;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/ka;Lcom/baidu/bdgame/sdk/obf/jv;Lcom/baidu/bdgame/sdk/obf/jz;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jw;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/ka;",
            "Lcom/baidu/bdgame/sdk/obf/jv;",
            "Lcom/baidu/bdgame/sdk/obf/jz;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1171
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 1172
    if-nez v1, :cond_c

    .line 1191
    :cond_b
    :goto_b
    return v0

    .line 1175
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1178
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->e()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p7

    move-object v3, p3

    move-object v5, p4

    .line 1181
    invoke-static/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/je;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;Lcom/baidu/bdgame/sdk/obf/jd;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/je;

    move-result-object v0

    .line 1185
    invoke-virtual {v0, p6}, Lcom/baidu/bdgame/sdk/obf/je;->a(Lcom/baidu/bdgame/sdk/obf/jv;)V

    .line 1186
    invoke-virtual {v0, p5}, Lcom/baidu/bdgame/sdk/obf/je;->a(Lcom/baidu/bdgame/sdk/obf/ka;)V

    .line 1187
    invoke-virtual {v0, p2}, Lcom/baidu/bdgame/sdk/obf/je;->a(Lcom/baidu/bdgame/sdk/obf/jw;)V

    .line 1189
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 1190
    invoke-static {p8}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 1191
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jw;Lcom/baidu/bdgame/sdk/obf/ka;Lcom/baidu/bdgame/sdk/obf/jv;Lcom/baidu/bdgame/sdk/obf/jz;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jw;",
            "Lcom/baidu/bdgame/sdk/obf/ka;",
            "Lcom/baidu/bdgame/sdk/obf/jv;",
            "Lcom/baidu/bdgame/sdk/obf/jz;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ho;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 516
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 517
    if-nez v1, :cond_c

    .line 529
    :cond_b
    :goto_b
    return v0

    .line 520
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v1

    if-nez v1, :cond_b

    .line 523
    invoke-static {p0, p1, p5}, Lcom/baidu/bdgame/sdk/obf/hn;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;)Lcom/baidu/bdgame/sdk/obf/hn;

    move-result-object v0

    .line 524
    invoke-virtual {v0, p4}, Lcom/baidu/bdgame/sdk/obf/hn;->a(Lcom/baidu/bdgame/sdk/obf/jv;)V

    .line 525
    invoke-virtual {v0, p3}, Lcom/baidu/bdgame/sdk/obf/hn;->a(Lcom/baidu/bdgame/sdk/obf/ka;)V

    .line 526
    invoke-virtual {v0, p2}, Lcom/baidu/bdgame/sdk/obf/hn;->a(Lcom/baidu/bdgame/sdk/obf/jw;)V

    .line 527
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 528
    invoke-static {p6}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 529
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jw;Lcom/baidu/bdgame/sdk/obf/ka;Lcom/baidu/bdgame/sdk/obf/jv;Lcom/baidu/bdgame/sdk/obf/jz;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/fs;",
            ">;",
            "Lcom/baidu/bdgame/sdk/obf/jw;",
            "Lcom/baidu/bdgame/sdk/obf/ka;",
            "Lcom/baidu/bdgame/sdk/obf/jv;",
            "Lcom/baidu/bdgame/sdk/obf/jz;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ji;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 694
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 695
    if-nez v1, :cond_c

    .line 709
    :cond_b
    :goto_b
    return v0

    .line 698
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v1

    if-nez v1, :cond_b

    .line 701
    invoke-static {p0, p1, p5}, Lcom/baidu/bdgame/sdk/obf/jl;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;)Lcom/baidu/bdgame/sdk/obf/jl;

    move-result-object v0

    .line 702
    invoke-virtual {v0, p6}, Lcom/baidu/bdgame/sdk/obf/jl;->a(Ljava/lang/String;)V

    .line 703
    invoke-virtual {v0, p7}, Lcom/baidu/bdgame/sdk/obf/jl;->b(Ljava/lang/String;)V

    .line 704
    invoke-virtual {v0, p4}, Lcom/baidu/bdgame/sdk/obf/jl;->a(Lcom/baidu/bdgame/sdk/obf/jv;)V

    .line 705
    invoke-virtual {v0, p3}, Lcom/baidu/bdgame/sdk/obf/jl;->a(Lcom/baidu/bdgame/sdk/obf/ka;)V

    .line 706
    invoke-virtual {v0, p2}, Lcom/baidu/bdgame/sdk/obf/jl;->a(Lcom/baidu/bdgame/sdk/obf/jw;)V

    .line 707
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 708
    invoke-static {p8}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 709
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jw;Lcom/baidu/bdgame/sdk/obf/ka;Lcom/baidu/bdgame/sdk/obf/jv;Lcom/baidu/bdgame/sdk/obf/jz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jw;",
            "Lcom/baidu/bdgame/sdk/obf/ka;",
            "Lcom/baidu/bdgame/sdk/obf/jv;",
            "Lcom/baidu/bdgame/sdk/obf/jz;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/gf;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 877
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 878
    if-nez v1, :cond_c

    .line 891
    :cond_b
    :goto_b
    return v0

    .line 881
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v1

    if-nez v1, :cond_b

    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move-object v3, p6

    move-object v4, p7

    move-object v5, p8

    .line 884
    invoke-static/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/gd;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/gd;

    move-result-object v0

    .line 886
    invoke-virtual {v0, p4}, Lcom/baidu/bdgame/sdk/obf/gd;->a(Lcom/baidu/bdgame/sdk/obf/jv;)V

    .line 887
    invoke-virtual {v0, p3}, Lcom/baidu/bdgame/sdk/obf/gd;->a(Lcom/baidu/bdgame/sdk/obf/ka;)V

    .line 888
    invoke-virtual {v0, p2}, Lcom/baidu/bdgame/sdk/obf/gd;->a(Lcom/baidu/bdgame/sdk/obf/jw;)V

    .line 889
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 890
    invoke-static {p9}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 891
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;Lcom/baidu/bdgame/sdk/obf/ka;Lcom/baidu/bdgame/sdk/obf/jv;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jz;",
            "Lcom/baidu/bdgame/sdk/obf/ka;",
            "Lcom/baidu/bdgame/sdk/obf/jv;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ic;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 344
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 345
    if-nez v1, :cond_c

    .line 359
    :cond_b
    :goto_b
    return v0

    .line 348
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v1

    if-nez v1, :cond_b

    .line 352
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/jz;->d()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/baidu/bdgame/sdk/obf/jz;->b(J)V

    .line 354
    invoke-static {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/ib;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;)Lcom/baidu/bdgame/sdk/obf/ib;

    move-result-object v0

    .line 355
    invoke-virtual {v0, p4}, Lcom/baidu/bdgame/sdk/obf/ib;->a(Lcom/baidu/bdgame/sdk/obf/jv;)V

    .line 356
    invoke-virtual {v0, p3}, Lcom/baidu/bdgame/sdk/obf/ib;->a(Lcom/baidu/bdgame/sdk/obf/ka;)V

    .line 357
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 358
    invoke-static {p5}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 359
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/jg;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1008
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 1009
    if-nez v1, :cond_c

    .line 1019
    :cond_b
    :goto_b
    return v0

    .line 1012
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1015
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->e()Ljava/lang/String;

    move-result-object v0

    .line 1016
    invoke-static {p0, p1, v0}, Lcom/baidu/bdgame/sdk/obf/jk;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/jk;

    move-result-object v0

    .line 1017
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 1018
    invoke-static {p2}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 1019
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/jw;Lcom/baidu/bdgame/sdk/obf/ka;Lcom/baidu/bdgame/sdk/obf/jv;Lcom/baidu/bdgame/sdk/obf/jz;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/jw;",
            "Lcom/baidu/bdgame/sdk/obf/ka;",
            "Lcom/baidu/bdgame/sdk/obf/jv;",
            "Lcom/baidu/bdgame/sdk/obf/jz;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1092
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v0

    .line 1093
    if-nez v0, :cond_c

    .line 1094
    const/4 v0, 0x0

    .line 1108
    :goto_b
    return v0

    .line 1096
    :cond_c
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1097
    const/4 v0, 0x0

    goto :goto_b

    :cond_14
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p1

    move-object/from16 v6, p9

    .line 1099
    invoke-static/range {v0 .. v6}, Lcom/baidu/bdgame/sdk/obf/jc;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;)Lcom/baidu/bdgame/sdk/obf/jc;

    move-result-object v0

    .line 1102
    invoke-virtual {v0, p8}, Lcom/baidu/bdgame/sdk/obf/jc;->a(Lcom/baidu/bdgame/sdk/obf/jv;)V

    .line 1103
    invoke-virtual {v0, p7}, Lcom/baidu/bdgame/sdk/obf/jc;->a(Lcom/baidu/bdgame/sdk/obf/ka;)V

    .line 1104
    invoke-virtual {v0, p6}, Lcom/baidu/bdgame/sdk/obf/jc;->a(Lcom/baidu/bdgame/sdk/obf/jw;)V

    .line 1106
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 1107
    invoke-static/range {p10 .. p10}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 1108
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jz;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1127
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 1128
    if-nez v1, :cond_c

    .line 1141
    :cond_b
    :goto_b
    return v0

    .line 1131
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1134
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->e()Ljava/lang/String;

    move-result-object v0

    .line 1136
    invoke-static {p0, p2, p1, v0}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jd;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/jf;

    move-result-object v0

    .line 1139
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 1140
    invoke-static {p4}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 1141
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ka;Lcom/baidu/bdgame/sdk/obf/jv;Lcom/baidu/bdgame/sdk/obf/jz;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ka;",
            "Lcom/baidu/bdgame/sdk/obf/jv;",
            "Lcom/baidu/bdgame/sdk/obf/jz;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ja;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1238
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 1239
    if-nez v1, :cond_c

    .line 1254
    :cond_b
    :goto_b
    return v0

    .line 1242
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1247
    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/jz;->d()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/baidu/bdgame/sdk/obf/jz;->b(J)V

    .line 1249
    invoke-static {p0, p3}, Lcom/baidu/bdgame/sdk/obf/iz;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/jz;)Lcom/baidu/bdgame/sdk/obf/iz;

    move-result-object v0

    .line 1250
    invoke-virtual {v0, p2}, Lcom/baidu/bdgame/sdk/obf/iz;->a(Lcom/baidu/bdgame/sdk/obf/jv;)V

    .line 1251
    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/iz;->a(Lcom/baidu/bdgame/sdk/obf/ka;)V

    .line 1252
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 1253
    invoke-static {p4}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 1254
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 212
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 213
    if-nez v1, :cond_c

    .line 223
    :cond_b
    :goto_b
    return v0

    .line 216
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v1

    if-nez v1, :cond_b

    .line 219
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->e()Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {p0, v0, p1}, Lcom/baidu/bdgame/sdk/obf/im;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/im;

    move-result-object v0

    .line 221
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 222
    invoke-static {p2}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 223
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/hw;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 907
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 908
    if-nez v1, :cond_c

    .line 920
    :cond_b
    :goto_b
    return v0

    .line 911
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v1

    if-nez v1, :cond_b

    .line 914
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->e()Ljava/lang/String;

    move-result-object v1

    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/hx;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/hx;

    move-result-object v0

    .line 918
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 919
    invoke-virtual {v1, v0, p5}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 920
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jg;Lcom/baidu/bdgame/sdk/obf/jw;Lcom/baidu/bdgame/sdk/obf/ka;Lcom/baidu/bdgame/sdk/obf/jv;Lcom/baidu/bdgame/sdk/obf/jz;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jg;",
            "Lcom/baidu/bdgame/sdk/obf/jw;",
            "Lcom/baidu/bdgame/sdk/obf/ka;",
            "Lcom/baidu/bdgame/sdk/obf/jv;",
            "Lcom/baidu/bdgame/sdk/obf/jz;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1302
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 1303
    if-nez v1, :cond_c

    .line 1318
    :cond_b
    :goto_b
    return v0

    .line 1306
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1309
    invoke-static {p0, p2, p1, p6}, Lcom/baidu/bdgame/sdk/obf/jh;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/jg;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;)Lcom/baidu/bdgame/sdk/obf/jh;

    move-result-object v0

    .line 1312
    invoke-virtual {v0, p5}, Lcom/baidu/bdgame/sdk/obf/jh;->a(Lcom/baidu/bdgame/sdk/obf/jv;)V

    .line 1313
    invoke-virtual {v0, p4}, Lcom/baidu/bdgame/sdk/obf/jh;->a(Lcom/baidu/bdgame/sdk/obf/ka;)V

    .line 1314
    invoke-virtual {v0, p3}, Lcom/baidu/bdgame/sdk/obf/jh;->a(Lcom/baidu/bdgame/sdk/obf/jw;)V

    .line 1316
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 1317
    invoke-static {p7}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 1318
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jg;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jg;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1468
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 1469
    if-nez v1, :cond_c

    .line 1481
    :cond_b
    :goto_b
    return v0

    .line 1472
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1475
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->e()Ljava/lang/String;

    move-result-object v0

    .line 1478
    invoke-static {p0, p1, p2, v0}, Lcom/baidu/bdgame/sdk/obf/jm;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jg;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/jm;

    move-result-object v0

    .line 1479
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 1480
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 1481
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jw;Lcom/baidu/bdgame/sdk/obf/jd;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/ka;Lcom/baidu/bdgame/sdk/obf/jv;Lcom/baidu/bdgame/sdk/obf/jz;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jw;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/ka;",
            "Lcom/baidu/bdgame/sdk/obf/jv;",
            "Lcom/baidu/bdgame/sdk/obf/jz;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1431
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 1432
    if-nez v1, :cond_c

    .line 1451
    :cond_b
    :goto_b
    return v0

    .line 1435
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1438
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->e()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p7

    move-object v3, p3

    move-object v5, p4

    .line 1441
    invoke-static/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/je;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;Lcom/baidu/bdgame/sdk/obf/jd;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/je;

    move-result-object v0

    .line 1445
    invoke-virtual {v0, p6}, Lcom/baidu/bdgame/sdk/obf/je;->a(Lcom/baidu/bdgame/sdk/obf/jv;)V

    .line 1446
    invoke-virtual {v0, p5}, Lcom/baidu/bdgame/sdk/obf/je;->a(Lcom/baidu/bdgame/sdk/obf/ka;)V

    .line 1447
    invoke-virtual {v0, p2}, Lcom/baidu/bdgame/sdk/obf/je;->a(Lcom/baidu/bdgame/sdk/obf/jw;)V

    .line 1449
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 1450
    invoke-static {p8}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 1451
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jw;Lcom/baidu/bdgame/sdk/obf/ka;Lcom/baidu/bdgame/sdk/obf/jv;Lcom/baidu/bdgame/sdk/obf/jz;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jw;",
            "Lcom/baidu/bdgame/sdk/obf/ka;",
            "Lcom/baidu/bdgame/sdk/obf/jv;",
            "Lcom/baidu/bdgame/sdk/obf/jz;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/hm;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 550
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 551
    if-nez v1, :cond_c

    .line 563
    :cond_b
    :goto_b
    return v0

    .line 554
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v1

    if-nez v1, :cond_b

    .line 557
    invoke-static {p0, p1, p5}, Lcom/baidu/bdgame/sdk/obf/hk;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;)Lcom/baidu/bdgame/sdk/obf/hk;

    move-result-object v0

    .line 558
    invoke-virtual {v0, p4}, Lcom/baidu/bdgame/sdk/obf/hk;->a(Lcom/baidu/bdgame/sdk/obf/jv;)V

    .line 559
    invoke-virtual {v0, p3}, Lcom/baidu/bdgame/sdk/obf/hk;->a(Lcom/baidu/bdgame/sdk/obf/ka;)V

    .line 560
    invoke-virtual {v0, p2}, Lcom/baidu/bdgame/sdk/obf/hk;->a(Lcom/baidu/bdgame/sdk/obf/jw;)V

    .line 561
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 562
    invoke-static {p6}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 563
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jw;Lcom/baidu/bdgame/sdk/obf/ka;Lcom/baidu/bdgame/sdk/obf/jv;Lcom/baidu/bdgame/sdk/obf/jz;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/fc;",
            ">;",
            "Lcom/baidu/bdgame/sdk/obf/jw;",
            "Lcom/baidu/bdgame/sdk/obf/ka;",
            "Lcom/baidu/bdgame/sdk/obf/jv;",
            "Lcom/baidu/bdgame/sdk/obf/jz;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ji;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 768
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 769
    if-nez v1, :cond_c

    .line 785
    :cond_b
    :goto_b
    return v0

    .line 772
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v1

    if-nez v1, :cond_b

    .line 775
    invoke-static {p0, p1, p5}, Lcom/baidu/bdgame/sdk/obf/jj;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;)Lcom/baidu/bdgame/sdk/obf/jj;

    move-result-object v0

    .line 776
    invoke-virtual {v0, p6}, Lcom/baidu/bdgame/sdk/obf/jj;->a(Ljava/lang/String;)V

    .line 777
    invoke-virtual {v0, p7}, Lcom/baidu/bdgame/sdk/obf/jj;->b(Ljava/lang/String;)V

    .line 779
    invoke-virtual {v0, p4}, Lcom/baidu/bdgame/sdk/obf/jj;->a(Lcom/baidu/bdgame/sdk/obf/jv;)V

    .line 780
    invoke-virtual {v0, p3}, Lcom/baidu/bdgame/sdk/obf/jj;->a(Lcom/baidu/bdgame/sdk/obf/ka;)V

    .line 781
    invoke-virtual {v0, p2}, Lcom/baidu/bdgame/sdk/obf/jj;->a(Lcom/baidu/bdgame/sdk/obf/jw;)V

    .line 783
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 784
    invoke-static {p8}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 785
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;Lcom/baidu/bdgame/sdk/obf/ka;Lcom/baidu/bdgame/sdk/obf/jv;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jz;",
            "Lcom/baidu/bdgame/sdk/obf/ka;",
            "Lcom/baidu/bdgame/sdk/obf/jv;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ic;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 380
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 381
    if-nez v1, :cond_c

    .line 393
    :cond_b
    :goto_b
    return v0

    .line 384
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v1

    if-nez v1, :cond_b

    .line 388
    invoke-static {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/ib;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;)Lcom/baidu/bdgame/sdk/obf/ib;

    move-result-object v0

    .line 389
    invoke-virtual {v0, p4}, Lcom/baidu/bdgame/sdk/obf/ib;->a(Lcom/baidu/bdgame/sdk/obf/jv;)V

    .line 390
    invoke-virtual {v0, p3}, Lcom/baidu/bdgame/sdk/obf/ib;->a(Lcom/baidu/bdgame/sdk/obf/ka;)V

    .line 391
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 392
    invoke-static {p5}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 393
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/jg;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1268
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 1269
    if-nez v1, :cond_c

    .line 1279
    :cond_b
    :goto_b
    return v0

    .line 1272
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1275
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->e()Ljava/lang/String;

    move-result-object v0

    .line 1276
    invoke-static {p0, p1, v0}, Lcom/baidu/bdgame/sdk/obf/jk;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/jk;

    move-result-object v0

    .line 1277
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 1278
    invoke-static {p2}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 1279
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/jw;Lcom/baidu/bdgame/sdk/obf/ka;Lcom/baidu/bdgame/sdk/obf/jv;Lcom/baidu/bdgame/sdk/obf/jz;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/jw;",
            "Lcom/baidu/bdgame/sdk/obf/ka;",
            "Lcom/baidu/bdgame/sdk/obf/jv;",
            "Lcom/baidu/bdgame/sdk/obf/jz;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1352
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v0

    .line 1353
    if-nez v0, :cond_c

    .line 1354
    const/4 v0, 0x0

    .line 1368
    :goto_b
    return v0

    .line 1356
    :cond_c
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1357
    const/4 v0, 0x0

    goto :goto_b

    :cond_14
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p1

    move-object/from16 v6, p9

    .line 1359
    invoke-static/range {v0 .. v6}, Lcom/baidu/bdgame/sdk/obf/jc;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;)Lcom/baidu/bdgame/sdk/obf/jc;

    move-result-object v0

    .line 1362
    invoke-virtual {v0, p8}, Lcom/baidu/bdgame/sdk/obf/jc;->a(Lcom/baidu/bdgame/sdk/obf/jv;)V

    .line 1363
    invoke-virtual {v0, p7}, Lcom/baidu/bdgame/sdk/obf/jc;->a(Lcom/baidu/bdgame/sdk/obf/ka;)V

    .line 1364
    invoke-virtual {v0, p6}, Lcom/baidu/bdgame/sdk/obf/jc;->a(Lcom/baidu/bdgame/sdk/obf/jw;)V

    .line 1366
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 1367
    invoke-static/range {p10 .. p10}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 1368
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jz;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1387
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 1388
    if-nez v1, :cond_c

    .line 1401
    :cond_b
    :goto_b
    return v0

    .line 1391
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1394
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->e()Ljava/lang/String;

    move-result-object v0

    .line 1396
    invoke-static {p0, p2, p1, v0}, Lcom/baidu/bdgame/sdk/obf/jf;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jd;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/jf;

    move-result-object v0

    .line 1399
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 1400
    invoke-static {p4}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 1401
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/io;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 138
    if-nez v1, :cond_c

    .line 148
    :cond_b
    :goto_b
    return v0

    .line 141
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v1

    if-nez v1, :cond_b

    .line 144
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->e()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/in;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/in;

    move-result-object v0

    .line 146
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 147
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 148
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 234
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 235
    if-nez v1, :cond_c

    .line 245
    :cond_b
    :goto_b
    return v0

    .line 238
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v1

    if-nez v1, :cond_b

    .line 241
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->e()Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-static {p0, v0, p1}, Lcom/baidu/bdgame/sdk/obf/im;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/im;

    move-result-object v0

    .line 243
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 244
    invoke-static {p2}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 245
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/if;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 936
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 937
    if-nez v1, :cond_c

    .line 949
    :cond_b
    :goto_b
    return v0

    .line 940
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v1

    if-nez v1, :cond_b

    .line 943
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->e()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 944
    invoke-static/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/ig;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/baidu/bdgame/sdk/obf/ig;

    move-result-object v0

    .line 947
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 948
    invoke-virtual {v1, v0, p5}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 949
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jw;Lcom/baidu/bdgame/sdk/obf/ka;Lcom/baidu/bdgame/sdk/obf/jv;Lcom/baidu/bdgame/sdk/obf/jz;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jw;",
            "Lcom/baidu/bdgame/sdk/obf/ka;",
            "Lcom/baidu/bdgame/sdk/obf/jv;",
            "Lcom/baidu/bdgame/sdk/obf/jz;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/hp;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 584
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 585
    if-nez v1, :cond_c

    .line 597
    :cond_b
    :goto_b
    return v0

    .line 588
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v1

    if-nez v1, :cond_b

    .line 591
    invoke-static {p0, p1, p5}, Lcom/baidu/bdgame/sdk/obf/hl;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;)Lcom/baidu/bdgame/sdk/obf/hl;

    move-result-object v0

    .line 592
    invoke-virtual {v0, p4}, Lcom/baidu/bdgame/sdk/obf/hl;->a(Lcom/baidu/bdgame/sdk/obf/jv;)V

    .line 593
    invoke-virtual {v0, p3}, Lcom/baidu/bdgame/sdk/obf/hl;->a(Lcom/baidu/bdgame/sdk/obf/ka;)V

    .line 594
    invoke-virtual {v0, p2}, Lcom/baidu/bdgame/sdk/obf/hl;->a(Lcom/baidu/bdgame/sdk/obf/jw;)V

    .line 595
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 596
    invoke-static {p6}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 597
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;Lcom/baidu/bdgame/sdk/obf/ka;Lcom/baidu/bdgame/sdk/obf/jv;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jz;",
            "Lcom/baidu/bdgame/sdk/obf/ka;",
            "Lcom/baidu/bdgame/sdk/obf/jv;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ic;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 418
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 419
    if-nez v1, :cond_c

    .line 433
    :cond_b
    :goto_b
    return v0

    .line 422
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v1

    if-nez v1, :cond_b

    .line 426
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/jz;->d()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/baidu/bdgame/sdk/obf/jz;->b(J)V

    .line 428
    invoke-static {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/ib;->c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;)Lcom/baidu/bdgame/sdk/obf/ib;

    move-result-object v0

    .line 429
    invoke-virtual {v0, p4}, Lcom/baidu/bdgame/sdk/obf/ib;->a(Lcom/baidu/bdgame/sdk/obf/jv;)V

    .line 430
    invoke-virtual {v0, p3}, Lcom/baidu/bdgame/sdk/obf/ib;->a(Lcom/baidu/bdgame/sdk/obf/ka;)V

    .line 431
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 432
    invoke-static {p5}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 433
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/is;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 158
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 159
    if-nez v1, :cond_c

    .line 169
    :cond_b
    :goto_b
    return v0

    .line 162
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v1

    if-nez v1, :cond_b

    .line 165
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->e()Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ir;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ir;

    move-result-object v0

    .line 167
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 168
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 169
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 261
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 262
    if-nez v1, :cond_c

    .line 272
    :cond_b
    :goto_b
    return v0

    .line 265
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v1

    if-nez v1, :cond_b

    .line 268
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->e()Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-static {p0, v0, p1}, Lcom/baidu/bdgame/sdk/obf/im;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/im;

    move-result-object v0

    .line 270
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 271
    invoke-static {p2}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 272
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static d(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jw;Lcom/baidu/bdgame/sdk/obf/ka;Lcom/baidu/bdgame/sdk/obf/jv;Lcom/baidu/bdgame/sdk/obf/jz;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jw;",
            "Lcom/baidu/bdgame/sdk/obf/ka;",
            "Lcom/baidu/bdgame/sdk/obf/jv;",
            "Lcom/baidu/bdgame/sdk/obf/jz;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ik;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 618
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 619
    if-nez v1, :cond_c

    .line 631
    :cond_b
    :goto_b
    return v0

    .line 622
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v1

    if-nez v1, :cond_b

    .line 625
    invoke-static {p0, p1, p5}, Lcom/baidu/bdgame/sdk/obf/ij;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;)Lcom/baidu/bdgame/sdk/obf/ij;

    move-result-object v0

    .line 626
    invoke-virtual {v0, p4}, Lcom/baidu/bdgame/sdk/obf/ij;->a(Lcom/baidu/bdgame/sdk/obf/jv;)V

    .line 627
    invoke-virtual {v0, p3}, Lcom/baidu/bdgame/sdk/obf/ij;->a(Lcom/baidu/bdgame/sdk/obf/ka;)V

    .line 628
    invoke-virtual {v0, p2}, Lcom/baidu/bdgame/sdk/obf/ij;->a(Lcom/baidu/bdgame/sdk/obf/jw;)V

    .line 629
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 630
    invoke-static {p6}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 631
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static d(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;Lcom/baidu/bdgame/sdk/obf/ka;Lcom/baidu/bdgame/sdk/obf/jv;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jz;",
            "Lcom/baidu/bdgame/sdk/obf/ka;",
            "Lcom/baidu/bdgame/sdk/obf/jv;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ic;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 480
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 481
    if-nez v1, :cond_c

    .line 495
    :cond_b
    :goto_b
    return v0

    .line 484
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v1

    if-nez v1, :cond_b

    .line 488
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/jz;->d()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/baidu/bdgame/sdk/obf/jz;->b(J)V

    .line 490
    invoke-static {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/ib;->d(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;)Lcom/baidu/bdgame/sdk/obf/ib;

    move-result-object v0

    .line 491
    invoke-virtual {v0, p4}, Lcom/baidu/bdgame/sdk/obf/ib;->a(Lcom/baidu/bdgame/sdk/obf/jv;)V

    .line 492
    invoke-virtual {v0, p3}, Lcom/baidu/bdgame/sdk/obf/ib;->a(Lcom/baidu/bdgame/sdk/obf/ka;)V

    .line 493
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 494
    invoke-static {p5}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 495
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static d(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/hu;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 183
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 184
    if-nez v1, :cond_c

    .line 201
    :cond_b
    :goto_b
    return v0

    .line 187
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v1

    if-nez v1, :cond_b

    .line 190
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->e()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ip;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ip;

    move-result-object v0

    .line 192
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 193
    new-instance v2, Lcom/baidu/bdgame/sdk/obf/cb$1;

    invoke-direct {v2, p1}, Lcom/baidu/bdgame/sdk/obf/cb$1;-><init>(Lcom/baidu/bdgame/sdk/obf/o;)V

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 201
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/il;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 960
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 961
    if-nez v1, :cond_c

    .line 971
    :cond_b
    :goto_b
    return v0

    .line 964
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v1

    if-nez v1, :cond_b

    .line 967
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->e()Ljava/lang/String;

    move-result-object v0

    .line 968
    invoke-static {p0, v0, p1}, Lcom/baidu/bdgame/sdk/obf/iq;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/iq;

    move-result-object v0

    .line 969
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 970
    invoke-static {p2}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 971
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static e(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jw;Lcom/baidu/bdgame/sdk/obf/ka;Lcom/baidu/bdgame/sdk/obf/jv;Lcom/baidu/bdgame/sdk/obf/jz;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jw;",
            "Lcom/baidu/bdgame/sdk/obf/ka;",
            "Lcom/baidu/bdgame/sdk/obf/jv;",
            "Lcom/baidu/bdgame/sdk/obf/jz;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/iv;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 651
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 652
    if-nez v1, :cond_c

    .line 664
    :cond_b
    :goto_b
    return v0

    .line 655
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v1

    if-nez v1, :cond_b

    .line 658
    invoke-static {p0, p1, p5}, Lcom/baidu/bdgame/sdk/obf/iu;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;)Lcom/baidu/bdgame/sdk/obf/iu;

    move-result-object v0

    .line 659
    invoke-virtual {v0, p4}, Lcom/baidu/bdgame/sdk/obf/iu;->a(Lcom/baidu/bdgame/sdk/obf/jv;)V

    .line 660
    invoke-virtual {v0, p3}, Lcom/baidu/bdgame/sdk/obf/iu;->a(Lcom/baidu/bdgame/sdk/obf/ka;)V

    .line 661
    invoke-virtual {v0, p2}, Lcom/baidu/bdgame/sdk/obf/iu;->a(Lcom/baidu/bdgame/sdk/obf/jw;)V

    .line 662
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 663
    invoke-static {p6}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 664
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static e(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/jt;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 282
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 283
    if-nez v1, :cond_c

    .line 301
    :cond_b
    :goto_b
    return v0

    .line 286
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v1

    if-nez v1, :cond_b

    .line 289
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->e()Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ip;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ip;

    move-result-object v0

    .line 291
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 292
    new-instance v2, Lcom/baidu/bdgame/sdk/obf/cb$2;

    invoke-direct {v2, p1}, Lcom/baidu/bdgame/sdk/obf/cb$2;-><init>(Lcom/baidu/bdgame/sdk/obf/o;)V

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 301
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/il;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 981
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 982
    if-nez v1, :cond_c

    .line 992
    :cond_b
    :goto_b
    return v0

    .line 985
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v1

    if-nez v1, :cond_b

    .line 988
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->e()Ljava/lang/String;

    move-result-object v0

    .line 989
    invoke-static {p0, v0, p1}, Lcom/baidu/bdgame/sdk/obf/iq;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/iq;

    move-result-object v0

    .line 990
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 991
    invoke-static {p2}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 992
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static f(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jw;Lcom/baidu/bdgame/sdk/obf/ka;Lcom/baidu/bdgame/sdk/obf/jv;Lcom/baidu/bdgame/sdk/obf/jz;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jw;",
            "Lcom/baidu/bdgame/sdk/obf/ka;",
            "Lcom/baidu/bdgame/sdk/obf/jv;",
            "Lcom/baidu/bdgame/sdk/obf/jz;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ht;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 730
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 731
    if-nez v1, :cond_c

    .line 743
    :cond_b
    :goto_b
    return v0

    .line 734
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v1

    if-nez v1, :cond_b

    .line 737
    invoke-static {p0, p1, p5}, Lcom/baidu/bdgame/sdk/obf/hs;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;)Lcom/baidu/bdgame/sdk/obf/hs;

    move-result-object v0

    .line 738
    invoke-virtual {v0, p4}, Lcom/baidu/bdgame/sdk/obf/hs;->a(Lcom/baidu/bdgame/sdk/obf/jv;)V

    .line 739
    invoke-virtual {v0, p3}, Lcom/baidu/bdgame/sdk/obf/hs;->a(Lcom/baidu/bdgame/sdk/obf/ka;)V

    .line 740
    invoke-virtual {v0, p2}, Lcom/baidu/bdgame/sdk/obf/hs;->a(Lcom/baidu/bdgame/sdk/obf/jw;)V

    .line 741
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 742
    invoke-static {p6}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 743
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static f(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/hz;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 311
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 312
    if-nez v1, :cond_c

    .line 329
    :cond_b
    :goto_b
    return v0

    .line 315
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v1

    if-nez v1, :cond_b

    .line 318
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->e()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ip;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ip;

    move-result-object v0

    .line 320
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 321
    new-instance v2, Lcom/baidu/bdgame/sdk/obf/cb$3;

    invoke-direct {v2, p1}, Lcom/baidu/bdgame/sdk/obf/cb$3;-><init>(Lcom/baidu/bdgame/sdk/obf/o;)V

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 329
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static g(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jw;Lcom/baidu/bdgame/sdk/obf/ka;Lcom/baidu/bdgame/sdk/obf/jv;Lcom/baidu/bdgame/sdk/obf/jz;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jw;",
            "Lcom/baidu/bdgame/sdk/obf/ka;",
            "Lcom/baidu/bdgame/sdk/obf/jv;",
            "Lcom/baidu/bdgame/sdk/obf/jz;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ix;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 807
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 808
    if-nez v1, :cond_c

    .line 821
    :cond_b
    :goto_b
    return v0

    .line 811
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v1

    if-nez v1, :cond_b

    .line 814
    invoke-static {p0, p1, p5}, Lcom/baidu/bdgame/sdk/obf/iw;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;)Lcom/baidu/bdgame/sdk/obf/iw;

    move-result-object v0

    .line 815
    invoke-virtual {v0, p4}, Lcom/baidu/bdgame/sdk/obf/iw;->a(Lcom/baidu/bdgame/sdk/obf/jv;)V

    .line 816
    invoke-virtual {v0, p3}, Lcom/baidu/bdgame/sdk/obf/iw;->a(Lcom/baidu/bdgame/sdk/obf/ka;)V

    .line 817
    invoke-virtual {v0, p2}, Lcom/baidu/bdgame/sdk/obf/iw;->a(Lcom/baidu/bdgame/sdk/obf/jw;)V

    .line 819
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 820
    invoke-static {p6}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 821
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static h(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jw;Lcom/baidu/bdgame/sdk/obf/ka;Lcom/baidu/bdgame/sdk/obf/jv;Lcom/baidu/bdgame/sdk/obf/jz;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ec",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jw;",
            "Lcom/baidu/bdgame/sdk/obf/ka;",
            "Lcom/baidu/bdgame/sdk/obf/jv;",
            "Lcom/baidu/bdgame/sdk/obf/jz;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ga;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 841
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 842
    if-nez v1, :cond_c

    .line 854
    :cond_b
    :goto_b
    return v0

    .line 845
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v1

    if-nez v1, :cond_b

    .line 848
    invoke-static {p0, p1, p5}, Lcom/baidu/bdgame/sdk/obf/fz;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ec;Lcom/baidu/bdgame/sdk/obf/jz;)Lcom/baidu/bdgame/sdk/obf/fz;

    move-result-object v0

    .line 849
    invoke-virtual {v0, p4}, Lcom/baidu/bdgame/sdk/obf/fz;->a(Lcom/baidu/bdgame/sdk/obf/jv;)V

    .line 850
    invoke-virtual {v0, p3}, Lcom/baidu/bdgame/sdk/obf/fz;->a(Lcom/baidu/bdgame/sdk/obf/ka;)V

    .line 851
    invoke-virtual {v0, p2}, Lcom/baidu/bdgame/sdk/obf/fz;->a(Lcom/baidu/bdgame/sdk/obf/jw;)V

    .line 852
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 853
    invoke-static {p6}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 854
    const/4 v0, 0x1

    goto :goto_b
.end method
