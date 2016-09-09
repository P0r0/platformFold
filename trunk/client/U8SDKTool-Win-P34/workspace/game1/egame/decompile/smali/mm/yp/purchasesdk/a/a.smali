.class public Lmm/yp/purchasesdk/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/Boolean;

.field private a:Lmm/yp/purchasesdk/PayInfo;

.field private a:Lmm/yp/purchasesdk/a/c;

.field private final b:I

.field private b:Ljava/lang/Boolean;

.field private c:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lmm/yp/purchasesdk/a/a;->c:Z

    iput v0, p0, Lmm/yp/purchasesdk/a/a;->b:I

    iput-boolean v0, p0, Lmm/yp/purchasesdk/a/a;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/yp/purchasesdk/a/a;->a:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/yp/purchasesdk/a/a;->b:Ljava/lang/Boolean;

    const-string v0, ""

    iput-object v0, p0, Lmm/yp/purchasesdk/a/a;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmm/yp/purchasesdk/a/a;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmm/yp/purchasesdk/a/a;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmm/yp/purchasesdk/a/a;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lmm/yp/purchasesdk/PayInfo;
    .registers 2

    iget-object v0, p0, Lmm/yp/purchasesdk/a/a;->a:Lmm/yp/purchasesdk/PayInfo;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmm/yp/purchasesdk/a/a;->f:Ljava/lang/String;

    return-void
.end method

.method public a(Lmm/yp/purchasesdk/PayInfo;)V
    .registers 2

    iput-object p1, p0, Lmm/yp/purchasesdk/a/a;->a:Lmm/yp/purchasesdk/PayInfo;

    return-void
.end method

.method public a(Lmm/yp/purchasesdk/a/c;)V
    .registers 2

    iput-object p1, p0, Lmm/yp/purchasesdk/a/a;->a:Lmm/yp/purchasesdk/a/c;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lmm/yp/purchasesdk/a/a;->d:Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmm/yp/purchasesdk/a/a;->c:Ljava/lang/String;

    return-void
.end method
