.class public Lcom/baidu/android/pushservice/i/f;
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

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/android/pushservice/i/f;->a:I

    return-void
.end method

.method public a(J)V
    .registers 4

    iput-wide p1, p0, Lcom/baidu/android/pushservice/i/f;->c:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/i/f;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/f;->l:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/android/pushservice/i/f;->e:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/i/f;->d:Ljava/lang/String;

    return-void
.end method

.method public c()Lcom/baidu/android/pushservice/i/r;
    .registers 8

    new-instance v0, Lcom/baidu/android/pushservice/i/r;

    iget-object v1, p0, Lcom/baidu/android/pushservice/i/f;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/baidu/android/pushservice/i/f;->c:J

    iget-object v4, p0, Lcom/baidu/android/pushservice/i/f;->d:Ljava/lang/String;

    iget v5, p0, Lcom/baidu/android/pushservice/i/f;->k:I

    iget-object v6, p0, Lcom/baidu/android/pushservice/i/f;->l:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/baidu/android/pushservice/i/r;-><init>(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/android/pushservice/i/f;->g:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/i/f;->f:Ljava/lang/String;

    return-void
.end method

.method public d()Lcom/baidu/android/pushservice/i/j;
    .registers 3

    new-instance v0, Lcom/baidu/android/pushservice/i/j;

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/i/f;->c()Lcom/baidu/android/pushservice/i/r;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/android/pushservice/i/j;-><init>(Lcom/baidu/android/pushservice/i/r;)V

    iget v1, p0, Lcom/baidu/android/pushservice/i/f;->j:I

    iput v1, v0, Lcom/baidu/android/pushservice/i/j;->a:I

    iget-object v1, p0, Lcom/baidu/android/pushservice/i/f;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/j;->l:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/android/pushservice/i/f;->j:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/i/f;->h:Ljava/lang/String;

    return-void
.end method

.method public e()Lcom/baidu/android/pushservice/i/n;
    .registers 4

    new-instance v0, Lcom/baidu/android/pushservice/i/n;

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/i/f;->c()Lcom/baidu/android/pushservice/i/r;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/android/pushservice/i/n;-><init>(Lcom/baidu/android/pushservice/i/r;)V

    iget v1, p0, Lcom/baidu/android/pushservice/i/f;->e:I

    iput v1, v0, Lcom/baidu/android/pushservice/i/n;->c:I

    iget-object v1, p0, Lcom/baidu/android/pushservice/i/f;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/n;->a:Ljava/lang/String;

    iget v1, p0, Lcom/baidu/android/pushservice/i/f;->g:I

    iput v1, v0, Lcom/baidu/android/pushservice/i/n;->b:I

    iget-object v1, p0, Lcom/baidu/android/pushservice/i/f;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/n;->d:Ljava/lang/String;

    :cond_1f
    return-object v0
.end method

.method public e(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/android/pushservice/i/f;->k:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/i/f;->i:Ljava/lang/String;

    return-void
.end method

.method public f()Lcom/baidu/android/pushservice/i/c;
    .registers 3

    new-instance v0, Lcom/baidu/android/pushservice/i/c;

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/i/f;->c()Lcom/baidu/android/pushservice/i/r;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/android/pushservice/i/c;-><init>(Lcom/baidu/android/pushservice/i/r;)V

    iget-object v1, p0, Lcom/baidu/android/pushservice/i/f;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/android/pushservice/i/f;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/c;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/android/pushservice/i/f;->m:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/i/f;->l:Ljava/lang/String;

    return-void
.end method

.method public g()Lcom/baidu/android/pushservice/i/g;
    .registers 3

    new-instance v0, Lcom/baidu/android/pushservice/i/g;

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/i/f;->c()Lcom/baidu/android/pushservice/i/r;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/android/pushservice/i/g;-><init>(Lcom/baidu/android/pushservice/i/r;)V

    iget-object v1, p0, Lcom/baidu/android/pushservice/i/f;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/i/f;->m:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/i/f;->n:Ljava/lang/String;

    return-void
.end method
