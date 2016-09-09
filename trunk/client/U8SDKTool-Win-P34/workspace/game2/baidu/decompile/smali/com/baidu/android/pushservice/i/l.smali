.class public Lcom/baidu/android/pushservice/i/l;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/baidu/android/pushservice/i/l;->a:I

    return v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/android/pushservice/i/l;->a:I

    return-void
.end method

.method public a(J)V
    .registers 4

    iput-wide p1, p0, Lcom/baidu/android/pushservice/i/l;->e:J

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/baidu/android/pushservice/i/l;->b:I

    return v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/android/pushservice/i/l;->b:I

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/baidu/android/pushservice/i/l;->c:I

    return v0
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/android/pushservice/i/l;->c:I

    return-void
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/baidu/android/pushservice/i/l;->d:I

    return v0
.end method

.method public d(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/android/pushservice/i/l;->d:I

    return-void
.end method

.method public e()J
    .registers 3

    iget-wide v0, p0, Lcom/baidu/android/pushservice/i/l;->e:J

    return-wide v0
.end method

.method public f()Lcom/baidu/android/pushservice/i/k;
    .registers 7

    const/4 v2, -0x1

    new-instance v0, Lcom/baidu/android/pushservice/i/k;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/i/k;-><init>()V

    iget v1, p0, Lcom/baidu/android/pushservice/i/l;->a:I

    if-le v1, v2, :cond_e

    iget v1, p0, Lcom/baidu/android/pushservice/i/l;->a:I

    iput v1, v0, Lcom/baidu/android/pushservice/i/k;->a:I

    :cond_e
    iget v1, p0, Lcom/baidu/android/pushservice/i/l;->b:I

    if-lez v1, :cond_16

    iget v1, p0, Lcom/baidu/android/pushservice/i/l;->b:I

    iput v1, v0, Lcom/baidu/android/pushservice/i/k;->b:I

    :cond_16
    iget v1, p0, Lcom/baidu/android/pushservice/i/l;->d:I

    if-le v1, v2, :cond_1e

    iget v1, p0, Lcom/baidu/android/pushservice/i/l;->d:I

    iput v1, v0, Lcom/baidu/android/pushservice/i/k;->d:I

    :cond_1e
    iget-wide v2, p0, Lcom/baidu/android/pushservice/i/l;->e:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2a

    iget-wide v2, p0, Lcom/baidu/android/pushservice/i/l;->e:J

    iput-wide v2, v0, Lcom/baidu/android/pushservice/i/k;->e:J

    :cond_2a
    return-object v0
.end method
