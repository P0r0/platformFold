.class public Lcom/baidu/android/pushservice/g/c;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:[B

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field protected k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/g/c;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/g/c;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/g/c;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/g/c;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/g/c;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/g/c;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/g/c;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/g/c;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/g/c;->j:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/g/c;->k:Z

    iput-object p1, p0, Lcom/baidu/android/pushservice/g/c;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/baidu/android/pushservice/g/c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/android/pushservice/g/c;->d:[B

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/baidu/android/pushservice/g/c;->d:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/baidu/android/pushservice/g/c;->d:[B

    array-length v3, v3

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_f
    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/g/c;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/android/pushservice/g/c;->k:Z

    return-void
.end method

.method public a([B)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/g/c;->d:[B

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/g/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/g/c;->a:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/g/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/g/c;->b:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/g/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/g/c;->e:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/g/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/g/c;->f:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/g/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/g/c;->g:Ljava/lang/String;

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/g/c;->h:Ljava/lang/String;

    return-void
.end method

.method public g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/android/pushservice/g/c;->k:Z

    return v0
.end method

.method public h(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/g/c;->i:Ljava/lang/String;

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/g/c;->j:Ljava/lang/String;

    return-void
.end method
