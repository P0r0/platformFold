.class Lcom/baidu/bdgame/sdk/obf/kg$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/kg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final a:J = 0x7d0L

.field private static final b:I = 0x2


# instance fields
.field private c:Lcom/baidu/bdgame/sdk/obf/kg;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/kg;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 252
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 249
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/kg$a;->e:J

    .line 253
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/kg$a;->c:Lcom/baidu/bdgame/sdk/obf/kg;

    .line 254
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/kg$a;->d:Ljava/lang/String;

    .line 255
    return-void
.end method

.method private a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/il;)V
    .registers 11

    .prologue
    const/4 v6, 0x0

    .line 287
    if-nez p1, :cond_5

    if-nez p3, :cond_b

    .line 288
    :cond_5
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kk;->c:Lcom/baidu/bdgame/sdk/obf/kk;

    invoke-direct {p0, v0, v6, v6}, Lcom/baidu/bdgame/sdk/obf/kg$a;->a(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :goto_a
    return-void

    .line 290
    :cond_b
    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/il;->d()I

    move-result v0

    .line 291
    if-nez v0, :cond_61

    .line 292
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kg$a;->c:Lcom/baidu/bdgame/sdk/obf/kg;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kg;->c(Lcom/baidu/bdgame/sdk/obf/kg;)J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/bdgame/sdk/obf/kg$a;->f:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 293
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remainingTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4d

    .line 295
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kk;->c:Lcom/baidu/bdgame/sdk/obf/kk;

    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/il;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v6, v1}, Lcom/baidu/bdgame/sdk/obf/kg$a;->a(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 297
    :cond_4d
    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/kg$a;->e:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_55

    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/kg$a;->e:J

    .line 298
    :cond_55
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/baidu/bdgame/sdk/obf/kg$a;->sendEmptyMessageDelayed(IJ)Z

    .line 299
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/kg$a;->e:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/kg$a;->e:J

    goto :goto_a

    .line 301
    :cond_61
    const/4 v1, 0x1

    if-ne v0, v1, :cond_72

    .line 302
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kk;->a:Lcom/baidu/bdgame/sdk/obf/kk;

    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/il;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/il;->g()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/kg$a;->a(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 304
    :cond_72
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kk;->b:Lcom/baidu/bdgame/sdk/obf/kk;

    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/il;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v6}, Lcom/baidu/bdgame/sdk/obf/kg$a;->a(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/kg$a;ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/il;)V
    .registers 4

    .prologue
    .line 240
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/kg$a;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/il;)V

    return-void
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 310
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kg$a;->c:Lcom/baidu/bdgame/sdk/obf/kg;

    invoke-static {v0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/kg;->a(Lcom/baidu/bdgame/sdk/obf/kg;Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kg$a;->c:Lcom/baidu/bdgame/sdk/obf/kg;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kg;->b(Lcom/baidu/bdgame/sdk/obf/kg;)Lcom/baidu/bdgame/sdk/obf/mt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/mt;->b()V

    .line 312
    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 279
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kg$a;->c:Lcom/baidu/bdgame/sdk/obf/kg;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kg;->b(Lcom/baidu/bdgame/sdk/obf/kg;)Lcom/baidu/bdgame/sdk/obf/mt;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kg$a;->c:Lcom/baidu/bdgame/sdk/obf/kg;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/kg;->a(Lcom/baidu/bdgame/sdk/obf/kg;)Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "bdp_dialog_loading_pay_result"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mt;->a(I)V

    .line 280
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/kg$a;->e:J

    .line 281
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/kg$a;->f:J

    .line 282
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kg$a;->sendEmptyMessage(I)Z

    .line 283
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 316
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kg$a;->removeMessages(I)V

    .line 317
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 259
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/kg$a$1;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/kg$a$1;-><init>(Lcom/baidu/bdgame/sdk/obf/kg$a;)V

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/n;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/n;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kg$a;->c:Lcom/baidu/bdgame/sdk/obf/kg;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/kg;->a(Lcom/baidu/bdgame/sdk/obf/kg;)Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/kg$a;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/cb;->d(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z

    move-result v1

    .line 268
    if-nez v1, :cond_22

    .line 269
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kk;->c:Lcom/baidu/bdgame/sdk/obf/kk;

    invoke-direct {p0, v0, v3, v3}, Lcom/baidu/bdgame/sdk/obf/kg$a;->a(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :goto_21
    return-void

    .line 271
    :cond_22
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kg$a;->c:Lcom/baidu/bdgame/sdk/obf/kg;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/kg;->a(Lcom/baidu/bdgame/sdk/obf/kg;)Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/ct;->a(Lcom/baidu/bdgame/sdk/obf/n;)V

    goto :goto_21
.end method
