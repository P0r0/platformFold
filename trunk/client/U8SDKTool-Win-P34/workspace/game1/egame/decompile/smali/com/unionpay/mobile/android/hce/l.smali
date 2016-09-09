.class public final Lcom/unionpay/mobile/android/hce/l;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/unionpay/mobile/android/hce/service/a;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unionpay/mobile/android/hce/l;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/unionpay/mobile/android/hce/l;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/unionpay/mobile/android/hce/l;->c:Lcom/unionpay/mobile/android/hce/service/a;

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/hce/l;->d:Z

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/hce/l;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/unionpay/mobile/android/hce/service/a;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/hce/l;->c:Lcom/unionpay/mobile/android/hce/service/a;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/hce/l;->b:Ljava/lang/String;

    return-void
.end method

.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/hce/l;->d:Z

    return v0
.end method

.method public final b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/hce/l;->e:Z

    return v0
.end method

.method public final c()Lcom/unionpay/mobile/android/hce/service/a;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/hce/l;->c:Lcom/unionpay/mobile/android/hce/service/a;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/hce/l;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final e()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/hce/l;->d:Z

    return-void
.end method

.method public final f()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/hce/l;->e:Z

    return-void
.end method
