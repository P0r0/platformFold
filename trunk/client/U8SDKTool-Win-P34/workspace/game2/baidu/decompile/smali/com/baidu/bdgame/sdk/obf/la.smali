.class public final Lcom/baidu/bdgame/sdk/obf/la;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/la$1;,
        Lcom/baidu/bdgame/sdk/obf/la$a;
    }
.end annotation


# static fields
.field static final a:S = 0x3s


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Lcom/baidu/bdgame/sdk/obf/kp;

.field private e:Lcom/baidu/bdgame/sdk/obf/lc;

.field private f:Lcom/baidu/bdgame/sdk/obf/cu;

.field private g:Ljava/lang/String;

.field private h:Lcom/baidu/bdgame/sdk/obf/lb;

.field private i:Lcom/baidu/bdgame/sdk/obf/at;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/la;->g:Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/kp;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/kp;-><init>()V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/la;->d:Lcom/baidu/bdgame/sdk/obf/kp;

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bdgame/sdk/obf/la$1;)V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/la;-><init>()V

    return-void
.end method

.method public static a()Lcom/baidu/bdgame/sdk/obf/la;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/la$a;->a:Lcom/baidu/bdgame/sdk/obf/la;

    return-object v0
.end method

.method private g(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 191
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/kx;->a(Landroid/content/Context;)V

    .line 193
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/la;->a(Lcom/baidu/bdgame/sdk/obf/lc;)V

    .line 194
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/la;->h(Landroid/content/Context;)V

    .line 195
    return-void
.end method

.method private h(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/la;->i:Lcom/baidu/bdgame/sdk/obf/at;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/at;->b(Landroid/content/Context;)V

    .line 237
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;I)Lcom/baidu/bdgame/sdk/obf/ky;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/baidu/bdgame/sdk/obf/ky",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/kq;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/kq;-><init>()V

    .line 111
    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;I)Lcom/baidu/bdgame/sdk/obf/ky;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/la;->d:Lcom/baidu/bdgame/sdk/obf/kp;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/kp;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/at;)V
    .registers 7

    .prologue
    .line 57
    iput p2, p0, Lcom/baidu/bdgame/sdk/obf/la;->b:I

    .line 58
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/la;->c:Ljava/lang/String;

    .line 60
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BaiduPlatformSDK: invalid AppKey"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_12
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/lb;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/lb;-><init>()V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/la;->h:Lcom/baidu/bdgame/sdk/obf/lb;

    .line 66
    iput-object p4, p0, Lcom/baidu/bdgame/sdk/obf/la;->i:Lcom/baidu/bdgame/sdk/obf/at;

    .line 67
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/la;->i:Lcom/baidu/bdgame/sdk/obf/at;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/at;->a(Landroid/content/Context;)V

    .line 69
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/la;->d:Lcom/baidu/bdgame/sdk/obf/kp;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/kp;->a(Landroid/content/Context;)V

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/la;->a(Lcom/baidu/bdgame/sdk/obf/lc;)V

    .line 72
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ag;)V
    .registers 7

    .prologue
    .line 162
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/la;->i:Lcom/baidu/bdgame/sdk/obf/at;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/le;->a()J

    move-result-wide v2

    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/baidu/bdgame/sdk/obf/at;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ag;J)V

    .line 163
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ax;)V
    .registers 7

    .prologue
    .line 240
    if-eqz p2, :cond_25

    .line 241
    const-class v0, Lcom/baidu/bdgame/sdk/obf/la;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start keep alive:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/kx;->b(Landroid/content/Context;)V

    .line 244
    :cond_25
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/la;->i:Lcom/baidu/bdgame/sdk/obf/at;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/at;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ax;)V

    .line 245
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/lc;)V
    .registers 7

    .prologue
    .line 199
    const-class v0, Lcom/baidu/bdgame/sdk/obf/la;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start keep alive:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/kx;->b(Landroid/content/Context;)V

    .line 203
    invoke-virtual {p0, p2}, Lcom/baidu/bdgame/sdk/obf/la;->a(Lcom/baidu/bdgame/sdk/obf/lc;)V

    .line 204
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 115
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/kq;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/kq;-><init>()V

    .line 116
    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public declared-synchronized a(Lcom/baidu/bdgame/sdk/obf/cu;)V
    .registers 3

    .prologue
    .line 90
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/la;->f:Lcom/baidu/bdgame/sdk/obf/cu;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 91
    monitor-exit p0

    return-void

    .line 90
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/baidu/bdgame/sdk/obf/lc;)V
    .registers 3

    .prologue
    .line 154
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/la;->e:Lcom/baidu/bdgame/sdk/obf/lc;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 155
    monitor-exit p0

    return-void

    .line 154
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Lcom/baidu/bdgame/sdk/obf/cu;
    .registers 2

    .prologue
    .line 94
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/la;->f:Lcom/baidu/bdgame/sdk/obf/cu;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 125
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/km;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/km;-><init>()V

    .line 126
    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/km;->a(Landroid/content/Context;)V

    .line 127
    return-void
.end method

.method b(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 207
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/la;->i:Lcom/baidu/bdgame/sdk/obf/at;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 212
    :cond_8
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/la;->g(Landroid/content/Context;)V

    .line 213
    return-void
.end method

.method public b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ag;)V
    .registers 7

    .prologue
    .line 166
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/la;->i:Lcom/baidu/bdgame/sdk/obf/at;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/le;->a()J

    move-result-wide v2

    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/baidu/bdgame/sdk/obf/at;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ag;J)V

    .line 167
    return-void
.end method

.method public b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ax;)V
    .registers 4

    .prologue
    .line 248
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/la;->i:Lcom/baidu/bdgame/sdk/obf/at;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/at;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ax;)V

    .line 249
    return-void
.end method

.method b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 120
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ed;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/ed;-><init>()V

    .line 121
    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/ed;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public c(Landroid/content/Context;)I
    .registers 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/la;->i:Lcom/baidu/bdgame/sdk/obf/at;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->b()I

    move-result v0

    return v0
.end method

.method public c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ag;)Lcom/baidu/bdgame/sdk/obf/s;
    .registers 4

    .prologue
    .line 170
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/la;->i:Lcom/baidu/bdgame/sdk/obf/at;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/at;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ag;)Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 133
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/la;->g:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method c(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 227
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/la;->i:Lcom/baidu/bdgame/sdk/obf/at;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 232
    :cond_8
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/la;->h(Landroid/content/Context;)V

    .line 233
    return-void
.end method

.method declared-synchronized c(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 130
    monitor-enter p0

    :try_start_1
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/la;->g:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 131
    monitor-exit p0

    return-void

    .line 130
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/la;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/la;->i:Lcom/baidu/bdgame/sdk/obf/at;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->d()Lcom/baidu/bdgame/sdk/obf/ax;

    move-result-object v0

    .line 179
    if-nez v0, :cond_8

    .line 184
    :cond_8
    return-void
.end method

.method public d(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ag;)V
    .registers 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/la;->i:Lcom/baidu/bdgame/sdk/obf/at;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/at;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ag;)V

    .line 175
    return-void
.end method

.method d(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 256
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/la;->h:Lcom/baidu/bdgame/sdk/obf/lb;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/lb;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method e()I
    .registers 2

    .prologue
    .line 146
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/la;->b:I

    return v0
.end method

.method e(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/la;->g(Landroid/content/Context;)V

    .line 188
    return-void
.end method

.method e(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 260
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/la;->i:Lcom/baidu/bdgame/sdk/obf/at;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/at;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public declared-synchronized f()Lcom/baidu/bdgame/sdk/obf/lc;
    .registers 2

    .prologue
    .line 150
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/la;->e:Lcom/baidu/bdgame/sdk/obf/lc;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f(Landroid/content/Context;)Ljava/security/interfaces/RSAPublicKey;
    .registers 3

    .prologue
    .line 252
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/la;->h:Lcom/baidu/bdgame/sdk/obf/lb;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/lb;->a(Landroid/content/Context;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized g()Z
    .registers 2

    .prologue
    .line 158
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/la;->e:Lcom/baidu/bdgame/sdk/obf/lc;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
