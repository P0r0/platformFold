.class public final Lcom/alipay/android/phone/mrpc/core/e;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation
.end field

.field c:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/e;->a:Ljava/lang/String;

    return-void
.end method

.method private b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/e;->b:Ljava/util/List;

    return-object v0
.end method

.method private c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/alipay/android/phone/mrpc/core/e;->c:Z

    return v0
.end method
