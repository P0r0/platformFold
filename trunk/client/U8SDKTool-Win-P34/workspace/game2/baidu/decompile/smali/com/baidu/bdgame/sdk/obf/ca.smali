.class public Lcom/baidu/bdgame/sdk/obf/ca;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final A:Ljava/lang/String; = "BDPlatformType"

.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static d:I = 0x0

.field public static e:I = 0x0

.field public static final f:I = 0x7d64

.field public static final g:I = 0x7d65

.field public static final h:I = 0xa474

.field public static final i:I = 0xa475

.field public static final j:I = 0x814c

.field public static final k:I = 0x8534

.field public static final l:I = 0x8535

.field public static final m:I = 0xa08c

.field public static final n:I = 0xa08d

.field public static final o:I = 0x891c

.field public static final p:I = 0x8ca5

.field public static final q:I = 0x8d04

.field public static final r:Ljava/lang/String; = "1"

.field public static final s:Ljava/lang/String; = "3"

.field public static final t:Ljava/lang/String; = "4"

.field public static final u:Ljava/lang/String; = "5"

.field public static final v:I = 0x90ef

.field public static final w:I = 0x90ec

.field public static final x:I = 0x90ed

.field public static final y:I = 0x1

.field public static final z:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput v0, Lcom/baidu/bdgame/sdk/obf/ca;->d:I

    .line 64
    const/4 v0, 0x2

    sput v0, Lcom/baidu/bdgame/sdk/obf/ca;->e:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 85
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/mf;->a(Landroid/content/Context;)I

    move-result v0

    .line 86
    packed-switch v0, :pswitch_data_c

    .line 92
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/ca;->b(Landroid/content/Context;)I

    move-result v0

    .line 95
    :pswitch_b
    return v0

    .line 86
    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/av;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/bz;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/av;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/baidu/bdgame/sdk/obf/bz;"
        }
    .end annotation

    .prologue
    .line 267
    invoke-static {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/aj;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/av;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/aj;

    move-result-object v0

    .line 268
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-direct {v1, p0, v0, p3}, Lcom/baidu/bdgame/sdk/obf/cd;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 269
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/by;

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/by;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/cc;)V

    .line 270
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/by;->b()V

    .line 271
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bx;)Lcom/baidu/bdgame/sdk/obf/bz;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/bx;",
            ")",
            "Lcom/baidu/bdgame/sdk/obf/bz;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/by;

    invoke-direct {v0, p0, p1}, Lcom/baidu/bdgame/sdk/obf/by;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/cc;)V

    .line 75
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/by;->b()V

    .line 76
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/ag;Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/bz;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/ag;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/baidu/bdgame/sdk/obf/bz;"
        }
    .end annotation

    .prologue
    .line 388
    invoke-static {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/ah;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/ag;)Lcom/baidu/bdgame/sdk/obf/ah;

    move-result-object v0

    .line 389
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-direct {v1, p0, v0, p3}, Lcom/baidu/bdgame/sdk/obf/cd;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 390
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/by;

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/by;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/cc;)V

    .line 391
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/by;->b()V

    .line 392
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/bz;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/bh;",
            ">;)",
            "Lcom/baidu/bdgame/sdk/obf/bz;"
        }
    .end annotation

    .prologue
    .line 409
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/baidu/bdgame/sdk/obf/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    .line 410
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-direct {v1, p0, v0, p2}, Lcom/baidu/bdgame/sdk/obf/cd;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 411
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/by;

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/by;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/cc;)V

    .line 412
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/by;->b()V

    .line 413
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/bz;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/baidu/bdgame/sdk/obf/bz;"
        }
    .end annotation

    .prologue
    .line 164
    invoke-static {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/al;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/al;

    move-result-object v0

    .line 165
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-direct {v1, p0, v0, p3}, Lcom/baidu/bdgame/sdk/obf/cd;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 166
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/by;

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/by;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/cc;)V

    .line 167
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/by;->b()V

    .line 168
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/bz;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/baidu/bdgame/sdk/obf/bz;"
        }
    .end annotation

    .prologue
    .line 179
    invoke-static {p0, p1}, Lcom/baidu/bdgame/sdk/obf/bc;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/bc;

    move-result-object v0

    .line 180
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-direct {v1, p0, v0, p2}, Lcom/baidu/bdgame/sdk/obf/cd;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 181
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/by;

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/by;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/cc;)V

    .line 182
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/by;->b()V

    .line 183
    return-object v0
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
    .line 141
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/cv;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/cv;-><init>()V

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p2}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/baidu/bdgame/sdk/obf/cv;->b(Landroid/content/Context;ILcom/baidu/bdgame/sdk/obf/o;)V

    .line 143
    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 505
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 509
    :goto_6
    return-void

    .line 508
    :cond_7
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/at;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_6
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ag;)V
    .registers 5

    .prologue
    .line 472
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bw;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ca$1;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bdgame/sdk/obf/ca$1;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ag;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bw;-><init>(Ljava/util/concurrent/Callable;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 480
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bw;->a()V

    .line 481
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ax;)V
    .registers 5

    .prologue
    .line 1030
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bw;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ca$7;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bdgame/sdk/obf/ca$7;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ax;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bw;-><init>(Ljava/util/concurrent/Callable;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 1038
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bw;->a()V

    .line 1039
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
            "Lcom/baidu/bdgame/sdk/obf/s;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 517
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bw;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ca$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ca$2;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bw;-><init>(Ljava/util/concurrent/Callable;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 524
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bw;->a()V

    .line 525
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 681
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->e()Ljava/lang/String;

    move-result-object v0

    .line 682
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 683
    const/4 v0, 0x0

    .line 688
    :goto_f
    return v0

    .line 685
    :cond_10
    invoke-static {p0, v0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/an;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/an;

    move-result-object v0

    .line 686
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 687
    invoke-static {p4}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 688
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 756
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->e()Ljava/lang/String;

    move-result-object v1

    .line 757
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 758
    const/4 v0, 0x0

    .line 763
    :goto_f
    return v0

    :cond_10
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 760
    invoke-static/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/an;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/an;

    move-result-object v0

    .line 761
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 762
    invoke-static {p5}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 763
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public static b(Landroid/content/Context;)I
    .registers 3

    .prologue
    .line 100
    const-string v0, "BDPlatformType"

    sget v1, Lcom/baidu/bdgame/sdk/obf/ca;->d:I

    invoke-static {p0, v0, v1}, Lcom/baidu/bdgame/sdk/obf/ma;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 101
    packed-switch v0, :pswitch_data_16

    .line 107
    const-string v0, "BaiduPlatformSDK"

    const-string v1, "Manifest: invalid BDPlatformType value, use default"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget v0, Lcom/baidu/bdgame/sdk/obf/ca;->d:I

    .line 111
    :pswitch_14
    return v0

    .line 101
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/av;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/bz;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/av;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/baidu/bdgame/sdk/obf/bz;"
        }
    .end annotation

    .prologue
    .line 356
    invoke-static {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/aq;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/av;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/aq;

    move-result-object v0

    .line 357
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-direct {v1, p0, v0, p3}, Lcom/baidu/bdgame/sdk/obf/cd;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 358
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/by;

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/by;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/cc;)V

    .line 359
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/by;->b()V

    .line 360
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/bz;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/baidu/bdgame/sdk/obf/bz;"
        }
    .end annotation

    .prologue
    .line 210
    invoke-static {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v0

    .line 211
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-direct {v1, p0, v0, p3}, Lcom/baidu/bdgame/sdk/obf/cd;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 212
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/by;

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/by;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/cc;)V

    .line 213
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/by;->b()V

    .line 214
    return-object v0
.end method

.method public static b(Landroid/content/Context;ILcom/baidu/bdgame/sdk/obf/o;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/s;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 550
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bw;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ca$4;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bdgame/sdk/obf/ca$4;-><init>(Landroid/content/Context;I)V

    invoke-static {p2}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bw;-><init>(Ljava/util/concurrent/Callable;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 557
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bw;->a()V

    .line 558
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ag;)V
    .registers 3

    .prologue
    .line 484
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/bdgame/sdk/obf/at;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ag;)V

    .line 485
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/s;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 533
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bw;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ca$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ca$3;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bw;-><init>(Ljava/util/concurrent/Callable;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 540
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bw;->a()V

    .line 541
    return-void
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
    .line 588
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->e()Ljava/lang/String;

    move-result-object v0

    .line 589
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 590
    const/4 v0, 0x0

    .line 595
    :goto_f
    return v0

    .line 592
    :cond_10
    invoke-static {p0, v0, p1}, Lcom/baidu/bdgame/sdk/obf/bb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/bb;

    move-result-object v0

    .line 593
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 594
    invoke-static {p2}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 595
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 909
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 910
    if-nez v1, :cond_c

    .line 923
    :cond_b
    :goto_b
    return v0

    .line 913
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 916
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->e()Ljava/lang/String;

    move-result-object v1

    .line 917
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 920
    invoke-static {p0, v1, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ao;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ao;

    move-result-object v0

    .line 921
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 922
    invoke-static {p4}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 923
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 936
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 937
    const/4 v0, 0x0

    .line 942
    :goto_7
    return v0

    .line 939
    :cond_8
    invoke-static {p0, p4, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ao;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ao;

    move-result-object v0

    .line 940
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 941
    invoke-static {p5}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 942
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static c(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 152
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/ca;->b(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/bz;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/baidu/bdgame/sdk/obf/bz;"
        }
    .end annotation

    .prologue
    .line 242
    invoke-static {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/ai;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v0

    .line 243
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-direct {v1, p0, v0, p3}, Lcom/baidu/bdgame/sdk/obf/cd;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 244
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/by;

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/by;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/cc;)V

    .line 245
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/by;->b()V

    .line 246
    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/bz;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ae;",
            ">;)",
            "Lcom/baidu/bdgame/sdk/obf/bz;"
        }
    .end annotation

    .prologue
    .line 970
    invoke-static {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ad;

    move-result-object v0

    .line 971
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-direct {v1, p0, v0, p4}, Lcom/baidu/bdgame/sdk/obf/cd;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 972
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/by;

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/by;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/cc;)V

    .line 973
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/by;->b()V

    .line 974
    return-object v0
.end method

.method public static c(Landroid/content/Context;ILcom/baidu/bdgame/sdk/obf/o;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 987
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bw;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ca$5;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bdgame/sdk/obf/ca$5;-><init>(Landroid/content/Context;I)V

    invoke-static {p2}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bw;-><init>(Ljava/util/concurrent/Callable;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 994
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bw;->a()V

    .line 995
    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/bd;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 626
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->e()Ljava/lang/String;

    move-result-object v0

    .line 627
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 628
    const/4 v0, 0x0

    .line 633
    :goto_f
    return v0

    .line 630
    :cond_10
    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/be;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/be;

    move-result-object v0

    .line 631
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 632
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 633
    const/4 v0, 0x1

    goto :goto_f
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
    .line 643
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->e()Ljava/lang/String;

    move-result-object v0

    .line 644
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 645
    const/4 v0, 0x0

    .line 650
    :goto_f
    return v0

    .line 647
    :cond_10
    invoke-static {p0, v0, p1}, Lcom/baidu/bdgame/sdk/obf/bj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/bj;

    move-result-object v0

    .line 648
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 649
    invoke-static {p2}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 650
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/bz;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/baidu/bdgame/sdk/obf/bz;"
        }
    .end annotation

    .prologue
    .line 298
    invoke-static {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/ap;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ap;

    move-result-object v0

    .line 299
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-direct {v1, p0, v0, p3}, Lcom/baidu/bdgame/sdk/obf/cd;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 300
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/by;

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/by;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/cc;)V

    .line 301
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/by;->b()V

    .line 302
    return-object v0
.end method

.method public static d(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 453
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->c()Z

    move-result v0

    return v0
.end method

.method public static d(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/bd;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 700
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->e()Ljava/lang/String;

    move-result-object v0

    .line 701
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 702
    const/4 v0, 0x0

    .line 707
    :goto_f
    return v0

    .line 704
    :cond_10
    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/bg;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/bg;

    move-result-object v0

    .line 705
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 706
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 707
    const/4 v0, 0x1

    goto :goto_f
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
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 718
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->e()Ljava/lang/String;

    move-result-object v0

    .line 719
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 720
    const/4 v0, 0x0

    .line 725
    :goto_f
    return v0

    .line 722
    :cond_10
    invoke-static {p0, v0, p1}, Lcom/baidu/bdgame/sdk/obf/bk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/bk;

    move-result-object v0

    .line 723
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 724
    invoke-static {p2}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 725
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/bz;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/baidu/bdgame/sdk/obf/bz;"
        }
    .end annotation

    .prologue
    .line 330
    invoke-static {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/ap;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ap;

    move-result-object v0

    .line 331
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-direct {v1, p0, v0, p3}, Lcom/baidu/bdgame/sdk/obf/cd;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 332
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/by;

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/by;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/cc;)V

    .line 333
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/by;->b()V

    .line 334
    return-object v0
.end method

.method public static e(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1003
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/cv;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/cv;-><init>()V

    .line 1004
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/cv;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 1005
    return-void
.end method

.method public static e(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 463
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/bdgame/sdk/obf/at;->d(Landroid/content/Context;)Z

    move-result v0

    return v0
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
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 865
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 866
    if-nez v1, :cond_c

    .line 879
    :cond_b
    :goto_b
    return v0

    .line 869
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 872
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->e()Ljava/lang/String;

    move-result-object v1

    .line 873
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 876
    invoke-static {p0, v1, p1}, Lcom/baidu/bdgame/sdk/obf/bf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/bf;

    move-result-object v0

    .line 877
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 878
    invoke-static {p2}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 879
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/bz;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ae;",
            ">;)",
            "Lcom/baidu/bdgame/sdk/obf/bz;"
        }
    .end annotation

    .prologue
    .line 953
    invoke-static {p0, p1}, Lcom/baidu/bdgame/sdk/obf/af;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/af;

    move-result-object v0

    .line 954
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-direct {v1, p0, v0, p2}, Lcom/baidu/bdgame/sdk/obf/cd;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 955
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/by;

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/by;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/cc;)V

    .line 956
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/by;->b()V

    .line 957
    return-object v0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/bz;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/baidu/bdgame/sdk/obf/bz;"
        }
    .end annotation

    .prologue
    .line 440
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/baidu/bdgame/sdk/obf/bi;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/bi;

    move-result-object v0

    .line 441
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-direct {v1, p0, v0, p3}, Lcom/baidu/bdgame/sdk/obf/cd;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 442
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/by;

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/by;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/cc;)V

    .line 443
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/by;->b()V

    .line 444
    return-object v0
.end method

.method public static f(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/fy;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 568
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 569
    if-nez v1, :cond_c

    .line 576
    :cond_b
    :goto_b
    return-object v0

    .line 573
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v2

    if-nez v2, :cond_b

    .line 576
    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/fy;->a(Lcom/baidu/bdgame/sdk/obf/ax;)Lcom/baidu/bdgame/sdk/obf/fy;

    move-result-object v0

    goto :goto_b
.end method

.method public static f(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1018
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bw;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ca$6;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ca$6;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bw;-><init>(Ljava/util/concurrent/Callable;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 1026
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bw;->a()V

    .line 1027
    return-void
.end method

.method public static g(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/nj;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 837
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v1

    .line 838
    if-nez v1, :cond_c

    .line 845
    :cond_b
    :goto_b
    return-object v0

    .line 841
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ax;->k()Z

    move-result v2

    if-nez v2, :cond_b

    .line 845
    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/nj;->a(Lcom/baidu/bdgame/sdk/obf/ax;)Lcom/baidu/bdgame/sdk/obf/nj;

    move-result-object v0

    goto :goto_b
.end method

.method public static g(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1055
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/cv;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/cv;-><init>()V

    .line 1056
    invoke-virtual {v0, p0, p1}, Lcom/baidu/bdgame/sdk/obf/cv;->e(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 1057
    return-void
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 608
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->e()Ljava/lang/String;

    move-result-object v0

    .line 609
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 610
    const/4 v0, 0x0

    .line 615
    :goto_f
    return v0

    .line 612
    :cond_10
    invoke-static {p0, v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/an;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/an;

    move-result-object v0

    .line 613
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 614
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 615
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public static h(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 849
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v0

    .line 850
    if-nez v0, :cond_c

    .line 851
    const/4 v0, 0x0

    .line 854
    :goto_b
    return v0

    :cond_c
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ax;->f()Z

    move-result v0

    goto :goto_b
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 662
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->e()Ljava/lang/String;

    move-result-object v0

    .line 663
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 664
    const/4 v0, 0x0

    .line 669
    :goto_f
    return v0

    .line 666
    :cond_10
    invoke-static {p0, v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/bb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/bb;

    move-result-object v0

    .line 667
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 668
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 669
    const/4 v0, 0x1

    goto :goto_f
.end method

.method static synthetic i(Landroid/content/Context;)V
    .registers 1

    .prologue
    .line 53
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/ca;->j(Landroid/content/Context;)V

    return-void
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 737
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->e()Ljava/lang/String;

    move-result-object v0

    .line 738
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 739
    const/4 v0, 0x0

    .line 744
    :goto_f
    return v0

    .line 741
    :cond_10
    invoke-static {p0, v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/bb;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/bb;

    move-result-object v0

    .line 742
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 743
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 744
    const/4 v0, 0x1

    goto :goto_f
.end method

.method private static j(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 1008
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v0

    .line 1009
    if-nez v0, :cond_b

    .line 1015
    :goto_a
    return-void

    .line 1013
    :cond_b
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ax;->h()Lcom/baidu/bdgame/sdk/obf/ag;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ag;->b(Ljava/lang/String;)V

    .line 1014
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/baidu/bdgame/sdk/obf/at;->c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ax;)Z

    goto :goto_a
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 820
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->e()Ljava/lang/String;

    move-result-object v0

    .line 821
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 822
    const/4 v0, 0x0

    .line 827
    :goto_f
    return v0

    .line 824
    :cond_10
    invoke-static {p0, v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/az;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/az;

    move-result-object v0

    .line 825
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 826
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 827
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 890
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 891
    const/4 v0, 0x0

    .line 896
    :goto_7
    return v0

    .line 893
    :cond_8
    invoke-static {p0, p2, p1}, Lcom/baidu/bdgame/sdk/obf/bf;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/bf;

    move-result-object v0

    .line 894
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 895
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 896
    const/4 v0, 0x1

    goto :goto_7
.end method
