.class public Lcom/baidu/android/pushservice/i/a;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:J

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/android/pushservice/i/a;->a:I

    return-void
.end method

.method public a(J)V
    .registers 4

    iput-wide p1, p0, Lcom/baidu/android/pushservice/i/a;->c:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/i/a;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/android/pushservice/i/a;->e:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/i/a;->d:Ljava/lang/String;

    return-void
.end method

.method public c()Lcom/baidu/android/pushservice/i/r;
    .registers 8

    new-instance v0, Lcom/baidu/android/pushservice/i/r;

    iget-object v1, p0, Lcom/baidu/android/pushservice/i/a;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/baidu/android/pushservice/i/a;->c:J

    iget-object v4, p0, Lcom/baidu/android/pushservice/i/a;->d:Ljava/lang/String;

    iget v5, p0, Lcom/baidu/android/pushservice/i/a;->i:I

    iget-object v6, p0, Lcom/baidu/android/pushservice/i/a;->j:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/baidu/android/pushservice/i/r;-><init>(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/android/pushservice/i/a;->g:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/i/a;->f:Ljava/lang/String;

    return-void
.end method

.method public d()Lcom/baidu/android/pushservice/i/j;
    .registers 3

    new-instance v0, Lcom/baidu/android/pushservice/i/j;

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/i/a;->c()Lcom/baidu/android/pushservice/i/r;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/android/pushservice/i/j;-><init>(Lcom/baidu/android/pushservice/i/r;)V

    return-object v0
.end method

.method public d(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/android/pushservice/i/a;->i:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/i/a;->h:Ljava/lang/String;

    return-void
.end method

.method public e()Lcom/baidu/android/pushservice/i/b;
    .registers 3

    new-instance v0, Lcom/baidu/android/pushservice/i/b;

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/i/a;->c()Lcom/baidu/android/pushservice/i/r;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/android/pushservice/i/b;-><init>(Lcom/baidu/android/pushservice/i/r;)V

    iget v1, p0, Lcom/baidu/android/pushservice/i/a;->e:I

    iput v1, v0, Lcom/baidu/android/pushservice/i/b;->c:I

    iget-object v1, p0, Lcom/baidu/android/pushservice/i/a;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/b;->a:Ljava/lang/String;

    iget v1, p0, Lcom/baidu/android/pushservice/i/a;->g:I

    iput v1, v0, Lcom/baidu/android/pushservice/i/b;->b:I

    iget-object v1, p0, Lcom/baidu/android/pushservice/i/a;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/baidu/android/pushservice/i/a;->k:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/b;->e:Ljava/lang/String;

    :cond_21
    iget-object v1, p0, Lcom/baidu/android/pushservice/i/a;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    iget-object v1, p0, Lcom/baidu/android/pushservice/i/a;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/b;->d:Ljava/lang/String;

    :cond_2d
    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/i/a;->j:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/i/a;->k:Ljava/lang/String;

    return-void
.end method
